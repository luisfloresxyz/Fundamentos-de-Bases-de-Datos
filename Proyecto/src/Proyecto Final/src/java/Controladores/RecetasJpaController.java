/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.IllegalOrphanException;
import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Consultas;
import Entidades.EspecificacionesAdicionales;
import Entidades.Recetas;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class RecetasJpaController implements Serializable {

    public RecetasJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Recetas recetas) throws PreexistingEntityException, Exception {
        if (recetas.getEspecificacionesAdicionalesList() == null) {
            recetas.setEspecificacionesAdicionalesList(new ArrayList<EspecificacionesAdicionales>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Consultas identificador = recetas.getIdentificador();
            if (identificador != null) {
                identificador = em.getReference(identificador.getClass(), identificador.getIdentificador());
                recetas.setIdentificador(identificador);
            }
            List<EspecificacionesAdicionales> attachedEspecificacionesAdicionalesList = new ArrayList<EspecificacionesAdicionales>();
            for (EspecificacionesAdicionales especificacionesAdicionalesListEspecificacionesAdicionalesToAttach : recetas.getEspecificacionesAdicionalesList()) {
                especificacionesAdicionalesListEspecificacionesAdicionalesToAttach = em.getReference(especificacionesAdicionalesListEspecificacionesAdicionalesToAttach.getClass(), especificacionesAdicionalesListEspecificacionesAdicionalesToAttach.getEspecificacionesAdicionalesPK());
                attachedEspecificacionesAdicionalesList.add(especificacionesAdicionalesListEspecificacionesAdicionalesToAttach);
            }
            recetas.setEspecificacionesAdicionalesList(attachedEspecificacionesAdicionalesList);
            em.persist(recetas);
            if (identificador != null) {
                identificador.getRecetasList().add(recetas);
                identificador = em.merge(identificador);
            }
            for (EspecificacionesAdicionales especificacionesAdicionalesListEspecificacionesAdicionales : recetas.getEspecificacionesAdicionalesList()) {
                Recetas oldRecetasOfEspecificacionesAdicionalesListEspecificacionesAdicionales = especificacionesAdicionalesListEspecificacionesAdicionales.getRecetas();
                especificacionesAdicionalesListEspecificacionesAdicionales.setRecetas(recetas);
                especificacionesAdicionalesListEspecificacionesAdicionales = em.merge(especificacionesAdicionalesListEspecificacionesAdicionales);
                if (oldRecetasOfEspecificacionesAdicionalesListEspecificacionesAdicionales != null) {
                    oldRecetasOfEspecificacionesAdicionalesListEspecificacionesAdicionales.getEspecificacionesAdicionalesList().remove(especificacionesAdicionalesListEspecificacionesAdicionales);
                    oldRecetasOfEspecificacionesAdicionalesListEspecificacionesAdicionales = em.merge(oldRecetasOfEspecificacionesAdicionalesListEspecificacionesAdicionales);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findRecetas(recetas.getNumReceta()) != null) {
                throw new PreexistingEntityException("Recetas " + recetas + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Recetas recetas) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Recetas persistentRecetas = em.find(Recetas.class, recetas.getNumReceta());
            Consultas identificadorOld = persistentRecetas.getIdentificador();
            Consultas identificadorNew = recetas.getIdentificador();
            List<EspecificacionesAdicionales> especificacionesAdicionalesListOld = persistentRecetas.getEspecificacionesAdicionalesList();
            List<EspecificacionesAdicionales> especificacionesAdicionalesListNew = recetas.getEspecificacionesAdicionalesList();
            List<String> illegalOrphanMessages = null;
            for (EspecificacionesAdicionales especificacionesAdicionalesListOldEspecificacionesAdicionales : especificacionesAdicionalesListOld) {
                if (!especificacionesAdicionalesListNew.contains(especificacionesAdicionalesListOldEspecificacionesAdicionales)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain EspecificacionesAdicionales " + especificacionesAdicionalesListOldEspecificacionesAdicionales + " since its recetas field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (identificadorNew != null) {
                identificadorNew = em.getReference(identificadorNew.getClass(), identificadorNew.getIdentificador());
                recetas.setIdentificador(identificadorNew);
            }
            List<EspecificacionesAdicionales> attachedEspecificacionesAdicionalesListNew = new ArrayList<EspecificacionesAdicionales>();
            for (EspecificacionesAdicionales especificacionesAdicionalesListNewEspecificacionesAdicionalesToAttach : especificacionesAdicionalesListNew) {
                especificacionesAdicionalesListNewEspecificacionesAdicionalesToAttach = em.getReference(especificacionesAdicionalesListNewEspecificacionesAdicionalesToAttach.getClass(), especificacionesAdicionalesListNewEspecificacionesAdicionalesToAttach.getEspecificacionesAdicionalesPK());
                attachedEspecificacionesAdicionalesListNew.add(especificacionesAdicionalesListNewEspecificacionesAdicionalesToAttach);
            }
            especificacionesAdicionalesListNew = attachedEspecificacionesAdicionalesListNew;
            recetas.setEspecificacionesAdicionalesList(especificacionesAdicionalesListNew);
            recetas = em.merge(recetas);
            if (identificadorOld != null && !identificadorOld.equals(identificadorNew)) {
                identificadorOld.getRecetasList().remove(recetas);
                identificadorOld = em.merge(identificadorOld);
            }
            if (identificadorNew != null && !identificadorNew.equals(identificadorOld)) {
                identificadorNew.getRecetasList().add(recetas);
                identificadorNew = em.merge(identificadorNew);
            }
            for (EspecificacionesAdicionales especificacionesAdicionalesListNewEspecificacionesAdicionales : especificacionesAdicionalesListNew) {
                if (!especificacionesAdicionalesListOld.contains(especificacionesAdicionalesListNewEspecificacionesAdicionales)) {
                    Recetas oldRecetasOfEspecificacionesAdicionalesListNewEspecificacionesAdicionales = especificacionesAdicionalesListNewEspecificacionesAdicionales.getRecetas();
                    especificacionesAdicionalesListNewEspecificacionesAdicionales.setRecetas(recetas);
                    especificacionesAdicionalesListNewEspecificacionesAdicionales = em.merge(especificacionesAdicionalesListNewEspecificacionesAdicionales);
                    if (oldRecetasOfEspecificacionesAdicionalesListNewEspecificacionesAdicionales != null && !oldRecetasOfEspecificacionesAdicionalesListNewEspecificacionesAdicionales.equals(recetas)) {
                        oldRecetasOfEspecificacionesAdicionalesListNewEspecificacionesAdicionales.getEspecificacionesAdicionalesList().remove(especificacionesAdicionalesListNewEspecificacionesAdicionales);
                        oldRecetasOfEspecificacionesAdicionalesListNewEspecificacionesAdicionales = em.merge(oldRecetasOfEspecificacionesAdicionalesListNewEspecificacionesAdicionales);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = recetas.getNumReceta();
                if (findRecetas(id) == null) {
                    throw new NonexistentEntityException("The recetas with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws IllegalOrphanException, NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Recetas recetas;
            try {
                recetas = em.getReference(Recetas.class, id);
                recetas.getNumReceta();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The recetas with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<EspecificacionesAdicionales> especificacionesAdicionalesListOrphanCheck = recetas.getEspecificacionesAdicionalesList();
            for (EspecificacionesAdicionales especificacionesAdicionalesListOrphanCheckEspecificacionesAdicionales : especificacionesAdicionalesListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Recetas (" + recetas + ") cannot be destroyed since the EspecificacionesAdicionales " + especificacionesAdicionalesListOrphanCheckEspecificacionesAdicionales + " in its especificacionesAdicionalesList field has a non-nullable recetas field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            Consultas identificador = recetas.getIdentificador();
            if (identificador != null) {
                identificador.getRecetasList().remove(recetas);
                identificador = em.merge(identificador);
            }
            em.remove(recetas);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Recetas> findRecetasEntities() {
        return findRecetasEntities(true, -1, -1);
    }

    public List<Recetas> findRecetasEntities(int maxResults, int firstResult) {
        return findRecetasEntities(false, maxResults, firstResult);
    }

    private List<Recetas> findRecetasEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Recetas.class));
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

    public Recetas findRecetas(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Recetas.class, id);
        } finally {
            em.close();
        }
    }

    public int getRecetasCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Recetas> rt = cq.from(Recetas.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
