/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Choferes;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Table;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Luis
 */
@Table(name = "CHOFERES", schema="Agencia")
@ManagedBean
@RequestScoped
public class ChoferesJpaController implements Serializable {

    public ChoferesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Choferes choferes) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(choferes);
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

    public void edit(Choferes choferes) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            choferes = em.merge(choferes);
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
    
    public List<String> getNombreMayor25() throws Exception{
        //EntityManager em = getEntityManager();
        //try{
          //  Query q = em.createNamedQuery("SELECT p.nombre FROM APP.AGENCIA.PERSONAS p INNER JOIN APP.AGENCIA.CHOFERES c ON p.curp = c.curp WHERE FLOOR((CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) - CAST(CONVERT(CHAR(8), p.fecha_nacimiento, 112) AS INT))/10000) > 25;");
        //    return q.getResultList();
        //}finally{
        //    em.close();
        //}
        EntityManager em = getEntityManager();                    
        List<String> results = em.createQuery("SELECT p.nombre FROM Personas p INNER JOIN Choferes c ON p.curp = c.curp").getResultList();              
        return results;
        
        
        //EntityManager em = getEntityManager();
        //try {
        //    CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
        //    cq.select(cq.from(Choferes.class));
        //    Query q = em.createQuery(cq);
        //    if (!true) {
        //        q.setMaxResults(-1);
        //        q.setFirstResult(-1);
        //    }
        //    return q.getResultList();
        //} finally {
        //    em.close();
        //}
    }
    

    
}
