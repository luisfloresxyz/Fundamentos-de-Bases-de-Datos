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
import Entidades.Intendencias;
import Entidades.Generales;
import Entidades.Choferes;
import Entidades.Empleados;
import Entidades.Mostradores;
import Entidades.Medicos;
import Entidades.Sucursales;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class EmpleadosJpaController implements Serializable {

    public EmpleadosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Empleados empleados) throws PreexistingEntityException, Exception {
        if (empleados.getSucursalesList() == null) {
            empleados.setSucursalesList(new ArrayList<Sucursales>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Intendencias intendencias = empleados.getIntendencias();
            if (intendencias != null) {
                intendencias = em.getReference(intendencias.getClass(), intendencias.getCurp());
                empleados.setIntendencias(intendencias);
            }
            Generales generales = empleados.getGenerales();
            if (generales != null) {
                generales = em.getReference(generales.getClass(), generales.getCurp());
                empleados.setGenerales(generales);
            }
            Choferes choferes = empleados.getChoferes();
            if (choferes != null) {
                choferes = em.getReference(choferes.getClass(), choferes.getCurp());
                empleados.setChoferes(choferes);
            }
            Mostradores mostradores = empleados.getMostradores();
            if (mostradores != null) {
                mostradores = em.getReference(mostradores.getClass(), mostradores.getCurp());
                empleados.setMostradores(mostradores);
            }
            Medicos medicos = empleados.getMedicos();
            if (medicos != null) {
                medicos = em.getReference(medicos.getClass(), medicos.getCurp());
                empleados.setMedicos(medicos);
            }
            List<Sucursales> attachedSucursalesList = new ArrayList<Sucursales>();
            for (Sucursales sucursalesListSucursalesToAttach : empleados.getSucursalesList()) {
                sucursalesListSucursalesToAttach = em.getReference(sucursalesListSucursalesToAttach.getClass(), sucursalesListSucursalesToAttach.getIdentificador());
                attachedSucursalesList.add(sucursalesListSucursalesToAttach);
            }
            empleados.setSucursalesList(attachedSucursalesList);
            em.persist(empleados);
            if (intendencias != null) {
                Empleados oldEmpleadosOfIntendencias = intendencias.getEmpleados();
                if (oldEmpleadosOfIntendencias != null) {
                    oldEmpleadosOfIntendencias.setIntendencias(null);
                    oldEmpleadosOfIntendencias = em.merge(oldEmpleadosOfIntendencias);
                }
                intendencias.setEmpleados(empleados);
                intendencias = em.merge(intendencias);
            }
            if (generales != null) {
                Empleados oldEmpleadosOfGenerales = generales.getEmpleados();
                if (oldEmpleadosOfGenerales != null) {
                    oldEmpleadosOfGenerales.setGenerales(null);
                    oldEmpleadosOfGenerales = em.merge(oldEmpleadosOfGenerales);
                }
                generales.setEmpleados(empleados);
                generales = em.merge(generales);
            }
            if (choferes != null) {
                Empleados oldEmpleadosOfChoferes = choferes.getEmpleados();
                if (oldEmpleadosOfChoferes != null) {
                    oldEmpleadosOfChoferes.setChoferes(null);
                    oldEmpleadosOfChoferes = em.merge(oldEmpleadosOfChoferes);
                }
                choferes.setEmpleados(empleados);
                choferes = em.merge(choferes);
            }
            if (mostradores != null) {
                Empleados oldEmpleadosOfMostradores = mostradores.getEmpleados();
                if (oldEmpleadosOfMostradores != null) {
                    oldEmpleadosOfMostradores.setMostradores(null);
                    oldEmpleadosOfMostradores = em.merge(oldEmpleadosOfMostradores);
                }
                mostradores.setEmpleados(empleados);
                mostradores = em.merge(mostradores);
            }
            if (medicos != null) {
                Empleados oldEmpleadosOfMedicos = medicos.getEmpleados();
                if (oldEmpleadosOfMedicos != null) {
                    oldEmpleadosOfMedicos.setMedicos(null);
                    oldEmpleadosOfMedicos = em.merge(oldEmpleadosOfMedicos);
                }
                medicos.setEmpleados(empleados);
                medicos = em.merge(medicos);
            }
            for (Sucursales sucursalesListSucursales : empleados.getSucursalesList()) {
                sucursalesListSucursales.getEmpleadosList().add(empleados);
                sucursalesListSucursales = em.merge(sucursalesListSucursales);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findEmpleados(empleados.getCurp()) != null) {
                throw new PreexistingEntityException("Empleados " + empleados + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Empleados empleados) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Empleados persistentEmpleados = em.find(Empleados.class, empleados.getCurp());
            Intendencias intendenciasOld = persistentEmpleados.getIntendencias();
            Intendencias intendenciasNew = empleados.getIntendencias();
            Generales generalesOld = persistentEmpleados.getGenerales();
            Generales generalesNew = empleados.getGenerales();
            Choferes choferesOld = persistentEmpleados.getChoferes();
            Choferes choferesNew = empleados.getChoferes();
            Mostradores mostradoresOld = persistentEmpleados.getMostradores();
            Mostradores mostradoresNew = empleados.getMostradores();
            Medicos medicosOld = persistentEmpleados.getMedicos();
            Medicos medicosNew = empleados.getMedicos();
            List<Sucursales> sucursalesListOld = persistentEmpleados.getSucursalesList();
            List<Sucursales> sucursalesListNew = empleados.getSucursalesList();
            List<String> illegalOrphanMessages = null;
            if (intendenciasOld != null && !intendenciasOld.equals(intendenciasNew)) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("You must retain Intendencias " + intendenciasOld + " since its empleados field is not nullable.");
            }
            if (generalesOld != null && !generalesOld.equals(generalesNew)) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("You must retain Generales " + generalesOld + " since its empleados field is not nullable.");
            }
            if (choferesOld != null && !choferesOld.equals(choferesNew)) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("You must retain Choferes " + choferesOld + " since its empleados field is not nullable.");
            }
            if (mostradoresOld != null && !mostradoresOld.equals(mostradoresNew)) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("You must retain Mostradores " + mostradoresOld + " since its empleados field is not nullable.");
            }
            if (medicosOld != null && !medicosOld.equals(medicosNew)) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("You must retain Medicos " + medicosOld + " since its empleados field is not nullable.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (intendenciasNew != null) {
                intendenciasNew = em.getReference(intendenciasNew.getClass(), intendenciasNew.getCurp());
                empleados.setIntendencias(intendenciasNew);
            }
            if (generalesNew != null) {
                generalesNew = em.getReference(generalesNew.getClass(), generalesNew.getCurp());
                empleados.setGenerales(generalesNew);
            }
            if (choferesNew != null) {
                choferesNew = em.getReference(choferesNew.getClass(), choferesNew.getCurp());
                empleados.setChoferes(choferesNew);
            }
            if (mostradoresNew != null) {
                mostradoresNew = em.getReference(mostradoresNew.getClass(), mostradoresNew.getCurp());
                empleados.setMostradores(mostradoresNew);
            }
            if (medicosNew != null) {
                medicosNew = em.getReference(medicosNew.getClass(), medicosNew.getCurp());
                empleados.setMedicos(medicosNew);
            }
            List<Sucursales> attachedSucursalesListNew = new ArrayList<Sucursales>();
            for (Sucursales sucursalesListNewSucursalesToAttach : sucursalesListNew) {
                sucursalesListNewSucursalesToAttach = em.getReference(sucursalesListNewSucursalesToAttach.getClass(), sucursalesListNewSucursalesToAttach.getIdentificador());
                attachedSucursalesListNew.add(sucursalesListNewSucursalesToAttach);
            }
            sucursalesListNew = attachedSucursalesListNew;
            empleados.setSucursalesList(sucursalesListNew);
            empleados = em.merge(empleados);
            if (intendenciasNew != null && !intendenciasNew.equals(intendenciasOld)) {
                Empleados oldEmpleadosOfIntendencias = intendenciasNew.getEmpleados();
                if (oldEmpleadosOfIntendencias != null) {
                    oldEmpleadosOfIntendencias.setIntendencias(null);
                    oldEmpleadosOfIntendencias = em.merge(oldEmpleadosOfIntendencias);
                }
                intendenciasNew.setEmpleados(empleados);
                intendenciasNew = em.merge(intendenciasNew);
            }
            if (generalesNew != null && !generalesNew.equals(generalesOld)) {
                Empleados oldEmpleadosOfGenerales = generalesNew.getEmpleados();
                if (oldEmpleadosOfGenerales != null) {
                    oldEmpleadosOfGenerales.setGenerales(null);
                    oldEmpleadosOfGenerales = em.merge(oldEmpleadosOfGenerales);
                }
                generalesNew.setEmpleados(empleados);
                generalesNew = em.merge(generalesNew);
            }
            if (choferesNew != null && !choferesNew.equals(choferesOld)) {
                Empleados oldEmpleadosOfChoferes = choferesNew.getEmpleados();
                if (oldEmpleadosOfChoferes != null) {
                    oldEmpleadosOfChoferes.setChoferes(null);
                    oldEmpleadosOfChoferes = em.merge(oldEmpleadosOfChoferes);
                }
                choferesNew.setEmpleados(empleados);
                choferesNew = em.merge(choferesNew);
            }
            if (mostradoresNew != null && !mostradoresNew.equals(mostradoresOld)) {
                Empleados oldEmpleadosOfMostradores = mostradoresNew.getEmpleados();
                if (oldEmpleadosOfMostradores != null) {
                    oldEmpleadosOfMostradores.setMostradores(null);
                    oldEmpleadosOfMostradores = em.merge(oldEmpleadosOfMostradores);
                }
                mostradoresNew.setEmpleados(empleados);
                mostradoresNew = em.merge(mostradoresNew);
            }
            if (medicosNew != null && !medicosNew.equals(medicosOld)) {
                Empleados oldEmpleadosOfMedicos = medicosNew.getEmpleados();
                if (oldEmpleadosOfMedicos != null) {
                    oldEmpleadosOfMedicos.setMedicos(null);
                    oldEmpleadosOfMedicos = em.merge(oldEmpleadosOfMedicos);
                }
                medicosNew.setEmpleados(empleados);
                medicosNew = em.merge(medicosNew);
            }
            for (Sucursales sucursalesListOldSucursales : sucursalesListOld) {
                if (!sucursalesListNew.contains(sucursalesListOldSucursales)) {
                    sucursalesListOldSucursales.getEmpleadosList().remove(empleados);
                    sucursalesListOldSucursales = em.merge(sucursalesListOldSucursales);
                }
            }
            for (Sucursales sucursalesListNewSucursales : sucursalesListNew) {
                if (!sucursalesListOld.contains(sucursalesListNewSucursales)) {
                    sucursalesListNewSucursales.getEmpleadosList().add(empleados);
                    sucursalesListNewSucursales = em.merge(sucursalesListNewSucursales);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = empleados.getCurp();
                if (findEmpleados(id) == null) {
                    throw new NonexistentEntityException("The empleados with id " + id + " no longer exists.");
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
            Empleados empleados;
            try {
                empleados = em.getReference(Empleados.class, id);
                empleados.getCurp();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The empleados with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            Intendencias intendenciasOrphanCheck = empleados.getIntendencias();
            if (intendenciasOrphanCheck != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Empleados (" + empleados + ") cannot be destroyed since the Intendencias " + intendenciasOrphanCheck + " in its intendencias field has a non-nullable empleados field.");
            }
            Generales generalesOrphanCheck = empleados.getGenerales();
            if (generalesOrphanCheck != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Empleados (" + empleados + ") cannot be destroyed since the Generales " + generalesOrphanCheck + " in its generales field has a non-nullable empleados field.");
            }
            Choferes choferesOrphanCheck = empleados.getChoferes();
            if (choferesOrphanCheck != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Empleados (" + empleados + ") cannot be destroyed since the Choferes " + choferesOrphanCheck + " in its choferes field has a non-nullable empleados field.");
            }
            Mostradores mostradoresOrphanCheck = empleados.getMostradores();
            if (mostradoresOrphanCheck != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Empleados (" + empleados + ") cannot be destroyed since the Mostradores " + mostradoresOrphanCheck + " in its mostradores field has a non-nullable empleados field.");
            }
            Medicos medicosOrphanCheck = empleados.getMedicos();
            if (medicosOrphanCheck != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Empleados (" + empleados + ") cannot be destroyed since the Medicos " + medicosOrphanCheck + " in its medicos field has a non-nullable empleados field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Sucursales> sucursalesList = empleados.getSucursalesList();
            for (Sucursales sucursalesListSucursales : sucursalesList) {
                sucursalesListSucursales.getEmpleadosList().remove(empleados);
                sucursalesListSucursales = em.merge(sucursalesListSucursales);
            }
            em.remove(empleados);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Empleados> findEmpleadosEntities() {
        return findEmpleadosEntities(true, -1, -1);
    }

    public List<Empleados> findEmpleadosEntities(int maxResults, int firstResult) {
        return findEmpleadosEntities(false, maxResults, firstResult);
    }

    private List<Empleados> findEmpleadosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Empleados.class));
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

    public Empleados findEmpleados(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Empleados.class, id);
        } finally {
            em.close();
        }
    }

    public int getEmpleadosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Empleados> rt = cq.from(Empleados.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
