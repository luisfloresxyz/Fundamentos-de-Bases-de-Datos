/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Especialidades;
import Entidades.EspecialidadesPK;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Medicos;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class EspecialidadesJpaController implements Serializable {

    public EspecialidadesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Especialidades especialidades) throws PreexistingEntityException, Exception {
        if (especialidades.getEspecialidadesPK() == null) {
            especialidades.setEspecialidadesPK(new EspecialidadesPK());
        }
        especialidades.getEspecialidadesPK().setCurp(especialidades.getMedicos().getCurp());
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Medicos medicos = especialidades.getMedicos();
            if (medicos != null) {
                medicos = em.getReference(medicos.getClass(), medicos.getCurp());
                especialidades.setMedicos(medicos);
            }
            em.persist(especialidades);
            if (medicos != null) {
                medicos.getEspecialidadesList().add(especialidades);
                medicos = em.merge(medicos);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findEspecialidades(especialidades.getEspecialidadesPK()) != null) {
                throw new PreexistingEntityException("Especialidades " + especialidades + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Especialidades especialidades) throws NonexistentEntityException, Exception {
        especialidades.getEspecialidadesPK().setCurp(especialidades.getMedicos().getCurp());
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Especialidades persistentEspecialidades = em.find(Especialidades.class, especialidades.getEspecialidadesPK());
            Medicos medicosOld = persistentEspecialidades.getMedicos();
            Medicos medicosNew = especialidades.getMedicos();
            if (medicosNew != null) {
                medicosNew = em.getReference(medicosNew.getClass(), medicosNew.getCurp());
                especialidades.setMedicos(medicosNew);
            }
            especialidades = em.merge(especialidades);
            if (medicosOld != null && !medicosOld.equals(medicosNew)) {
                medicosOld.getEspecialidadesList().remove(especialidades);
                medicosOld = em.merge(medicosOld);
            }
            if (medicosNew != null && !medicosNew.equals(medicosOld)) {
                medicosNew.getEspecialidadesList().add(especialidades);
                medicosNew = em.merge(medicosNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                EspecialidadesPK id = especialidades.getEspecialidadesPK();
                if (findEspecialidades(id) == null) {
                    throw new NonexistentEntityException("The especialidades with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(EspecialidadesPK id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Especialidades especialidades;
            try {
                especialidades = em.getReference(Especialidades.class, id);
                especialidades.getEspecialidadesPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The especialidades with id " + id + " no longer exists.", enfe);
            }
            Medicos medicos = especialidades.getMedicos();
            if (medicos != null) {
                medicos.getEspecialidadesList().remove(especialidades);
                medicos = em.merge(medicos);
            }
            em.remove(especialidades);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Especialidades> findEspecialidadesEntities() {
        return findEspecialidadesEntities(true, -1, -1);
    }

    public List<Especialidades> findEspecialidadesEntities(int maxResults, int firstResult) {
        return findEspecialidadesEntities(false, maxResults, firstResult);
    }

    private List<Especialidades> findEspecialidadesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Especialidades.class));
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

    public Especialidades findEspecialidades(EspecialidadesPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Especialidades.class, id);
        } finally {
            em.close();
        }
    }

    public int getEspecialidadesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Especialidades> rt = cq.from(Especialidades.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
