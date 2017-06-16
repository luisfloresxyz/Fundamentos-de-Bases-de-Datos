/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.TelefonosClientes;
import Entidades.TelefonosClientesPK;
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
public class TelefonosClientesJpaController implements Serializable {

    public TelefonosClientesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(TelefonosClientes telefonosClientes) throws PreexistingEntityException, Exception {
        if (telefonosClientes.getTelefonosClientesPK() == null) {
            telefonosClientes.setTelefonosClientesPK(new TelefonosClientesPK());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(telefonosClientes);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findTelefonosClientes(telefonosClientes.getTelefonosClientesPK()) != null) {
                throw new PreexistingEntityException("TelefonosClientes " + telefonosClientes + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(TelefonosClientes telefonosClientes) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            telefonosClientes = em.merge(telefonosClientes);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                TelefonosClientesPK id = telefonosClientes.getTelefonosClientesPK();
                if (findTelefonosClientes(id) == null) {
                    throw new NonexistentEntityException("The telefonosClientes with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(TelefonosClientesPK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            TelefonosClientes telefonosClientes;
            try {
                telefonosClientes = em.getReference(TelefonosClientes.class, id);
                telefonosClientes.getTelefonosClientesPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The telefonosClientes with id " + id + " no longer exists.", enfe);
            }
            em.remove(telefonosClientes);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<TelefonosClientes> findTelefonosClientesEntities() {
        return findTelefonosClientesEntities(true, -1, -1);
    }

    public List<TelefonosClientes> findTelefonosClientesEntities(int maxResults, int firstResult) {
        return findTelefonosClientesEntities(false, maxResults, firstResult);
    }

    private List<TelefonosClientes> findTelefonosClientesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(TelefonosClientes.class));
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

    public TelefonosClientes findTelefonosClientes(TelefonosClientesPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(TelefonosClientes.class, id);
        } finally {
            em.close();
        }
    }

    public int getTelefonosClientesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<TelefonosClientes> rt = cq.from(TelefonosClientes.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
