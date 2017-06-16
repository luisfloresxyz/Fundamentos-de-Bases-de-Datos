/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.IngredientesActivos;
import Entidades.IngredientesActivosPK;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Medicamentos;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class IngredientesActivosJpaController implements Serializable {

    public IngredientesActivosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(IngredientesActivos ingredientesActivos) throws PreexistingEntityException, Exception {
        if (ingredientesActivos.getIngredientesActivosPK() == null) {
            ingredientesActivos.setIngredientesActivosPK(new IngredientesActivosPK());
        }
        ingredientesActivos.getIngredientesActivosPK().setSku(ingredientesActivos.getMedicamentos().getSku());
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Medicamentos medicamentos = ingredientesActivos.getMedicamentos();
            if (medicamentos != null) {
                medicamentos = em.getReference(medicamentos.getClass(), medicamentos.getSku());
                ingredientesActivos.setMedicamentos(medicamentos);
            }
            em.persist(ingredientesActivos);
            if (medicamentos != null) {
                medicamentos.getIngredientesActivosList().add(ingredientesActivos);
                medicamentos = em.merge(medicamentos);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findIngredientesActivos(ingredientesActivos.getIngredientesActivosPK()) != null) {
                throw new PreexistingEntityException("IngredientesActivos " + ingredientesActivos + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(IngredientesActivos ingredientesActivos) throws NonexistentEntityException, Exception {
        ingredientesActivos.getIngredientesActivosPK().setSku(ingredientesActivos.getMedicamentos().getSku());
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            IngredientesActivos persistentIngredientesActivos = em.find(IngredientesActivos.class, ingredientesActivos.getIngredientesActivosPK());
            Medicamentos medicamentosOld = persistentIngredientesActivos.getMedicamentos();
            Medicamentos medicamentosNew = ingredientesActivos.getMedicamentos();
            if (medicamentosNew != null) {
                medicamentosNew = em.getReference(medicamentosNew.getClass(), medicamentosNew.getSku());
                ingredientesActivos.setMedicamentos(medicamentosNew);
            }
            ingredientesActivos = em.merge(ingredientesActivos);
            if (medicamentosOld != null && !medicamentosOld.equals(medicamentosNew)) {
                medicamentosOld.getIngredientesActivosList().remove(ingredientesActivos);
                medicamentosOld = em.merge(medicamentosOld);
            }
            if (medicamentosNew != null && !medicamentosNew.equals(medicamentosOld)) {
                medicamentosNew.getIngredientesActivosList().add(ingredientesActivos);
                medicamentosNew = em.merge(medicamentosNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                IngredientesActivosPK id = ingredientesActivos.getIngredientesActivosPK();
                if (findIngredientesActivos(id) == null) {
                    throw new NonexistentEntityException("The ingredientesActivos with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(IngredientesActivosPK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            IngredientesActivos ingredientesActivos;
            try {
                ingredientesActivos = em.getReference(IngredientesActivos.class, id);
                ingredientesActivos.getIngredientesActivosPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The ingredientesActivos with id " + id + " no longer exists.", enfe);
            }
            Medicamentos medicamentos = ingredientesActivos.getMedicamentos();
            if (medicamentos != null) {
                medicamentos.getIngredientesActivosList().remove(ingredientesActivos);
                medicamentos = em.merge(medicamentos);
            }
            em.remove(ingredientesActivos);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<IngredientesActivos> findIngredientesActivosEntities() {
        return findIngredientesActivosEntities(true, -1, -1);
    }

    public List<IngredientesActivos> findIngredientesActivosEntities(int maxResults, int firstResult) {
        return findIngredientesActivosEntities(false, maxResults, firstResult);
    }

    private List<IngredientesActivos> findIngredientesActivosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(IngredientesActivos.class));
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

    public IngredientesActivos findIngredientesActivos(IngredientesActivosPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(IngredientesActivos.class, id);
        } finally {
            em.close();
        }
    }

    public int getIngredientesActivosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<IngredientesActivos> rt = cq.from(IngredientesActivos.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
