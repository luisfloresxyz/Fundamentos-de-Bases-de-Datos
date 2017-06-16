/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.IllegalOrphanException;
import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Automoviles;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Viajes;
import java.util.ArrayList;
import java.util.List;
import Entidades.Multas;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import java.util.Date;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.persistence.Persistence;
import javax.persistence.Table;

/**
 *
 * @author Luis
 */
@Table(name = "AUTOMOVILES", schema="Agencia")
@ManagedBean
@RequestScoped
public class AutomovilesJpaController implements Serializable {

    public AutomovilesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public AutomovilesJpaController() {
        this.emf = Persistence.createEntityManagerFactory("BD-Practica12-V2PU");
    }

    public void create(Automoviles automoviles) throws PreexistingEntityException, Exception {
        if (automoviles.getViajesList() == null) {
            automoviles.setViajesList(new ArrayList<Viajes>());
        }
        if (automoviles.getMultasList() == null) {
            automoviles.setMultasList(new ArrayList<Multas>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<Viajes> attachedViajesList = new ArrayList<Viajes>();
            for (Viajes viajesListViajesToAttach : automoviles.getViajesList()) {
                viajesListViajesToAttach = em.getReference(viajesListViajesToAttach.getClass(), viajesListViajesToAttach.getIdViaje());
                attachedViajesList.add(viajesListViajesToAttach);
            }
            automoviles.setViajesList(attachedViajesList);
            List<Multas> attachedMultasList = new ArrayList<Multas>();
            for (Multas multasListMultasToAttach : automoviles.getMultasList()) {
                multasListMultasToAttach = em.getReference(multasListMultasToAttach.getClass(), multasListMultasToAttach.getIdMulta());
                attachedMultasList.add(multasListMultasToAttach);
            }
            automoviles.setMultasList(attachedMultasList);
            em.persist(automoviles);
            for (Viajes viajesListViajes : automoviles.getViajesList()) {
                viajesListViajes.getAutomovilesList().add(automoviles);
                viajesListViajes = em.merge(viajesListViajes);
            }
            for (Multas multasListMultas : automoviles.getMultasList()) {
                Automoviles oldNumMotorOfMultasListMultas = multasListMultas.getNumMotor();
                multasListMultas.setNumMotor(automoviles);
                multasListMultas = em.merge(multasListMultas);
                if (oldNumMotorOfMultasListMultas != null) {
                    oldNumMotorOfMultasListMultas.getMultasList().remove(multasListMultas);
                    oldNumMotorOfMultasListMultas = em.merge(oldNumMotorOfMultasListMultas);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findAutomoviles(automoviles.getNumMotor()) != null) {
                throw new PreexistingEntityException("Automoviles " + automoviles + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Automoviles automoviles) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Automoviles persistentAutomoviles = em.find(Automoviles.class, automoviles.getNumMotor());
            List<Viajes> viajesListOld = persistentAutomoviles.getViajesList();
            List<Viajes> viajesListNew = automoviles.getViajesList();
            List<Multas> multasListOld = persistentAutomoviles.getMultasList();
            List<Multas> multasListNew = automoviles.getMultasList();
            List<String> illegalOrphanMessages = null;
            for (Multas multasListOldMultas : multasListOld) {
                if (!multasListNew.contains(multasListOldMultas)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Multas " + multasListOldMultas + " since its numMotor field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Viajes> attachedViajesListNew = new ArrayList<Viajes>();
            for (Viajes viajesListNewViajesToAttach : viajesListNew) {
                viajesListNewViajesToAttach = em.getReference(viajesListNewViajesToAttach.getClass(), viajesListNewViajesToAttach.getIdViaje());
                attachedViajesListNew.add(viajesListNewViajesToAttach);
            }
            viajesListNew = attachedViajesListNew;
            automoviles.setViajesList(viajesListNew);
            List<Multas> attachedMultasListNew = new ArrayList<Multas>();
            for (Multas multasListNewMultasToAttach : multasListNew) {
                multasListNewMultasToAttach = em.getReference(multasListNewMultasToAttach.getClass(), multasListNewMultasToAttach.getIdMulta());
                attachedMultasListNew.add(multasListNewMultasToAttach);
            }
            multasListNew = attachedMultasListNew;
            automoviles.setMultasList(multasListNew);
            automoviles = em.merge(automoviles);
            for (Viajes viajesListOldViajes : viajesListOld) {
                if (!viajesListNew.contains(viajesListOldViajes)) {
                    viajesListOldViajes.getAutomovilesList().remove(automoviles);
                    viajesListOldViajes = em.merge(viajesListOldViajes);
                }
            }
            for (Viajes viajesListNewViajes : viajesListNew) {
                if (!viajesListOld.contains(viajesListNewViajes)) {
                    viajesListNewViajes.getAutomovilesList().add(automoviles);
                    viajesListNewViajes = em.merge(viajesListNewViajes);
                }
            }
            for (Multas multasListNewMultas : multasListNew) {
                if (!multasListOld.contains(multasListNewMultas)) {
                    Automoviles oldNumMotorOfMultasListNewMultas = multasListNewMultas.getNumMotor();
                    multasListNewMultas.setNumMotor(automoviles);
                    multasListNewMultas = em.merge(multasListNewMultas);
                    if (oldNumMotorOfMultasListNewMultas != null && !oldNumMotorOfMultasListNewMultas.equals(automoviles)) {
                        oldNumMotorOfMultasListNewMultas.getMultasList().remove(multasListNewMultas);
                        oldNumMotorOfMultasListNewMultas = em.merge(oldNumMotorOfMultasListNewMultas);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = automoviles.getNumMotor();
                if (findAutomoviles(id) == null) {
                    throw new NonexistentEntityException("The automoviles with id " + id + " no longer exists.");
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
            Automoviles automoviles;
            try {
                automoviles = em.getReference(Automoviles.class, id);
                automoviles.getNumMotor();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The automoviles with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Multas> multasListOrphanCheck = automoviles.getMultasList();
            for (Multas multasListOrphanCheckMultas : multasListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Automoviles (" + automoviles + ") cannot be destroyed since the Multas " + multasListOrphanCheckMultas + " in its multasList field has a non-nullable numMotor field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Viajes> viajesList = automoviles.getViajesList();
            for (Viajes viajesListViajes : viajesList) {
                viajesListViajes.getAutomovilesList().remove(automoviles);
                viajesListViajes = em.merge(viajesListViajes);
            }
            em.remove(automoviles);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Automoviles> findAutomovilesEntities() {
        return findAutomovilesEntities(true, -1, -1);
    }

    public List<Automoviles> findAutomovilesEntities(int maxResults, int firstResult) {
        return findAutomovilesEntities(false, maxResults, firstResult);
    }

    private List<Automoviles> findAutomovilesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Automoviles.class));
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

    public Automoviles findAutomoviles(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Automoviles.class, id);
        } finally {
            em.close();
        }
    }

    public int getAutomovilesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Automoviles> rt = cq.from(Automoviles.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
    /**
     * Conocer los vehículos con mas de diez años de antigüedad.
     *
     * @return
     * @throws java.text.ParseException
     */
    public List<Automoviles> getMayores10() throws ParseException {
        EntityManager em = getEntityManager();
        List<Object[]> results;
        results = em.createNativeQuery("SELECT *\n" +
"	FROM APP.AGENCIA.AUTOMOVILES\n" +
"	WHERE FLOOR(\n" +
"	(CAST(CONVERT(CHAR(8), GETDATE(), 112) AS INT) -\n" +
"	CAST(CONVERT(CHAR(8), anio, 112) AS INT))/10000) > 10").getResultList();
        List<Automoviles> autos = new LinkedList<>();
        for (int i = 0; i < results.size(); i++) {
            Automoviles nuevo = new Automoviles();            
            nuevo.setNumMotor((String) results.get(i)[0]);
            nuevo.setAnio(null);
            nuevo.setMarca((String) results.get(i)[2]);
            nuevo.setModelo((String) results.get(i)[3]);
            nuevo.setNumCilindros((short) results.get(i)[4]);
            nuevo.setLlantaRefaccion((String) results.get(i)[5]);
            nuevo.setTipo((String) results.get(i)[6]);
            nuevo.setEstaActivo((String) results.get(i)[7]);
            nuevo.setFechaActivo(null);
            autos.add(nuevo);
        }
        return autos;
    }

}
