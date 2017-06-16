/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.CorreosElectronicosEmpleados;
import Entidades.CorreosElectronicosEmpleadosPK;
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
public class CorreosElectronicosEmpleadosJpaController implements Serializable {

    public CorreosElectronicosEmpleadosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(CorreosElectronicosEmpleados correosElectronicosEmpleados) throws PreexistingEntityException, Exception {
        if (correosElectronicosEmpleados.getCorreosElectronicosEmpleadosPK() == null) {
            correosElectronicosEmpleados.setCorreosElectronicosEmpleadosPK(new CorreosElectronicosEmpleadosPK());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(correosElectronicosEmpleados);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findCorreosElectronicosEmpleados(correosElectronicosEmpleados.getCorreosElectronicosEmpleadosPK()) != null) {
                throw new PreexistingEntityException("CorreosElectronicosEmpleados " + correosElectronicosEmpleados + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(CorreosElectronicosEmpleados correosElectronicosEmpleados) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            correosElectronicosEmpleados = em.merge(correosElectronicosEmpleados);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                CorreosElectronicosEmpleadosPK id = correosElectronicosEmpleados.getCorreosElectronicosEmpleadosPK();
                if (findCorreosElectronicosEmpleados(id) == null) {
                    throw new NonexistentEntityException("The correosElectronicosEmpleados with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(CorreosElectronicosEmpleadosPK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            CorreosElectronicosEmpleados correosElectronicosEmpleados;
            try {
                correosElectronicosEmpleados = em.getReference(CorreosElectronicosEmpleados.class, id);
                correosElectronicosEmpleados.getCorreosElectronicosEmpleadosPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The correosElectronicosEmpleados with id " + id + " no longer exists.", enfe);
            }
            em.remove(correosElectronicosEmpleados);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<CorreosElectronicosEmpleados> findCorreosElectronicosEmpleadosEntities() {
        return findCorreosElectronicosEmpleadosEntities(true, -1, -1);
    }

    public List<CorreosElectronicosEmpleados> findCorreosElectronicosEmpleadosEntities(int maxResults, int firstResult) {
        return findCorreosElectronicosEmpleadosEntities(false, maxResults, firstResult);
    }

    private List<CorreosElectronicosEmpleados> findCorreosElectronicosEmpleadosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(CorreosElectronicosEmpleados.class));
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

    public CorreosElectronicosEmpleados findCorreosElectronicosEmpleados(CorreosElectronicosEmpleadosPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(CorreosElectronicosEmpleados.class, id);
        } finally {
            em.close();
        }
    }

    public int getCorreosElectronicosEmpleadosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<CorreosElectronicosEmpleados> rt = cq.from(CorreosElectronicosEmpleados.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
