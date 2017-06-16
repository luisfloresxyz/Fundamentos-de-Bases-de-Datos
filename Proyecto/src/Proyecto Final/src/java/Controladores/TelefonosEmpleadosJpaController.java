/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.TelefonosEmpleados;
import Entidades.TelefonosEmpleadosPK;
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
public class TelefonosEmpleadosJpaController implements Serializable {

    public TelefonosEmpleadosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(TelefonosEmpleados telefonosEmpleados) throws PreexistingEntityException, Exception {
        if (telefonosEmpleados.getTelefonosEmpleadosPK() == null) {
            telefonosEmpleados.setTelefonosEmpleadosPK(new TelefonosEmpleadosPK());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(telefonosEmpleados);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findTelefonosEmpleados(telefonosEmpleados.getTelefonosEmpleadosPK()) != null) {
                throw new PreexistingEntityException("TelefonosEmpleados " + telefonosEmpleados + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(TelefonosEmpleados telefonosEmpleados) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            telefonosEmpleados = em.merge(telefonosEmpleados);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                TelefonosEmpleadosPK id = telefonosEmpleados.getTelefonosEmpleadosPK();
                if (findTelefonosEmpleados(id) == null) {
                    throw new NonexistentEntityException("The telefonosEmpleados with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(TelefonosEmpleadosPK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            TelefonosEmpleados telefonosEmpleados;
            try {
                telefonosEmpleados = em.getReference(TelefonosEmpleados.class, id);
                telefonosEmpleados.getTelefonosEmpleadosPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The telefonosEmpleados with id " + id + " no longer exists.", enfe);
            }
            em.remove(telefonosEmpleados);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<TelefonosEmpleados> findTelefonosEmpleadosEntities() {
        return findTelefonosEmpleadosEntities(true, -1, -1);
    }

    public List<TelefonosEmpleados> findTelefonosEmpleadosEntities(int maxResults, int firstResult) {
        return findTelefonosEmpleadosEntities(false, maxResults, firstResult);
    }

    private List<TelefonosEmpleados> findTelefonosEmpleadosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(TelefonosEmpleados.class));
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

    public TelefonosEmpleados findTelefonosEmpleados(TelefonosEmpleadosPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(TelefonosEmpleados.class, id);
        } finally {
            em.close();
        }
    }

    public int getTelefonosEmpleadosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<TelefonosEmpleados> rt = cq.from(TelefonosEmpleados.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
