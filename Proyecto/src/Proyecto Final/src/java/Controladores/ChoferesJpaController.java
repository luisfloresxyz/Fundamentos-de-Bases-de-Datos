/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.IllegalOrphanException;
import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Choferes;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Empleados;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class ChoferesJpaController implements Serializable {

    public ChoferesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Choferes choferes) throws IllegalOrphanException, PreexistingEntityException, Exception {
        List<String> illegalOrphanMessages = null;
        Empleados empleadosOrphanCheck = choferes.getEmpleados();
        if (empleadosOrphanCheck != null) {
            Choferes oldChoferesOfEmpleados = empleadosOrphanCheck.getChoferes();
            if (oldChoferesOfEmpleados != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("The Empleados " + empleadosOrphanCheck + " already has an item of type Choferes whose empleados column cannot be null. Please make another selection for the empleados field.");
            }
        }
        if (illegalOrphanMessages != null) {
            throw new IllegalOrphanException(illegalOrphanMessages);
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Empleados empleados = choferes.getEmpleados();
            if (empleados != null) {
                empleados = em.getReference(empleados.getClass(), empleados.getCurp());
                choferes.setEmpleados(empleados);
            }
            em.persist(choferes);
            if (empleados != null) {
                empleados.setChoferes(choferes);
                empleados = em.merge(empleados);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findChoferes(choferes.getCurp()) != null) {
                throw new PreexistingEntityException("Choferes " + choferes + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Choferes choferes) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Choferes persistentChoferes = em.find(Choferes.class, choferes.getCurp());
            Empleados empleadosOld = persistentChoferes.getEmpleados();
            Empleados empleadosNew = choferes.getEmpleados();
            List<String> illegalOrphanMessages = null;
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                Choferes oldChoferesOfEmpleados = empleadosNew.getChoferes();
                if (oldChoferesOfEmpleados != null) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("The Empleados " + empleadosNew + " already has an item of type Choferes whose empleados column cannot be null. Please make another selection for the empleados field.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (empleadosNew != null) {
                empleadosNew = em.getReference(empleadosNew.getClass(), empleadosNew.getCurp());
                choferes.setEmpleados(empleadosNew);
            }
            choferes = em.merge(choferes);
            if (empleadosOld != null && !empleadosOld.equals(empleadosNew)) {
                empleadosOld.setChoferes(null);
                empleadosOld = em.merge(empleadosOld);
            }
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                empleadosNew.setChoferes(choferes);
                empleadosNew = em.merge(empleadosNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = choferes.getCurp();
                if (findChoferes(id) == null) {
                    throw new NonexistentEntityException("The choferes with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(String id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Choferes choferes;
            try {
                choferes = em.getReference(Choferes.class, id);
                choferes.getCurp();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The choferes with id " + id + " no longer exists.", enfe);
            }
            Empleados empleados = choferes.getEmpleados();
            if (empleados != null) {
                empleados.setChoferes(null);
                empleados = em.merge(empleados);
            }
            em.remove(choferes);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Choferes> findChoferesEntities() {
        return findChoferesEntities(true, -1, -1);
    }

    public List<Choferes> findChoferesEntities(int maxResults, int firstResult) {
        return findChoferesEntities(false, maxResults, firstResult);
    }

    private List<Choferes> findChoferesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Choferes.class));
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

    public Choferes findChoferes(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Choferes.class, id);
        } finally {
            em.close();
        }
    }

    public int getChoferesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Choferes> rt = cq.from(Choferes.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
