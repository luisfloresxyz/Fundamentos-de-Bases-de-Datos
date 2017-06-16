/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Correos;
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
public class CorreosJpaController implements Serializable {

    public CorreosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Correos correos) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Personas curp = correos.getCurp();
            if (curp != null) {
                curp = em.getReference(curp.getClass(), curp.getCurp());
                correos.setCurp(curp);
            }
            em.persist(correos);
            if (curp != null) {
                curp.getCorreosList().add(correos);
                curp = em.merge(curp);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findCorreos(correos.getCorreo()) != null) {
                throw new PreexistingEntityException("Correos " + correos + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Correos correos) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Correos persistentCorreos = em.find(Correos.class, correos.getCorreo());
            Personas curpOld = persistentCorreos.getCurp();
            Personas curpNew = correos.getCurp();
            if (curpNew != null) {
                curpNew = em.getReference(curpNew.getClass(), curpNew.getCurp());
                correos.setCurp(curpNew);
            }
            correos = em.merge(correos);
            if (curpOld != null && !curpOld.equals(curpNew)) {
                curpOld.getCorreosList().remove(correos);
                curpOld = em.merge(curpOld);
            }
            if (curpNew != null && !curpNew.equals(curpOld)) {
                curpNew.getCorreosList().add(correos);
                curpNew = em.merge(curpNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = correos.getCorreo();
                if (findCorreos(id) == null) {
                    throw new NonexistentEntityException("The correos with id " + id + " no longer exists.");
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
            Correos correos;
            try {
                correos = em.getReference(Correos.class, id);
                correos.getCorreo();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The correos with id " + id + " no longer exists.", enfe);
            }
            Personas curp = correos.getCurp();
            if (curp != null) {
                curp.getCorreosList().remove(correos);
                curp = em.merge(curp);
            }
            em.remove(correos);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Correos> findCorreosEntities() {
        return findCorreosEntities(true, -1, -1);
    }

    public List<Correos> findCorreosEntities(int maxResults, int firstResult) {
        return findCorreosEntities(false, maxResults, firstResult);
    }

    private List<Correos> findCorreosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Correos.class));
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

    public Correos findCorreos(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Correos.class, id);
        } finally {
            em.close();
        }
    }

    public int getCorreosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Correos> rt = cq.from(Correos.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
