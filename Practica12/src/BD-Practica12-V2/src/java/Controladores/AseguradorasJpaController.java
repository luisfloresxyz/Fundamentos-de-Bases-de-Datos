/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Aseguradoras;
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
public class AseguradorasJpaController implements Serializable {

    public AseguradorasJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Aseguradoras aseguradoras) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(aseguradoras);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findAseguradoras(aseguradoras.getIdAseguradora()) != null) {
                throw new PreexistingEntityException("Aseguradoras " + aseguradoras + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Aseguradoras aseguradoras) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            aseguradoras = em.merge(aseguradoras);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = aseguradoras.getIdAseguradora();
                if (findAseguradoras(id) == null) {
                    throw new NonexistentEntityException("The aseguradoras with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Aseguradoras aseguradoras;
            try {
                aseguradoras = em.getReference(Aseguradoras.class, id);
                aseguradoras.getIdAseguradora();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The aseguradoras with id " + id + " no longer exists.", enfe);
            }
            em.remove(aseguradoras);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Aseguradoras> findAseguradorasEntities() {
        return findAseguradorasEntities(true, -1, -1);
    }

    public List<Aseguradoras> findAseguradorasEntities(int maxResults, int firstResult) {
        return findAseguradorasEntities(false, maxResults, firstResult);
    }

    private List<Aseguradoras> findAseguradorasEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Aseguradoras.class));
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

    public Aseguradoras findAseguradoras(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Aseguradoras.class, id);
        } finally {
            em.close();
        }
    }

    public int getAseguradorasCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Aseguradoras> rt = cq.from(Aseguradoras.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
