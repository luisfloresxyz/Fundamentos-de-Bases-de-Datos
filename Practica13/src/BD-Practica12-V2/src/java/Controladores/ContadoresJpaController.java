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
import Entidades.Contadores;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class ContadoresJpaController implements Serializable {

    public ContadoresJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Contadores contadores) throws PreexistingEntityException, Exception {
        if (contadores.getContadoresList() == null) {
            contadores.setContadoresList(new ArrayList<Contadores>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Contadores jefeContadorCurp = contadores.getJefeContadorCurp();
            if (jefeContadorCurp != null) {
                jefeContadorCurp = em.getReference(jefeContadorCurp.getClass(), jefeContadorCurp.getCurpContador());
                contadores.setJefeContadorCurp(jefeContadorCurp);
            }
            List<Contadores> attachedContadoresList = new ArrayList<Contadores>();
            for (Contadores contadoresListContadoresToAttach : contadores.getContadoresList()) {
                contadoresListContadoresToAttach = em.getReference(contadoresListContadoresToAttach.getClass(), contadoresListContadoresToAttach.getCurpContador());
                attachedContadoresList.add(contadoresListContadoresToAttach);
            }
            contadores.setContadoresList(attachedContadoresList);
            em.persist(contadores);
            if (jefeContadorCurp != null) {
                jefeContadorCurp.getContadoresList().add(contadores);
                jefeContadorCurp = em.merge(jefeContadorCurp);
            }
            for (Contadores contadoresListContadores : contadores.getContadoresList()) {
                Contadores oldJefeContadorCurpOfContadoresListContadores = contadoresListContadores.getJefeContadorCurp();
                contadoresListContadores.setJefeContadorCurp(contadores);
                contadoresListContadores = em.merge(contadoresListContadores);
                if (oldJefeContadorCurpOfContadoresListContadores != null) {
                    oldJefeContadorCurpOfContadoresListContadores.getContadoresList().remove(contadoresListContadores);
                    oldJefeContadorCurpOfContadoresListContadores = em.merge(oldJefeContadorCurpOfContadoresListContadores);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findContadores(contadores.getCurpContador()) != null) {
                throw new PreexistingEntityException("Contadores " + contadores + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Contadores contadores) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Contadores persistentContadores = em.find(Contadores.class, contadores.getCurpContador());
            Contadores jefeContadorCurpOld = persistentContadores.getJefeContadorCurp();
            Contadores jefeContadorCurpNew = contadores.getJefeContadorCurp();
            List<Contadores> contadoresListOld = persistentContadores.getContadoresList();
            List<Contadores> contadoresListNew = contadores.getContadoresList();
            List<String> illegalOrphanMessages = null;
            for (Contadores contadoresListOldContadores : contadoresListOld) {
                if (!contadoresListNew.contains(contadoresListOldContadores)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Contadores " + contadoresListOldContadores + " since its jefeContadorCurp field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (jefeContadorCurpNew != null) {
                jefeContadorCurpNew = em.getReference(jefeContadorCurpNew.getClass(), jefeContadorCurpNew.getCurpContador());
                contadores.setJefeContadorCurp(jefeContadorCurpNew);
            }
            List<Contadores> attachedContadoresListNew = new ArrayList<Contadores>();
            for (Contadores contadoresListNewContadoresToAttach : contadoresListNew) {
                contadoresListNewContadoresToAttach = em.getReference(contadoresListNewContadoresToAttach.getClass(), contadoresListNewContadoresToAttach.getCurpContador());
                attachedContadoresListNew.add(contadoresListNewContadoresToAttach);
            }
            contadoresListNew = attachedContadoresListNew;
            contadores.setContadoresList(contadoresListNew);
            contadores = em.merge(contadores);
            if (jefeContadorCurpOld != null && !jefeContadorCurpOld.equals(jefeContadorCurpNew)) {
                jefeContadorCurpOld.getContadoresList().remove(contadores);
                jefeContadorCurpOld = em.merge(jefeContadorCurpOld);
            }
            if (jefeContadorCurpNew != null && !jefeContadorCurpNew.equals(jefeContadorCurpOld)) {
                jefeContadorCurpNew.getContadoresList().add(contadores);
                jefeContadorCurpNew = em.merge(jefeContadorCurpNew);
            }
            for (Contadores contadoresListNewContadores : contadoresListNew) {
                if (!contadoresListOld.contains(contadoresListNewContadores)) {
                    Contadores oldJefeContadorCurpOfContadoresListNewContadores = contadoresListNewContadores.getJefeContadorCurp();
                    contadoresListNewContadores.setJefeContadorCurp(contadores);
                    contadoresListNewContadores = em.merge(contadoresListNewContadores);
                    if (oldJefeContadorCurpOfContadoresListNewContadores != null && !oldJefeContadorCurpOfContadoresListNewContadores.equals(contadores)) {
                        oldJefeContadorCurpOfContadoresListNewContadores.getContadoresList().remove(contadoresListNewContadores);
                        oldJefeContadorCurpOfContadoresListNewContadores = em.merge(oldJefeContadorCurpOfContadoresListNewContadores);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = contadores.getCurpContador();
                if (findContadores(id) == null) {
                    throw new NonexistentEntityException("The contadores with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(String id) throws IllegalOrphanException, NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Contadores contadores;
            try {
                contadores = em.getReference(Contadores.class, id);
                contadores.getCurpContador();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The contadores with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Contadores> contadoresListOrphanCheck = contadores.getContadoresList();
            for (Contadores contadoresListOrphanCheckContadores : contadoresListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Contadores (" + contadores + ") cannot be destroyed since the Contadores " + contadoresListOrphanCheckContadores + " in its contadoresList field has a non-nullable jefeContadorCurp field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            Contadores jefeContadorCurp = contadores.getJefeContadorCurp();
            if (jefeContadorCurp != null) {
                jefeContadorCurp.getContadoresList().remove(contadores);
                jefeContadorCurp = em.merge(jefeContadorCurp);
            }
            em.remove(contadores);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Contadores> findContadoresEntities() {
        return findContadoresEntities(true, -1, -1);
    }

    public List<Contadores> findContadoresEntities(int maxResults, int firstResult) {
        return findContadoresEntities(false, maxResults, firstResult);
    }

    private List<Contadores> findContadoresEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Contadores.class));
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

    public Contadores findContadores(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Contadores.class, id);
        } finally {
            em.close();
        }
    }

    public int getContadoresCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Contadores> rt = cq.from(Contadores.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
