/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Choferes_mayores_25;
import Entidades.Personas;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.Table;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Luis
 */
@Table(name = "CHOFERES_MAYORES_25", schema = "Agencia")
@ManagedBean
@RequestScoped
public class Choferes_mayores_25JpaController implements Serializable {

    public Choferes_mayores_25JpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public Choferes_mayores_25JpaController() {
        this.emf = Persistence.createEntityManagerFactory("BD-Practica12-V2PU");
    }

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Choferes_mayores_25 choferes_mayores_25) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(choferes_mayores_25);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findChoferes_mayores_25(choferes_mayores_25.getNombre()) != null) {
                throw new PreexistingEntityException("Choferes_mayores_25 " + choferes_mayores_25 + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Choferes_mayores_25 choferes_mayores_25) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            choferes_mayores_25 = em.merge(choferes_mayores_25);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = choferes_mayores_25.getNombre();
                if (findChoferes_mayores_25(id) == null) {
                    throw new NonexistentEntityException("The choferes_mayores_25 with id " + id + " no longer exists.");
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
            Choferes_mayores_25 choferes_mayores_25;
            try {
                choferes_mayores_25 = em.getReference(Choferes_mayores_25.class, id);
                choferes_mayores_25.getNombre();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The choferes_mayores_25 with id " + id + " no longer exists.", enfe);
            }
            em.remove(choferes_mayores_25);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Choferes_mayores_25> findChoferes_mayores_25Entities() {
        return findChoferes_mayores_25Entities(true, -1, -1);
    }

    public List<Choferes_mayores_25> findChoferes_mayores_25Entities(int maxResults, int firstResult) {
        return findChoferes_mayores_25Entities(false, maxResults, firstResult);
    }

    private List<Choferes_mayores_25> findChoferes_mayores_25Entities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Choferes_mayores_25.class));
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

    public Choferes_mayores_25 findChoferes_mayores_25(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Choferes_mayores_25.class, id);
        } finally {
            em.close();
        }
    }

    public int getChoferes_mayores_25Count() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Choferes_mayores_25> rt = cq.from(Choferes_mayores_25.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }

    public List<Choferes_mayores_25> getChoferes() {
        EntityManager em = getEntityManager();
        List<String> results;
        results = em.createNativeQuery("SELECT p.nombre\n" +
"	FROM APP.AGENCIA.PERSONAS p INNER JOIN APP.AGENCIA.CHOFERES c ON p.curp = c.curp\n" +
"	WHERE FLOOR(\n" +
"	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -\n" +
"	CAST(CONVERT(CHAR(8), p.fecha_nacimiento, 112) AS INT))/10000) > 25").getResultList();
        List<Choferes_mayores_25> choferes = new LinkedList<>();
        for (int i = 0; i < results.size(); i++) {
            Choferes_mayores_25 nueva = new Choferes_mayores_25();
            nueva.setNombre(results.get(i));
            choferes.add(nueva);
        }
        return choferes;
    }
}
