/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.CorreosElectronicosClientes;
import Entidades.CorreosElectronicosClientesPK;
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
public class CorreosElectronicosClientesJpaController implements Serializable {

    public CorreosElectronicosClientesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(CorreosElectronicosClientes correosElectronicosClientes) throws PreexistingEntityException, Exception {
        if (correosElectronicosClientes.getCorreosElectronicosClientesPK() == null) {
            correosElectronicosClientes.setCorreosElectronicosClientesPK(new CorreosElectronicosClientesPK());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(correosElectronicosClientes);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findCorreosElectronicosClientes(correosElectronicosClientes.getCorreosElectronicosClientesPK()) != null) {
                throw new PreexistingEntityException("CorreosElectronicosClientes " + correosElectronicosClientes + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(CorreosElectronicosClientes correosElectronicosClientes) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            correosElectronicosClientes = em.merge(correosElectronicosClientes);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                CorreosElectronicosClientesPK id = correosElectronicosClientes.getCorreosElectronicosClientesPK();
                if (findCorreosElectronicosClientes(id) == null) {
                    throw new NonexistentEntityException("The correosElectronicosClientes with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(CorreosElectronicosClientesPK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            CorreosElectronicosClientes correosElectronicosClientes;
            try {
                correosElectronicosClientes = em.getReference(CorreosElectronicosClientes.class, id);
                correosElectronicosClientes.getCorreosElectronicosClientesPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The correosElectronicosClientes with id " + id + " no longer exists.", enfe);
            }
            em.remove(correosElectronicosClientes);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<CorreosElectronicosClientes> findCorreosElectronicosClientesEntities() {
        return findCorreosElectronicosClientesEntities(true, -1, -1);
    }

    public List<CorreosElectronicosClientes> findCorreosElectronicosClientesEntities(int maxResults, int firstResult) {
        return findCorreosElectronicosClientesEntities(false, maxResults, firstResult);
    }

    private List<CorreosElectronicosClientes> findCorreosElectronicosClientesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(CorreosElectronicosClientes.class));
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

    public CorreosElectronicosClientes findCorreosElectronicosClientes(CorreosElectronicosClientesPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(CorreosElectronicosClientes.class, id);
        } finally {
            em.close();
        }
    }

    public int getCorreosElectronicosClientesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<CorreosElectronicosClientes> rt = cq.from(CorreosElectronicosClientes.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
