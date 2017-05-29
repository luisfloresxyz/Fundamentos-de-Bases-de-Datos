/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Duenios;
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
@Table(name = "DUENIOS", schema="Agencia")
@ManagedBean
@RequestScoped
public class DueniosJpaController implements Serializable {

    public DueniosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

      public DueniosJpaController() {
       this.emf = Persistence.createEntityManagerFactory("BD-Practica12-V2PU");        
    }
    
    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Duenios duenios) throws PreexistingEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(duenios);
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findDuenios(duenios.getCurp()) != null) {
                throw new PreexistingEntityException("Duenios " + duenios + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Duenios duenios) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            duenios = em.merge(duenios);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = duenios.getCurp();
                if (findDuenios(id) == null) {
                    throw new NonexistentEntityException("The duenios with id " + id + " no longer exists.");
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
            Duenios duenios;
            try {
                duenios = em.getReference(Duenios.class, id);
                duenios.getCurp();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The duenios with id " + id + " no longer exists.", enfe);
            }
            em.remove(duenios);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Duenios> findDueniosEntities() {
        return findDueniosEntities(true, -1, -1);
    }

    public List<Duenios> findDueniosEntities(int maxResults, int firstResult) {
        return findDueniosEntities(false, maxResults, firstResult);
    }

    private List<Duenios> findDueniosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Duenios.class));
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

    public Duenios findDuenios(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Duenios.class, id);
        } finally {
            em.close();
        }
    }

    public int getDueniosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Duenios> rt = cq.from(Duenios.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
    /**
     * 4. Conocer los dueños de los vehículos con mas de diez años de antigüedad.
     * @return 
     */
    public List<Personas> getDueniosAutos10(){
        EntityManager em = getEntityManager();                    
        List<Object[]> results;              
        results = em.createNativeQuery("SELECT p.curp, p.nombre, p.paterno, p.materno\n" +
"	FROM APP.AGENCIA.DUENIOS d INNER JOIN APP.AGENCIA.TAXIS t ON d.curp = t.curp_duenio\n" +
"	INNER JOIN\n" +
"	(SELECT *\n" +
"	FROM APP.AGENCIA.AUTOMOVILES\n" +
"	WHERE FLOOR(\n" +
"	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -\n" +
"	CAST(CONVERT(CHAR(8), anio, 112) AS INT))/10000) > 10) aut ON aut.num_motor = t.num_motor\n" +
"	INNER JOIN APP.AGENCIA.PERSONAS p ON p.curp = t.curp_duenio").getResultList();
        List<Personas> personasLista = new LinkedList<>();
        for(int i = 0; i < results.size() - 1; i++){
            Personas nueva = new Personas();
            nueva.setCurp((String) results.get(i)[0]);
            nueva.setNombre((String) results.get(i)[1]);
            nueva.setMaterno((String) results.get(i)[2]);
            nueva.setPaterno((String) results.get(i)[3]);
            nueva.setColonia(null);
            nueva.setCiudad(null);
            nueva.setCallePrincipal(null);            
            nueva.setDelegacionMunicipio(null);
            nueva.setEstado(null);            
            nueva.setCalle1(null);
            nueva.setCalle2(null);
            nueva.setReferencia(null);
            nueva.setNumExterior(null);
            nueva.setNumInterior(null);
            nueva.setCodigoPostal(null);
            nueva.setFechaNacimiento(null);
            personasLista.add(nueva);
        }        
        return personasLista;
    }               
}
