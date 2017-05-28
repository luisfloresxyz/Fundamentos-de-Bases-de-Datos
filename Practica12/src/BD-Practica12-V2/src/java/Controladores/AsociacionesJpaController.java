/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Asociaciones;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Luis
 */
public class AsociacionesJpaController implements Serializable {

    public AsociacionesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Asociaciones asociaciones) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(asociaciones);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findAsociaciones(asociaciones.getNombre()) != null) {
                throw new PreexistingEntityException("Asociaciones " + asociaciones + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Asociaciones asociaciones) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            asociaciones = em.merge(asociaciones);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = asociaciones.getNombre();
                if (findAsociaciones(id) == null) {
                    throw new NonexistentEntityException("The asociaciones with id " + id + " no longer exists.");
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
            Asociaciones asociaciones;
            try {
                asociaciones = em.getReference(Asociaciones.class, id);
                asociaciones.getNombre();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The asociaciones with id " + id + " no longer exists.", enfe);
            }
            em.remove(asociaciones);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Asociaciones> findAsociacionesEntities() {
        return findAsociacionesEntities(true, -1, -1);
    }

    public List<Asociaciones> findAsociacionesEntities(int maxResults, int firstResult) {
        return findAsociacionesEntities(false, maxResults, firstResult);
    }

    private List<Asociaciones> findAsociacionesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Asociaciones.class));
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

    public Asociaciones findAsociaciones(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Asociaciones.class, id);
        } finally {
            em.close();
        }
    }

    public int getAsociacionesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Asociaciones> rt = cq.from(Asociaciones.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
