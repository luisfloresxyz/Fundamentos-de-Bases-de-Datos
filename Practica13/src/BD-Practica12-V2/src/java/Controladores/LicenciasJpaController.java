/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Licencias;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Personas;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class LicenciasJpaController implements Serializable {

    public LicenciasJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Licencias licencias) throws PreexistingEntityException, Exception {
        if (licencias.getPersonasList() == null) {
            licencias.setPersonasList(new ArrayList<Personas>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<Personas> attachedPersonasList = new ArrayList<Personas>();
            for (Personas personasListPersonasToAttach : licencias.getPersonasList()) {
                personasListPersonasToAttach = em.getReference(personasListPersonasToAttach.getClass(), personasListPersonasToAttach.getCurp());
                attachedPersonasList.add(personasListPersonasToAttach);
            }
            licencias.setPersonasList(attachedPersonasList);
            em.persist(licencias);
            for (Personas personasListPersonas : licencias.getPersonasList()) {
                personasListPersonas.getLicenciasList().add(licencias);
                personasListPersonas = em.merge(personasListPersonas);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findLicencias(licencias.getNumLicencia()) != null) {
                throw new PreexistingEntityException("Licencias " + licencias + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Licencias licencias) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Licencias persistentLicencias = em.find(Licencias.class, licencias.getNumLicencia());
            List<Personas> personasListOld = persistentLicencias.getPersonasList();
            List<Personas> personasListNew = licencias.getPersonasList();
            List<Personas> attachedPersonasListNew = new ArrayList<Personas>();
            for (Personas personasListNewPersonasToAttach : personasListNew) {
                personasListNewPersonasToAttach = em.getReference(personasListNewPersonasToAttach.getClass(), personasListNewPersonasToAttach.getCurp());
                attachedPersonasListNew.add(personasListNewPersonasToAttach);
            }
            personasListNew = attachedPersonasListNew;
            licencias.setPersonasList(personasListNew);
            licencias = em.merge(licencias);
            for (Personas personasListOldPersonas : personasListOld) {
                if (!personasListNew.contains(personasListOldPersonas)) {
                    personasListOldPersonas.getLicenciasList().remove(licencias);
                    personasListOldPersonas = em.merge(personasListOldPersonas);
                }
            }
            for (Personas personasListNewPersonas : personasListNew) {
                if (!personasListOld.contains(personasListNewPersonas)) {
                    personasListNewPersonas.getLicenciasList().add(licencias);
                    personasListNewPersonas = em.merge(personasListNewPersonas);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = licencias.getNumLicencia();
                if (findLicencias(id) == null) {
                    throw new NonexistentEntityException("The licencias with id " + id + " no longer exists.");
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
            Licencias licencias;
            try {
                licencias = em.getReference(Licencias.class, id);
                licencias.getNumLicencia();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The licencias with id " + id + " no longer exists.", enfe);
            }
            List<Personas> personasList = licencias.getPersonasList();
            for (Personas personasListPersonas : personasList) {
                personasListPersonas.getLicenciasList().remove(licencias);
                personasListPersonas = em.merge(personasListPersonas);
            }
            em.remove(licencias);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Licencias> findLicenciasEntities() {
        return findLicenciasEntities(true, -1, -1);
    }

    public List<Licencias> findLicenciasEntities(int maxResults, int firstResult) {
        return findLicenciasEntities(false, maxResults, firstResult);
    }

    private List<Licencias> findLicenciasEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Licencias.class));
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

    public Licencias findLicencias(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Licencias.class, id);
        } finally {
            em.close();
        }
    }

    public int getLicenciasCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Licencias> rt = cq.from(Licencias.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
