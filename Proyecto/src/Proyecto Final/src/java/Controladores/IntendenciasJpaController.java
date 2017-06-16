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
import Entidades.Empleados;
import Entidades.Intendencias;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class IntendenciasJpaController implements Serializable {

    public IntendenciasJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Intendencias intendencias) throws IllegalOrphanException, PreexistingEntityException, Exception {
        List<String> illegalOrphanMessages = null;
        Empleados empleadosOrphanCheck = intendencias.getEmpleados();
        if (empleadosOrphanCheck != null) {
            Intendencias oldIntendenciasOfEmpleados = empleadosOrphanCheck.getIntendencias();
            if (oldIntendenciasOfEmpleados != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("The Empleados " + empleadosOrphanCheck + " already has an item of type Intendencias whose empleados column cannot be null. Please make another selection for the empleados field.");
            }
        }
        if (illegalOrphanMessages != null) {
            throw new IllegalOrphanException(illegalOrphanMessages);
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Empleados empleados = intendencias.getEmpleados();
            if (empleados != null) {
                empleados = em.getReference(empleados.getClass(), empleados.getCurp());
                intendencias.setEmpleados(empleados);
            }
            em.persist(intendencias);
            if (empleados != null) {
                empleados.setIntendencias(intendencias);
                empleados = em.merge(empleados);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findIntendencias(intendencias.getCurp()) != null) {
                throw new PreexistingEntityException("Intendencias " + intendencias + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Intendencias intendencias) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Intendencias persistentIntendencias = em.find(Intendencias.class, intendencias.getCurp());
            Empleados empleadosOld = persistentIntendencias.getEmpleados();
            Empleados empleadosNew = intendencias.getEmpleados();
            List<String> illegalOrphanMessages = null;
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                Intendencias oldIntendenciasOfEmpleados = empleadosNew.getIntendencias();
                if (oldIntendenciasOfEmpleados != null) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("The Empleados " + empleadosNew + " already has an item of type Intendencias whose empleados column cannot be null. Please make another selection for the empleados field.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (empleadosNew != null) {
                empleadosNew = em.getReference(empleadosNew.getClass(), empleadosNew.getCurp());
                intendencias.setEmpleados(empleadosNew);
            }
            intendencias = em.merge(intendencias);
            if (empleadosOld != null && !empleadosOld.equals(empleadosNew)) {
                empleadosOld.setIntendencias(null);
                empleadosOld = em.merge(empleadosOld);
            }
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                empleadosNew.setIntendencias(intendencias);
                empleadosNew = em.merge(empleadosNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = intendencias.getCurp();
                if (findIntendencias(id) == null) {
                    throw new NonexistentEntityException("The intendencias with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(String id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Intendencias intendencias;
            try {
                intendencias = em.getReference(Intendencias.class, id);
                intendencias.getCurp();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The intendencias with id " + id + " no longer exists.", enfe);
            }
            Empleados empleados = intendencias.getEmpleados();
            if (empleados != null) {
                empleados.setIntendencias(null);
                empleados = em.merge(empleados);
            }
            em.remove(intendencias);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Intendencias> findIntendenciasEntities() {
        return findIntendenciasEntities(true, -1, -1);
    }

    public List<Intendencias> findIntendenciasEntities(int maxResults, int firstResult) {
        return findIntendenciasEntities(false, maxResults, firstResult);
    }

    private List<Intendencias> findIntendenciasEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Intendencias.class));
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

    public Intendencias findIntendencias(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Intendencias.class, id);
        } finally {
            em.close();
        }
    }

    public int getIntendenciasCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Intendencias> rt = cq.from(Intendencias.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
