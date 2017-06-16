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
import Entidades.Sucursales;
import Entidades.TelefonosSucursales;
import Entidades.TelefonosSucursalesPK;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class TelefonosSucursalesJpaController implements Serializable {

    public TelefonosSucursalesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(TelefonosSucursales telefonosSucursales) throws PreexistingEntityException, Exception {
        if (telefonosSucursales.getTelefonosSucursalesPK() == null) {
            telefonosSucursales.setTelefonosSucursalesPK(new TelefonosSucursalesPK());
        }
        telefonosSucursales.getTelefonosSucursalesPK().setIdentificador(telefonosSucursales.getSucursales().getIdentificador());
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Sucursales sucursales = telefonosSucursales.getSucursales();
            if (sucursales != null) {
                sucursales = em.getReference(sucursales.getClass(), sucursales.getIdentificador());
                telefonosSucursales.setSucursales(sucursales);
            }
            em.persist(telefonosSucursales);
            if (sucursales != null) {
                sucursales.getTelefonosSucursalesList().add(telefonosSucursales);
                sucursales = em.merge(sucursales);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findTelefonosSucursales(telefonosSucursales.getTelefonosSucursalesPK()) != null) {
                throw new PreexistingEntityException("TelefonosSucursales " + telefonosSucursales + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(TelefonosSucursales telefonosSucursales) throws NonexistentEntityException, Exception {
        telefonosSucursales.getTelefonosSucursalesPK().setIdentificador(telefonosSucursales.getSucursales().getIdentificador());
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            TelefonosSucursales persistentTelefonosSucursales = em.find(TelefonosSucursales.class, telefonosSucursales.getTelefonosSucursalesPK());
            Sucursales sucursalesOld = persistentTelefonosSucursales.getSucursales();
            Sucursales sucursalesNew = telefonosSucursales.getSucursales();
            if (sucursalesNew != null) {
                sucursalesNew = em.getReference(sucursalesNew.getClass(), sucursalesNew.getIdentificador());
                telefonosSucursales.setSucursales(sucursalesNew);
            }
            telefonosSucursales = em.merge(telefonosSucursales);
            if (sucursalesOld != null && !sucursalesOld.equals(sucursalesNew)) {
                sucursalesOld.getTelefonosSucursalesList().remove(telefonosSucursales);
                sucursalesOld = em.merge(sucursalesOld);
            }
            if (sucursalesNew != null && !sucursalesNew.equals(sucursalesOld)) {
                sucursalesNew.getTelefonosSucursalesList().add(telefonosSucursales);
                sucursalesNew = em.merge(sucursalesNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                TelefonosSucursalesPK id = telefonosSucursales.getTelefonosSucursalesPK();
                if (findTelefonosSucursales(id) == null) {
                    throw new NonexistentEntityException("The telefonosSucursales with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(TelefonosSucursalesPK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            TelefonosSucursales telefonosSucursales;
            try {
                telefonosSucursales = em.getReference(TelefonosSucursales.class, id);
                telefonosSucursales.getTelefonosSucursalesPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The telefonosSucursales with id " + id + " no longer exists.", enfe);
            }
            Sucursales sucursales = telefonosSucursales.getSucursales();
            if (sucursales != null) {
                sucursales.getTelefonosSucursalesList().remove(telefonosSucursales);
                sucursales = em.merge(sucursales);
            }
            em.remove(telefonosSucursales);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<TelefonosSucursales> findTelefonosSucursalesEntities() {
        return findTelefonosSucursalesEntities(true, -1, -1);
    }

    public List<TelefonosSucursales> findTelefonosSucursalesEntities(int maxResults, int firstResult) {
        return findTelefonosSucursalesEntities(false, maxResults, firstResult);
    }

    private List<TelefonosSucursales> findTelefonosSucursalesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(TelefonosSucursales.class));
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

    public TelefonosSucursales findTelefonosSucursales(TelefonosSucursalesPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(TelefonosSucursales.class, id);
        } finally {
            em.close();
        }
    }

    public int getTelefonosSucursalesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<TelefonosSucursales> rt = cq.from(TelefonosSucursales.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
