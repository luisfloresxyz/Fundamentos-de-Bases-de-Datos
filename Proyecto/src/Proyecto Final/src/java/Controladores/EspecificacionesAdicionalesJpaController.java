/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.EspecificacionesAdicionales;
import Entidades.EspecificacionesAdicionalesPK;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Recetas;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class EspecificacionesAdicionalesJpaController implements Serializable {

    public EspecificacionesAdicionalesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(EspecificacionesAdicionales especificacionesAdicionales) throws PreexistingEntityException, Exception {
        if (especificacionesAdicionales.getEspecificacionesAdicionalesPK() == null) {
            especificacionesAdicionales.setEspecificacionesAdicionalesPK(new EspecificacionesAdicionalesPK());
        }
        especificacionesAdicionales.getEspecificacionesAdicionalesPK().setNumReceta(especificacionesAdicionales.getRecetas().getNumReceta());
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Recetas recetas = especificacionesAdicionales.getRecetas();
            if (recetas != null) {
                recetas = em.getReference(recetas.getClass(), recetas.getNumReceta());
                especificacionesAdicionales.setRecetas(recetas);
            }
            em.persist(especificacionesAdicionales);
            if (recetas != null) {
                recetas.getEspecificacionesAdicionalesList().add(especificacionesAdicionales);
                recetas = em.merge(recetas);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findEspecificacionesAdicionales(especificacionesAdicionales.getEspecificacionesAdicionalesPK()) != null) {
                throw new PreexistingEntityException("EspecificacionesAdicionales " + especificacionesAdicionales + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(EspecificacionesAdicionales especificacionesAdicionales) throws NonexistentEntityException, Exception {
        especificacionesAdicionales.getEspecificacionesAdicionalesPK().setNumReceta(especificacionesAdicionales.getRecetas().getNumReceta());
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            EspecificacionesAdicionales persistentEspecificacionesAdicionales = em.find(EspecificacionesAdicionales.class, especificacionesAdicionales.getEspecificacionesAdicionalesPK());
            Recetas recetasOld = persistentEspecificacionesAdicionales.getRecetas();
            Recetas recetasNew = especificacionesAdicionales.getRecetas();
            if (recetasNew != null) {
                recetasNew = em.getReference(recetasNew.getClass(), recetasNew.getNumReceta());
                especificacionesAdicionales.setRecetas(recetasNew);
            }
            especificacionesAdicionales = em.merge(especificacionesAdicionales);
            if (recetasOld != null && !recetasOld.equals(recetasNew)) {
                recetasOld.getEspecificacionesAdicionalesList().remove(especificacionesAdicionales);
                recetasOld = em.merge(recetasOld);
            }
            if (recetasNew != null && !recetasNew.equals(recetasOld)) {
                recetasNew.getEspecificacionesAdicionalesList().add(especificacionesAdicionales);
                recetasNew = em.merge(recetasNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                EspecificacionesAdicionalesPK id = especificacionesAdicionales.getEspecificacionesAdicionalesPK();
                if (findEspecificacionesAdicionales(id) == null) {
                    throw new NonexistentEntityException("The especificacionesAdicionales with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(EspecificacionesAdicionalesPK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            EspecificacionesAdicionales especificacionesAdicionales;
            try {
                especificacionesAdicionales = em.getReference(EspecificacionesAdicionales.class, id);
                especificacionesAdicionales.getEspecificacionesAdicionalesPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The especificacionesAdicionales with id " + id + " no longer exists.", enfe);
            }
            Recetas recetas = especificacionesAdicionales.getRecetas();
            if (recetas != null) {
                recetas.getEspecificacionesAdicionalesList().remove(especificacionesAdicionales);
                recetas = em.merge(recetas);
            }
            em.remove(especificacionesAdicionales);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<EspecificacionesAdicionales> findEspecificacionesAdicionalesEntities() {
        return findEspecificacionesAdicionalesEntities(true, -1, -1);
    }

    public List<EspecificacionesAdicionales> findEspecificacionesAdicionalesEntities(int maxResults, int firstResult) {
        return findEspecificacionesAdicionalesEntities(false, maxResults, firstResult);
    }

    private List<EspecificacionesAdicionales> findEspecificacionesAdicionalesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(EspecificacionesAdicionales.class));
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

    public EspecificacionesAdicionales findEspecificacionesAdicionales(EspecificacionesAdicionalesPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(EspecificacionesAdicionales.class, id);
        } finally {
            em.close();
        }
    }

    public int getEspecificacionesAdicionalesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<EspecificacionesAdicionales> rt = cq.from(EspecificacionesAdicionales.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
