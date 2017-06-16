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
import Entidades.Mostradores;
import java.util.ArrayList;
import java.util.List;
import Entidades.IngredientesActivos;
import Entidades.Medicamentos;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class MedicamentosJpaController implements Serializable {

    public MedicamentosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Medicamentos medicamentos) throws PreexistingEntityException, Exception {
        if (medicamentos.getMostradoresList() == null) {
            medicamentos.setMostradoresList(new ArrayList<Mostradores>());
        }
        if (medicamentos.getIngredientesActivosList() == null) {
            medicamentos.setIngredientesActivosList(new ArrayList<IngredientesActivos>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<Mostradores> attachedMostradoresList = new ArrayList<Mostradores>();
            for (Mostradores mostradoresListMostradoresToAttach : medicamentos.getMostradoresList()) {
                mostradoresListMostradoresToAttach = em.getReference(mostradoresListMostradoresToAttach.getClass(), mostradoresListMostradoresToAttach.getCurp());
                attachedMostradoresList.add(mostradoresListMostradoresToAttach);
            }
            medicamentos.setMostradoresList(attachedMostradoresList);
            List<IngredientesActivos> attachedIngredientesActivosList = new ArrayList<IngredientesActivos>();
            for (IngredientesActivos ingredientesActivosListIngredientesActivosToAttach : medicamentos.getIngredientesActivosList()) {
                ingredientesActivosListIngredientesActivosToAttach = em.getReference(ingredientesActivosListIngredientesActivosToAttach.getClass(), ingredientesActivosListIngredientesActivosToAttach.getIngredientesActivosPK());
                attachedIngredientesActivosList.add(ingredientesActivosListIngredientesActivosToAttach);
            }
            medicamentos.setIngredientesActivosList(attachedIngredientesActivosList);
            em.persist(medicamentos);
            for (Mostradores mostradoresListMostradores : medicamentos.getMostradoresList()) {
                mostradoresListMostradores.getMedicamentosList().add(medicamentos);
                mostradoresListMostradores = em.merge(mostradoresListMostradores);
            }
            for (IngredientesActivos ingredientesActivosListIngredientesActivos : medicamentos.getIngredientesActivosList()) {
                Medicamentos oldMedicamentosOfIngredientesActivosListIngredientesActivos = ingredientesActivosListIngredientesActivos.getMedicamentos();
                ingredientesActivosListIngredientesActivos.setMedicamentos(medicamentos);
                ingredientesActivosListIngredientesActivos = em.merge(ingredientesActivosListIngredientesActivos);
                if (oldMedicamentosOfIngredientesActivosListIngredientesActivos != null) {
                    oldMedicamentosOfIngredientesActivosListIngredientesActivos.getIngredientesActivosList().remove(ingredientesActivosListIngredientesActivos);
                    oldMedicamentosOfIngredientesActivosListIngredientesActivos = em.merge(oldMedicamentosOfIngredientesActivosListIngredientesActivos);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findMedicamentos(medicamentos.getSku()) != null) {
                throw new PreexistingEntityException("Medicamentos " + medicamentos + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Medicamentos medicamentos) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Medicamentos persistentMedicamentos = em.find(Medicamentos.class, medicamentos.getSku());
            List<Mostradores> mostradoresListOld = persistentMedicamentos.getMostradoresList();
            List<Mostradores> mostradoresListNew = medicamentos.getMostradoresList();
            List<IngredientesActivos> ingredientesActivosListOld = persistentMedicamentos.getIngredientesActivosList();
            List<IngredientesActivos> ingredientesActivosListNew = medicamentos.getIngredientesActivosList();
            List<String> illegalOrphanMessages = null;
            for (IngredientesActivos ingredientesActivosListOldIngredientesActivos : ingredientesActivosListOld) {
                if (!ingredientesActivosListNew.contains(ingredientesActivosListOldIngredientesActivos)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain IngredientesActivos " + ingredientesActivosListOldIngredientesActivos + " since its medicamentos field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Mostradores> attachedMostradoresListNew = new ArrayList<Mostradores>();
            for (Mostradores mostradoresListNewMostradoresToAttach : mostradoresListNew) {
                mostradoresListNewMostradoresToAttach = em.getReference(mostradoresListNewMostradoresToAttach.getClass(), mostradoresListNewMostradoresToAttach.getCurp());
                attachedMostradoresListNew.add(mostradoresListNewMostradoresToAttach);
            }
            mostradoresListNew = attachedMostradoresListNew;
            medicamentos.setMostradoresList(mostradoresListNew);
            List<IngredientesActivos> attachedIngredientesActivosListNew = new ArrayList<IngredientesActivos>();
            for (IngredientesActivos ingredientesActivosListNewIngredientesActivosToAttach : ingredientesActivosListNew) {
                ingredientesActivosListNewIngredientesActivosToAttach = em.getReference(ingredientesActivosListNewIngredientesActivosToAttach.getClass(), ingredientesActivosListNewIngredientesActivosToAttach.getIngredientesActivosPK());
                attachedIngredientesActivosListNew.add(ingredientesActivosListNewIngredientesActivosToAttach);
            }
            ingredientesActivosListNew = attachedIngredientesActivosListNew;
            medicamentos.setIngredientesActivosList(ingredientesActivosListNew);
            medicamentos = em.merge(medicamentos);
            for (Mostradores mostradoresListOldMostradores : mostradoresListOld) {
                if (!mostradoresListNew.contains(mostradoresListOldMostradores)) {
                    mostradoresListOldMostradores.getMedicamentosList().remove(medicamentos);
                    mostradoresListOldMostradores = em.merge(mostradoresListOldMostradores);
                }
            }
            for (Mostradores mostradoresListNewMostradores : mostradoresListNew) {
                if (!mostradoresListOld.contains(mostradoresListNewMostradores)) {
                    mostradoresListNewMostradores.getMedicamentosList().add(medicamentos);
                    mostradoresListNewMostradores = em.merge(mostradoresListNewMostradores);
                }
            }
            for (IngredientesActivos ingredientesActivosListNewIngredientesActivos : ingredientesActivosListNew) {
                if (!ingredientesActivosListOld.contains(ingredientesActivosListNewIngredientesActivos)) {
                    Medicamentos oldMedicamentosOfIngredientesActivosListNewIngredientesActivos = ingredientesActivosListNewIngredientesActivos.getMedicamentos();
                    ingredientesActivosListNewIngredientesActivos.setMedicamentos(medicamentos);
                    ingredientesActivosListNewIngredientesActivos = em.merge(ingredientesActivosListNewIngredientesActivos);
                    if (oldMedicamentosOfIngredientesActivosListNewIngredientesActivos != null && !oldMedicamentosOfIngredientesActivosListNewIngredientesActivos.equals(medicamentos)) {
                        oldMedicamentosOfIngredientesActivosListNewIngredientesActivos.getIngredientesActivosList().remove(ingredientesActivosListNewIngredientesActivos);
                        oldMedicamentosOfIngredientesActivosListNewIngredientesActivos = em.merge(oldMedicamentosOfIngredientesActivosListNewIngredientesActivos);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = medicamentos.getSku();
                if (findMedicamentos(id) == null) {
                    throw new NonexistentEntityException("The medicamentos with id " + id + " no longer exists.");
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
            Medicamentos medicamentos;
            try {
                medicamentos = em.getReference(Medicamentos.class, id);
                medicamentos.getSku();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The medicamentos with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<IngredientesActivos> ingredientesActivosListOrphanCheck = medicamentos.getIngredientesActivosList();
            for (IngredientesActivos ingredientesActivosListOrphanCheckIngredientesActivos : ingredientesActivosListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Medicamentos (" + medicamentos + ") cannot be destroyed since the IngredientesActivos " + ingredientesActivosListOrphanCheckIngredientesActivos + " in its ingredientesActivosList field has a non-nullable medicamentos field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Mostradores> mostradoresList = medicamentos.getMostradoresList();
            for (Mostradores mostradoresListMostradores : mostradoresList) {
                mostradoresListMostradores.getMedicamentosList().remove(medicamentos);
                mostradoresListMostradores = em.merge(mostradoresListMostradores);
            }
            em.remove(medicamentos);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Medicamentos> findMedicamentosEntities() {
        return findMedicamentosEntities(true, -1, -1);
    }

    public List<Medicamentos> findMedicamentosEntities(int maxResults, int firstResult) {
        return findMedicamentosEntities(false, maxResults, firstResult);
    }

    private List<Medicamentos> findMedicamentosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Medicamentos.class));
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

    public Medicamentos findMedicamentos(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Medicamentos.class, id);
        } finally {
            em.close();
        }
    }

    public int getMedicamentosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Medicamentos> rt = cq.from(Medicamentos.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
