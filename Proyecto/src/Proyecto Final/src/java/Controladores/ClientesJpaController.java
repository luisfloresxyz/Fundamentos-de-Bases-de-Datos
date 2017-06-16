/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.IllegalOrphanException;
import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Clientes;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Consultas;
import java.util.ArrayList;
import java.util.List;
import Entidades.MonederosElectronicos;
import java.util.LinkedList;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Luis
 */
@ManagedBean
@RequestScoped
public class ClientesJpaController implements Serializable {

    public ClientesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public ClientesJpaController() {
        this.emf = Persistence.createEntityManagerFactory("BD-Practica12-V2PU");
    }
    
    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Clientes clientes) throws PreexistingEntityException, Exception {
        if (clientes.getConsultasList() == null) {
            clientes.setConsultasList(new ArrayList<Consultas>());
        }
        if (clientes.getMonederosElectronicosList() == null) {
            clientes.setMonederosElectronicosList(new ArrayList<MonederosElectronicos>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<Consultas> attachedConsultasList = new ArrayList<Consultas>();
            for (Consultas consultasListConsultasToAttach : clientes.getConsultasList()) {
                consultasListConsultasToAttach = em.getReference(consultasListConsultasToAttach.getClass(), consultasListConsultasToAttach.getIdentificador());
                attachedConsultasList.add(consultasListConsultasToAttach);
            }
            clientes.setConsultasList(attachedConsultasList);
            List<MonederosElectronicos> attachedMonederosElectronicosList = new ArrayList<MonederosElectronicos>();
            for (MonederosElectronicos monederosElectronicosListMonederosElectronicosToAttach : clientes.getMonederosElectronicosList()) {
                monederosElectronicosListMonederosElectronicosToAttach = em.getReference(monederosElectronicosListMonederosElectronicosToAttach.getClass(), monederosElectronicosListMonederosElectronicosToAttach.getIdentificador());
                attachedMonederosElectronicosList.add(monederosElectronicosListMonederosElectronicosToAttach);
            }
            clientes.setMonederosElectronicosList(attachedMonederosElectronicosList);
            em.persist(clientes);
            for (Consultas consultasListConsultas : clientes.getConsultasList()) {
                consultasListConsultas.getClientesList().add(clientes);
                consultasListConsultas = em.merge(consultasListConsultas);
            }
            for (MonederosElectronicos monederosElectronicosListMonederosElectronicos : clientes.getMonederosElectronicosList()) {
                Clientes oldCurpOfMonederosElectronicosListMonederosElectronicos = monederosElectronicosListMonederosElectronicos.getCurp();
                monederosElectronicosListMonederosElectronicos.setCurp(clientes);
                monederosElectronicosListMonederosElectronicos = em.merge(monederosElectronicosListMonederosElectronicos);
                if (oldCurpOfMonederosElectronicosListMonederosElectronicos != null) {
                    oldCurpOfMonederosElectronicosListMonederosElectronicos.getMonederosElectronicosList().remove(monederosElectronicosListMonederosElectronicos);
                    oldCurpOfMonederosElectronicosListMonederosElectronicos = em.merge(oldCurpOfMonederosElectronicosListMonederosElectronicos);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findClientes(clientes.getCurp()) != null) {
                throw new PreexistingEntityException("Clientes " + clientes + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Clientes clientes) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Clientes persistentClientes = em.find(Clientes.class, clientes.getCurp());
            List<Consultas> consultasListOld = persistentClientes.getConsultasList();
            List<Consultas> consultasListNew = clientes.getConsultasList();
            List<MonederosElectronicos> monederosElectronicosListOld = persistentClientes.getMonederosElectronicosList();
            List<MonederosElectronicos> monederosElectronicosListNew = clientes.getMonederosElectronicosList();
            List<String> illegalOrphanMessages = null;
            for (MonederosElectronicos monederosElectronicosListOldMonederosElectronicos : monederosElectronicosListOld) {
                if (!monederosElectronicosListNew.contains(monederosElectronicosListOldMonederosElectronicos)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain MonederosElectronicos " + monederosElectronicosListOldMonederosElectronicos + " since its curp field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Consultas> attachedConsultasListNew = new ArrayList<Consultas>();
            for (Consultas consultasListNewConsultasToAttach : consultasListNew) {
                consultasListNewConsultasToAttach = em.getReference(consultasListNewConsultasToAttach.getClass(), consultasListNewConsultasToAttach.getIdentificador());
                attachedConsultasListNew.add(consultasListNewConsultasToAttach);
            }
            consultasListNew = attachedConsultasListNew;
            clientes.setConsultasList(consultasListNew);
            List<MonederosElectronicos> attachedMonederosElectronicosListNew = new ArrayList<MonederosElectronicos>();
            for (MonederosElectronicos monederosElectronicosListNewMonederosElectronicosToAttach : monederosElectronicosListNew) {
                monederosElectronicosListNewMonederosElectronicosToAttach = em.getReference(monederosElectronicosListNewMonederosElectronicosToAttach.getClass(), monederosElectronicosListNewMonederosElectronicosToAttach.getIdentificador());
                attachedMonederosElectronicosListNew.add(monederosElectronicosListNewMonederosElectronicosToAttach);
            }
            monederosElectronicosListNew = attachedMonederosElectronicosListNew;
            clientes.setMonederosElectronicosList(monederosElectronicosListNew);
            clientes = em.merge(clientes);
            for (Consultas consultasListOldConsultas : consultasListOld) {
                if (!consultasListNew.contains(consultasListOldConsultas)) {
                    consultasListOldConsultas.getClientesList().remove(clientes);
                    consultasListOldConsultas = em.merge(consultasListOldConsultas);
                }
            }
            for (Consultas consultasListNewConsultas : consultasListNew) {
                if (!consultasListOld.contains(consultasListNewConsultas)) {
                    consultasListNewConsultas.getClientesList().add(clientes);
                    consultasListNewConsultas = em.merge(consultasListNewConsultas);
                }
            }
            for (MonederosElectronicos monederosElectronicosListNewMonederosElectronicos : monederosElectronicosListNew) {
                if (!monederosElectronicosListOld.contains(monederosElectronicosListNewMonederosElectronicos)) {
                    Clientes oldCurpOfMonederosElectronicosListNewMonederosElectronicos = monederosElectronicosListNewMonederosElectronicos.getCurp();
                    monederosElectronicosListNewMonederosElectronicos.setCurp(clientes);
                    monederosElectronicosListNewMonederosElectronicos = em.merge(monederosElectronicosListNewMonederosElectronicos);
                    if (oldCurpOfMonederosElectronicosListNewMonederosElectronicos != null && !oldCurpOfMonederosElectronicosListNewMonederosElectronicos.equals(clientes)) {
                        oldCurpOfMonederosElectronicosListNewMonederosElectronicos.getMonederosElectronicosList().remove(monederosElectronicosListNewMonederosElectronicos);
                        oldCurpOfMonederosElectronicosListNewMonederosElectronicos = em.merge(oldCurpOfMonederosElectronicosListNewMonederosElectronicos);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = clientes.getCurp();
                if (findClientes(id) == null) {
                    throw new NonexistentEntityException("The clientes with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(String id) throws IllegalOrphanException, NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Clientes clientes;
            try {
                clientes = em.getReference(Clientes.class, id);
                clientes.getCurp();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The clientes with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<MonederosElectronicos> monederosElectronicosListOrphanCheck = clientes.getMonederosElectronicosList();
            for (MonederosElectronicos monederosElectronicosListOrphanCheckMonederosElectronicos : monederosElectronicosListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Clientes (" + clientes + ") cannot be destroyed since the MonederosElectronicos " + monederosElectronicosListOrphanCheckMonederosElectronicos + " in its monederosElectronicosList field has a non-nullable curp field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Consultas> consultasList = clientes.getConsultasList();
            for (Consultas consultasListConsultas : consultasList) {
                consultasListConsultas.getClientesList().remove(clientes);
                consultasListConsultas = em.merge(consultasListConsultas);
            }
            em.remove(clientes);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Clientes> findClientesEntities() {
        return findClientesEntities(true, -1, -1);
    }

    public List<Clientes> findClientesEntities(int maxResults, int firstResult) {
        return findClientesEntities(false, maxResults, firstResult);
    }

    private List<Clientes> findClientesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Clientes.class));
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

    public Clientes findClientes(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Clientes.class, id);
        } finally {
            em.close();
        }
    }

    public int getClientesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Clientes> rt = cq.from(Clientes.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
        
    public List<Clientes> getClientesConsultaGratis(){
        EntityManager em = getEntityManager();
        List<Object[]> results;
        results = em.createNativeQuery("select R.curp , nombre , paterno , materno\n" +
"from (\n" +
"	select curp , R.identificador\n" +
"	from (\n" +
"		select identificador\n" +
"		from app.Farmacia.CONSULTAS\n" +
"		where costo = 0\n" +
"	) as R join app.Farmacia.SOLICITAR on R.identificador = SOLICITAR.identificador\n" +
") as R join app.Farmacia.CLIENTES on R.curp = CLIENTES.curp").getResultList();
        List<Clientes> clientes = new LinkedList<>();
        for (int i = 0; i < results.size(); i++) {
            Clientes nuevo = new Clientes();            
            nuevo.setCurp((String) results.get(i)[0]);
            nuevo.setNombre((String) results.get(i)[1]);
            nuevo.setPaterno((String) results.get(i)[2]);
            nuevo.setMaterno((String) results.get(i)[3]);
            //nuevo.setNumMotor((String) results.get(i)[0]);
            //nuevo.setAnio(null);
            //nuevo.setMarca((String) results.get(i)[2]);
            //nuevo.setModelo((String) results.get(i)[3]);
            //nuevo.setNumCilindros((short) results.get(i)[4]);
            //nuevo.setLlantaRefaccion((String) results.get(i)[5]);
            //nuevo.setTipo((String) results.get(i)[6]);
            //nuevo.setEstaActivo((String) results.get(i)[7]);
            //nuevo.setFechaActivo(null);
            //autos.add(nuevo);
            clientes.add(nuevo);
        }
        return clientes;
    }
}
