/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Celulares;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Personas;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class CelularesJpaController implements Serializable {

    public CelularesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Celulares celulares) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Personas curp = celulares.getCurp();
            if (curp != null) {
                curp = em.getReference(curp.getClass(), curp.getCurp());
                celulares.setCurp(curp);
            }
            em.persist(celulares);
            if (curp != null) {
                curp.getCelularesList().add(celulares);
                curp = em.merge(curp);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findCelulares(celulares.getCelular()) != null) {
                throw new PreexistingEntityException("Celulares " + celulares + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Celulares celulares) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Celulares persistentCelulares = em.find(Celulares.class, celulares.getCelular());
            Personas curpOld = persistentCelulares.getCurp();
            Personas curpNew = celulares.getCurp();
            if (curpNew != null) {
                curpNew = em.getReference(curpNew.getClass(), curpNew.getCurp());
                celulares.setCurp(curpNew);
            }
            celulares = em.merge(celulares);
            if (curpOld != null && !curpOld.equals(curpNew)) {
                curpOld.getCelularesList().remove(celulares);
                curpOld = em.merge(curpOld);
            }
            if (curpNew != null && !curpNew.equals(curpOld)) {
                curpNew.getCelularesList().add(celulares);
                curpNew = em.merge(curpNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = celulares.getCelular();
                if (findCelulares(id) == null) {
                    throw new NonexistentEntityException("The celulares with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Long id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Celulares celulares;
            try {
                celulares = em.getReference(Celulares.class, id);
                celulares.getCelular();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The celulares with id " + id + " no longer exists.", enfe);
            }
            Personas curp = celulares.getCurp();
            if (curp != null) {
                curp.getCelularesList().remove(celulares);
                curp = em.merge(curp);
            }
            em.remove(celulares);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Celulares> findCelularesEntities() {
        return findCelularesEntities(true, -1, -1);
    }

    public List<Celulares> findCelularesEntities(int maxResults, int firstResult) {
        return findCelularesEntities(false, maxResults, firstResult);
    }

    private List<Celulares> findCelularesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Celulares.class));
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

    public Celulares findCelulares(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Celulares.class, id);
        } finally {
            em.close();
        }
    }

    public int getCelularesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Celulares> rt = cq.from(Celulares.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
