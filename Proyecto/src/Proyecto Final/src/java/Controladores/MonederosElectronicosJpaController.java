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
import Entidades.Clientes;
import Entidades.MonederosElectronicos;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class MonederosElectronicosJpaController implements Serializable {

    public MonederosElectronicosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(MonederosElectronicos monederosElectronicos) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Clientes curp = monederosElectronicos.getCurp();
            if (curp != null) {
                curp = em.getReference(curp.getClass(), curp.getCurp());
                monederosElectronicos.setCurp(curp);
            }
            em.persist(monederosElectronicos);
            if (curp != null) {
                curp.getMonederosElectronicosList().add(monederosElectronicos);
                curp = em.merge(curp);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findMonederosElectronicos(monederosElectronicos.getIdentificador()) != null) {
                throw new PreexistingEntityException("MonederosElectronicos " + monederosElectronicos + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(MonederosElectronicos monederosElectronicos) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            MonederosElectronicos persistentMonederosElectronicos = em.find(MonederosElectronicos.class, monederosElectronicos.getIdentificador());
            Clientes curpOld = persistentMonederosElectronicos.getCurp();
            Clientes curpNew = monederosElectronicos.getCurp();
            if (curpNew != null) {
                curpNew = em.getReference(curpNew.getClass(), curpNew.getCurp());
                monederosElectronicos.setCurp(curpNew);
            }
            monederosElectronicos = em.merge(monederosElectronicos);
            if (curpOld != null && !curpOld.equals(curpNew)) {
                curpOld.getMonederosElectronicosList().remove(monederosElectronicos);
                curpOld = em.merge(curpOld);
            }
            if (curpNew != null && !curpNew.equals(curpOld)) {
                curpNew.getMonederosElectronicosList().add(monederosElectronicos);
                curpNew = em.merge(curpNew);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = monederosElectronicos.getIdentificador();
                if (findMonederosElectronicos(id) == null) {
                    throw new NonexistentEntityException("The monederosElectronicos with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            MonederosElectronicos monederosElectronicos;
            try {
                monederosElectronicos = em.getReference(MonederosElectronicos.class, id);
                monederosElectronicos.getIdentificador();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The monederosElectronicos with id " + id + " no longer exists.", enfe);
            }
            Clientes curp = monederosElectronicos.getCurp();
            if (curp != null) {
                curp.getMonederosElectronicosList().remove(monederosElectronicos);
                curp = em.merge(curp);
            }
            em.remove(monederosElectronicos);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<MonederosElectronicos> findMonederosElectronicosEntities() {
        return findMonederosElectronicosEntities(true, -1, -1);
    }

    public List<MonederosElectronicos> findMonederosElectronicosEntities(int maxResults, int firstResult) {
        return findMonederosElectronicosEntities(false, maxResults, firstResult);
    }

    private List<MonederosElectronicos> findMonederosElectronicosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(MonederosElectronicos.class));
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

    public MonederosElectronicos findMonederosElectronicos(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(MonederosElectronicos.class, id);
        } finally {
            em.close();
        }
    }

    public int getMonederosElectronicosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<MonederosElectronicos> rt = cq.from(MonederosElectronicos.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
