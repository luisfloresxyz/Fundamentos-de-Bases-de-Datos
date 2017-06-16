/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.IllegalOrphanException;
import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Medicos;
import Entidades.Clientes;
import Entidades.Consultas;
import java.util.ArrayList;
import java.util.List;
import Entidades.Recetas;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class ConsultasJpaController implements Serializable {

    public ConsultasJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Consultas consultas) throws PreexistingEntityException, Exception {
        if (consultas.getClientesList() == null) {
            consultas.setClientesList(new ArrayList<Clientes>());
        }
        if (consultas.getRecetasList() == null) {
            consultas.setRecetasList(new ArrayList<Recetas>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Medicos curp = consultas.getCurp();
            if (curp != null) {
                curp = em.getReference(curp.getClass(), curp.getCurp());
                consultas.setCurp(curp);
            }
            List<Clientes> attachedClientesList = new ArrayList<Clientes>();
            for (Clientes clientesListClientesToAttach : consultas.getClientesList()) {
                clientesListClientesToAttach = em.getReference(clientesListClientesToAttach.getClass(), clientesListClientesToAttach.getCurp());
                attachedClientesList.add(clientesListClientesToAttach);
            }
            consultas.setClientesList(attachedClientesList);
            List<Recetas> attachedRecetasList = new ArrayList<Recetas>();
            for (Recetas recetasListRecetasToAttach : consultas.getRecetasList()) {
                recetasListRecetasToAttach = em.getReference(recetasListRecetasToAttach.getClass(), recetasListRecetasToAttach.getNumReceta());
                attachedRecetasList.add(recetasListRecetasToAttach);
            }
            consultas.setRecetasList(attachedRecetasList);
            em.persist(consultas);
            if (curp != null) {
                curp.getConsultasList().add(consultas);
                curp = em.merge(curp);
            }
            for (Clientes clientesListClientes : consultas.getClientesList()) {
                clientesListClientes.getConsultasList().add(consultas);
                clientesListClientes = em.merge(clientesListClientes);
            }
            for (Recetas recetasListRecetas : consultas.getRecetasList()) {
                Consultas oldIdentificadorOfRecetasListRecetas = recetasListRecetas.getIdentificador();
                recetasListRecetas.setIdentificador(consultas);
                recetasListRecetas = em.merge(recetasListRecetas);
                if (oldIdentificadorOfRecetasListRecetas != null) {
                    oldIdentificadorOfRecetasListRecetas.getRecetasList().remove(recetasListRecetas);
                    oldIdentificadorOfRecetasListRecetas = em.merge(oldIdentificadorOfRecetasListRecetas);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findConsultas(consultas.getIdentificador()) != null) {
                throw new PreexistingEntityException("Consultas " + consultas + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Consultas consultas) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Consultas persistentConsultas = em.find(Consultas.class, consultas.getIdentificador());
            Medicos curpOld = persistentConsultas.getCurp();
            Medicos curpNew = consultas.getCurp();
            List<Clientes> clientesListOld = persistentConsultas.getClientesList();
            List<Clientes> clientesListNew = consultas.getClientesList();
            List<Recetas> recetasListOld = persistentConsultas.getRecetasList();
            List<Recetas> recetasListNew = consultas.getRecetasList();
            List<String> illegalOrphanMessages = null;
            for (Recetas recetasListOldRecetas : recetasListOld) {
                if (!recetasListNew.contains(recetasListOldRecetas)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Recetas " + recetasListOldRecetas + " since its identificador field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (curpNew != null) {
                curpNew = em.getReference(curpNew.getClass(), curpNew.getCurp());
                consultas.setCurp(curpNew);
            }
            List<Clientes> attachedClientesListNew = new ArrayList<Clientes>();
            for (Clientes clientesListNewClientesToAttach : clientesListNew) {
                clientesListNewClientesToAttach = em.getReference(clientesListNewClientesToAttach.getClass(), clientesListNewClientesToAttach.getCurp());
                attachedClientesListNew.add(clientesListNewClientesToAttach);
            }
            clientesListNew = attachedClientesListNew;
            consultas.setClientesList(clientesListNew);
            List<Recetas> attachedRecetasListNew = new ArrayList<Recetas>();
            for (Recetas recetasListNewRecetasToAttach : recetasListNew) {
                recetasListNewRecetasToAttach = em.getReference(recetasListNewRecetasToAttach.getClass(), recetasListNewRecetasToAttach.getNumReceta());
                attachedRecetasListNew.add(recetasListNewRecetasToAttach);
            }
            recetasListNew = attachedRecetasListNew;
            consultas.setRecetasList(recetasListNew);
            consultas = em.merge(consultas);
            if (curpOld != null && !curpOld.equals(curpNew)) {
                curpOld.getConsultasList().remove(consultas);
                curpOld = em.merge(curpOld);
            }
            if (curpNew != null && !curpNew.equals(curpOld)) {
                curpNew.getConsultasList().add(consultas);
                curpNew = em.merge(curpNew);
            }
            for (Clientes clientesListOldClientes : clientesListOld) {
                if (!clientesListNew.contains(clientesListOldClientes)) {
                    clientesListOldClientes.getConsultasList().remove(consultas);
                    clientesListOldClientes = em.merge(clientesListOldClientes);
                }
            }
            for (Clientes clientesListNewClientes : clientesListNew) {
                if (!clientesListOld.contains(clientesListNewClientes)) {
                    clientesListNewClientes.getConsultasList().add(consultas);
                    clientesListNewClientes = em.merge(clientesListNewClientes);
                }
            }
            for (Recetas recetasListNewRecetas : recetasListNew) {
                if (!recetasListOld.contains(recetasListNewRecetas)) {
                    Consultas oldIdentificadorOfRecetasListNewRecetas = recetasListNewRecetas.getIdentificador();
                    recetasListNewRecetas.setIdentificador(consultas);
                    recetasListNewRecetas = em.merge(recetasListNewRecetas);
                    if (oldIdentificadorOfRecetasListNewRecetas != null && !oldIdentificadorOfRecetasListNewRecetas.equals(consultas)) {
                        oldIdentificadorOfRecetasListNewRecetas.getRecetasList().remove(recetasListNewRecetas);
                        oldIdentificadorOfRecetasListNewRecetas = em.merge(oldIdentificadorOfRecetasListNewRecetas);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = consultas.getIdentificador();
                if (findConsultas(id) == null) {
                    throw new NonexistentEntityException("The consultas with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws IllegalOrphanException, NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Consultas consultas;
            try {
                consultas = em.getReference(Consultas.class, id);
                consultas.getIdentificador();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The consultas with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Recetas> recetasListOrphanCheck = consultas.getRecetasList();
            for (Recetas recetasListOrphanCheckRecetas : recetasListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Consultas (" + consultas + ") cannot be destroyed since the Recetas " + recetasListOrphanCheckRecetas + " in its recetasList field has a non-nullable identificador field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            Medicos curp = consultas.getCurp();
            if (curp != null) {
                curp.getConsultasList().remove(consultas);
                curp = em.merge(curp);
            }
            List<Clientes> clientesList = consultas.getClientesList();
            for (Clientes clientesListClientes : clientesList) {
                clientesListClientes.getConsultasList().remove(consultas);
                clientesListClientes = em.merge(clientesListClientes);
            }
            em.remove(consultas);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Consultas> findConsultasEntities() {
        return findConsultasEntities(true, -1, -1);
    }

    public List<Consultas> findConsultasEntities(int maxResults, int firstResult) {
        return findConsultasEntities(false, maxResults, firstResult);
    }

    private List<Consultas> findConsultasEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Consultas.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Consultas findConsultas(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Consultas.class, id);
        } finally {
            em.close();
        }
    }

    public int getConsultasCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Consultas> rt = cq.from(Consultas.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
