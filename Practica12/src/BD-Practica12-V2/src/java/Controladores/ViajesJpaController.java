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
import Entidades.Automoviles;
import Entidades.Viajes;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class ViajesJpaController implements Serializable {

    public ViajesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Viajes viajes) throws PreexistingEntityException, Exception {
        if (viajes.getAutomovilesList() == null) {
            viajes.setAutomovilesList(new ArrayList<Automoviles>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<Automoviles> attachedAutomovilesList = new ArrayList<Automoviles>();
            for (Automoviles automovilesListAutomovilesToAttach : viajes.getAutomovilesList()) {
                automovilesListAutomovilesToAttach = em.getReference(automovilesListAutomovilesToAttach.getClass(), automovilesListAutomovilesToAttach.getNumMotor());
                attachedAutomovilesList.add(automovilesListAutomovilesToAttach);
            }
            viajes.setAutomovilesList(attachedAutomovilesList);
            em.persist(viajes);
            for (Automoviles automovilesListAutomoviles : viajes.getAutomovilesList()) {
                automovilesListAutomoviles.getViajesList().add(viajes);
                automovilesListAutomoviles = em.merge(automovilesListAutomoviles);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findViajes(viajes.getIdViaje()) != null) {
                throw new PreexistingEntityException("Viajes " + viajes + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Viajes viajes) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Viajes persistentViajes = em.find(Viajes.class, viajes.getIdViaje());
            List<Automoviles> automovilesListOld = persistentViajes.getAutomovilesList();
            List<Automoviles> automovilesListNew = viajes.getAutomovilesList();
            List<Automoviles> attachedAutomovilesListNew = new ArrayList<Automoviles>();
            for (Automoviles automovilesListNewAutomovilesToAttach : automovilesListNew) {
                automovilesListNewAutomovilesToAttach = em.getReference(automovilesListNewAutomovilesToAttach.getClass(), automovilesListNewAutomovilesToAttach.getNumMotor());
                attachedAutomovilesListNew.add(automovilesListNewAutomovilesToAttach);
            }
            automovilesListNew = attachedAutomovilesListNew;
            viajes.setAutomovilesList(automovilesListNew);
            viajes = em.merge(viajes);
            for (Automoviles automovilesListOldAutomoviles : automovilesListOld) {
                if (!automovilesListNew.contains(automovilesListOldAutomoviles)) {
                    automovilesListOldAutomoviles.getViajesList().remove(viajes);
                    automovilesListOldAutomoviles = em.merge(automovilesListOldAutomoviles);
                }
            }
            for (Automoviles automovilesListNewAutomoviles : automovilesListNew) {
                if (!automovilesListOld.contains(automovilesListNewAutomoviles)) {
                    automovilesListNewAutomoviles.getViajesList().add(viajes);
                    automovilesListNewAutomoviles = em.merge(automovilesListNewAutomoviles);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = viajes.getIdViaje();
                if (findViajes(id) == null) {
                    throw new NonexistentEntityException("The viajes with id " + id + " no longer exists.");
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
            Viajes viajes;
            try {
                viajes = em.getReference(Viajes.class, id);
                viajes.getIdViaje();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The viajes with id " + id + " no longer exists.", enfe);
            }
            List<Automoviles> automovilesList = viajes.getAutomovilesList();
            for (Automoviles automovilesListAutomoviles : automovilesList) {
                automovilesListAutomoviles.getViajesList().remove(viajes);
                automovilesListAutomoviles = em.merge(automovilesListAutomoviles);
            }
            em.remove(viajes);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Viajes> findViajesEntities() {
        return findViajesEntities(true, -1, -1);
    }

    public List<Viajes> findViajesEntities(int maxResults, int firstResult) {
        return findViajesEntities(false, maxResults, firstResult);
    }

    private List<Viajes> findViajesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Viajes.class));
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

    public Viajes findViajes(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Viajes.class, id);
        } finally {
            em.close();
        }
    }

    public int getViajesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Viajes> rt = cq.from(Viajes.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
