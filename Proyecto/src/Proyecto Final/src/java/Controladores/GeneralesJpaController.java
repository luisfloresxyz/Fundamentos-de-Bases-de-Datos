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
import Entidades.Generales;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class GeneralesJpaController implements Serializable {

    public GeneralesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Generales generales) throws IllegalOrphanException, PreexistingEntityException, Exception {
        List<String> illegalOrphanMessages = null;
        Empleados empleadosOrphanCheck = generales.getEmpleados();
        if (empleadosOrphanCheck != null) {
            Generales oldGeneralesOfEmpleados = empleadosOrphanCheck.getGenerales();
            if (oldGeneralesOfEmpleados != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("The Empleados " + empleadosOrphanCheck + " already has an item of type Generales whose empleados column cannot be null. Please make another selection for the empleados field.");
            }
        }
        if (illegalOrphanMessages != null) {
            throw new IllegalOrphanException(illegalOrphanMessages);
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Empleados empleados = generales.getEmpleados();
            if (empleados != null) {
                empleados = em.getReference(empleados.getClass(), empleados.getCurp());
                generales.setEmpleados(empleados);
            }
            em.persist(generales);
            if (empleados != null) {
                empleados.setGenerales(generales);
                empleados = em.merge(empleados);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findGenerales(generales.getCurp()) != null) {
                throw new PreexistingEntityException("Generales " + generales + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Generales generales) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Generales persistentGenerales = em.find(Generales.class, generales.getCurp());
            Empleados empleadosOld = persistentGenerales.getEmpleados();
            Empleados empleadosNew = generales.getEmpleados();
            List<String> illegalOrphanMessages = null;
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                Generales oldGeneralesOfEmpleados = empleadosNew.getGenerales();
                if (oldGeneralesOfEmpleados != null) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("The Empleados " + empleadosNew + " already has an item of type Generales whose empleados column cannot be null. Please make another selection for the empleados field.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (empleadosNew != null) {
                empleadosNew = em.getReference(empleadosNew.getClass(), empleadosNew.getCurp());
                generales.setEmpleados(empleadosNew);
            }
            generales = em.merge(generales);
            if (empleadosOld != null && !empleadosOld.equals(empleadosNew)) {
                empleadosOld.setGenerales(null);
                empleadosOld = em.merge(empleadosOld);
            }
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                empleadosNew.setGenerales(generales);
                empleadosNew = em.merge(empleadosNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = generales.getCurp();
                if (findGenerales(id) == null) {
                    throw new NonexistentEntityException("The generales with id " + id + " no longer exists.");
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
            Generales generales;
            try {
                generales = em.getReference(Generales.class, id);
                generales.getCurp();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The generales with id " + id + " no longer exists.", enfe);
            }
            Empleados empleados = generales.getEmpleados();
            if (empleados != null) {
                empleados.setGenerales(null);
                empleados = em.merge(empleados);
            }
            em.remove(generales);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Generales> findGeneralesEntities() {
        return findGeneralesEntities(true, -1, -1);
    }

    public List<Generales> findGeneralesEntities(int maxResults, int firstResult) {
        return findGeneralesEntities(false, maxResults, firstResult);
    }

    private List<Generales> findGeneralesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Generales.class));
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

    public Generales findGenerales(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Generales.class, id);
        } finally {
            em.close();
        }
    }

    public int getGeneralesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Generales> rt = cq.from(Generales.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
