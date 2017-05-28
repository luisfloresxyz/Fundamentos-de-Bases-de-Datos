/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Academicos;
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
public class AcademicosJpaController implements Serializable {

    public AcademicosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Academicos academicos) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Personas curp = academicos.getCurp();
            if (curp != null) {
                curp = em.getReference(curp.getClass(), curp.getCurp());
                academicos.setCurp(curp);
            }
            em.persist(academicos);
            if (curp != null) {
                curp.getAcademicosList().add(academicos);
                curp = em.merge(curp);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findAcademicos(academicos.getIdUnam()) != null) {
                throw new PreexistingEntityException("Academicos " + academicos + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Academicos academicos) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Academicos persistentAcademicos = em.find(Academicos.class, academicos.getIdUnam());
            Personas curpOld = persistentAcademicos.getCurp();
            Personas curpNew = academicos.getCurp();
            if (curpNew != null) {
                curpNew = em.getReference(curpNew.getClass(), curpNew.getCurp());
                academicos.setCurp(curpNew);
            }
            academicos = em.merge(academicos);
            if (curpOld != null && !curpOld.equals(curpNew)) {
                curpOld.getAcademicosList().remove(academicos);
                curpOld = em.merge(curpOld);
            }
            if (curpNew != null && !curpNew.equals(curpOld)) {
                curpNew.getAcademicosList().add(academicos);
                curpNew = em.merge(curpNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = academicos.getIdUnam();
                if (findAcademicos(id) == null) {
                    throw new NonexistentEntityException("The academicos with id " + id + " no longer exists.");
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
            Academicos academicos;
            try {
                academicos = em.getReference(Academicos.class, id);
                academicos.getIdUnam();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The academicos with id " + id + " no longer exists.", enfe);
            }
            Personas curp = academicos.getCurp();
            if (curp != null) {
                curp.getAcademicosList().remove(academicos);
                curp = em.merge(curp);
            }
            em.remove(academicos);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Academicos> findAcademicosEntities() {
        return findAcademicosEntities(true, -1, -1);
    }

    public List<Academicos> findAcademicosEntities(int maxResults, int firstResult) {
        return findAcademicosEntities(false, maxResults, firstResult);
    }

    private List<Academicos> findAcademicosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Academicos.class));
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

    public Academicos findAcademicos(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Academicos.class, id);
        } finally {
            em.close();
        }
    }

    public int getAcademicosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Academicos> rt = cq.from(Academicos.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
