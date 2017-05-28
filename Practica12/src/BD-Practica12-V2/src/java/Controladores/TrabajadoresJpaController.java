/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Personas;
import Entidades.Trabajadores;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class TrabajadoresJpaController implements Serializable {

    public TrabajadoresJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Trabajadores trabajadores) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Personas curp = trabajadores.getCurp();
            if (curp != null) {
                curp = em.getReference(curp.getClass(), curp.getCurp());
                trabajadores.setCurp(curp);
            }
            em.persist(trabajadores);
            if (curp != null) {
                curp.getTrabajadoresList().add(trabajadores);
                curp = em.merge(curp);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findTrabajadores(trabajadores.getIdUnam()) != null) {
                throw new PreexistingEntityException("Trabajadores " + trabajadores + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Trabajadores trabajadores) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Trabajadores persistentTrabajadores = em.find(Trabajadores.class, trabajadores.getIdUnam());
            Personas curpOld = persistentTrabajadores.getCurp();
            Personas curpNew = trabajadores.getCurp();
            if (curpNew != null) {
                curpNew = em.getReference(curpNew.getClass(), curpNew.getCurp());
                trabajadores.setCurp(curpNew);
            }
            trabajadores = em.merge(trabajadores);
            if (curpOld != null && !curpOld.equals(curpNew)) {
                curpOld.getTrabajadoresList().remove(trabajadores);
                curpOld = em.merge(curpOld);
            }
            if (curpNew != null && !curpNew.equals(curpOld)) {
                curpNew.getTrabajadoresList().add(trabajadores);
                curpNew = em.merge(curpNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = trabajadores.getIdUnam();
                if (findTrabajadores(id) == null) {
                    throw new NonexistentEntityException("The trabajadores with id " + id + " no longer exists.");
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
            Trabajadores trabajadores;
            try {
                trabajadores = em.getReference(Trabajadores.class, id);
                trabajadores.getIdUnam();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The trabajadores with id " + id + " no longer exists.", enfe);
            }
            Personas curp = trabajadores.getCurp();
            if (curp != null) {
                curp.getTrabajadoresList().remove(trabajadores);
                curp = em.merge(curp);
            }
            em.remove(trabajadores);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Trabajadores> findTrabajadoresEntities() {
        return findTrabajadoresEntities(true, -1, -1);
    }

    public List<Trabajadores> findTrabajadoresEntities(int maxResults, int firstResult) {
        return findTrabajadoresEntities(false, maxResults, firstResult);
    }

    private List<Trabajadores> findTrabajadoresEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Trabajadores.class));
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

    public Trabajadores findTrabajadores(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Trabajadores.class, id);
        } finally {
            em.close();
        }
    }

    public int getTrabajadoresCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Trabajadores> rt = cq.from(Trabajadores.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
