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
import Entidades.Empleados;
import Entidades.Sucursales;
import Entidades.TelefonosSucursales;
import java.util.LinkedList;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Luis
 */
@ManagedBean
@RequestScoped
public class SucursalesJpaController implements Serializable {

    public SucursalesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public SucursalesJpaController() {
        this.emf = Persistence.createEntityManagerFactory("BD-Practica12-V2PU");
    }
    
    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Sucursales sucursales) throws PreexistingEntityException, Exception {
        if (sucursales.getMostradoresList() == null) {
            sucursales.setMostradoresList(new ArrayList<Mostradores>());
        }
        if (sucursales.getEmpleadosList() == null) {
            sucursales.setEmpleadosList(new ArrayList<Empleados>());
        }
        if (sucursales.getTelefonosSucursalesList() == null) {
            sucursales.setTelefonosSucursalesList(new ArrayList<TelefonosSucursales>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<Mostradores> attachedMostradoresList = new ArrayList<Mostradores>();
            for (Mostradores mostradoresListMostradoresToAttach : sucursales.getMostradoresList()) {
                mostradoresListMostradoresToAttach = em.getReference(mostradoresListMostradoresToAttach.getClass(), mostradoresListMostradoresToAttach.getCurp());
                attachedMostradoresList.add(mostradoresListMostradoresToAttach);
            }
            sucursales.setMostradoresList(attachedMostradoresList);
            List<Empleados> attachedEmpleadosList = new ArrayList<Empleados>();
            for (Empleados empleadosListEmpleadosToAttach : sucursales.getEmpleadosList()) {
                empleadosListEmpleadosToAttach = em.getReference(empleadosListEmpleadosToAttach.getClass(), empleadosListEmpleadosToAttach.getCurp());
                attachedEmpleadosList.add(empleadosListEmpleadosToAttach);
            }
            sucursales.setEmpleadosList(attachedEmpleadosList);
            List<TelefonosSucursales> attachedTelefonosSucursalesList = new ArrayList<TelefonosSucursales>();
            for (TelefonosSucursales telefonosSucursalesListTelefonosSucursalesToAttach : sucursales.getTelefonosSucursalesList()) {
                telefonosSucursalesListTelefonosSucursalesToAttach = em.getReference(telefonosSucursalesListTelefonosSucursalesToAttach.getClass(), telefonosSucursalesListTelefonosSucursalesToAttach.getTelefonosSucursalesPK());
                attachedTelefonosSucursalesList.add(telefonosSucursalesListTelefonosSucursalesToAttach);
            }
            sucursales.setTelefonosSucursalesList(attachedTelefonosSucursalesList);
            em.persist(sucursales);
            for (Mostradores mostradoresListMostradores : sucursales.getMostradoresList()) {
                mostradoresListMostradores.getSucursalesList().add(sucursales);
                mostradoresListMostradores = em.merge(mostradoresListMostradores);
            }
            for (Empleados empleadosListEmpleados : sucursales.getEmpleadosList()) {
                empleadosListEmpleados.getSucursalesList().add(sucursales);
                empleadosListEmpleados = em.merge(empleadosListEmpleados);
            }
            for (TelefonosSucursales telefonosSucursalesListTelefonosSucursales : sucursales.getTelefonosSucursalesList()) {
                Sucursales oldSucursalesOfTelefonosSucursalesListTelefonosSucursales = telefonosSucursalesListTelefonosSucursales.getSucursales();
                telefonosSucursalesListTelefonosSucursales.setSucursales(sucursales);
                telefonosSucursalesListTelefonosSucursales = em.merge(telefonosSucursalesListTelefonosSucursales);
                if (oldSucursalesOfTelefonosSucursalesListTelefonosSucursales != null) {
                    oldSucursalesOfTelefonosSucursalesListTelefonosSucursales.getTelefonosSucursalesList().remove(telefonosSucursalesListTelefonosSucursales);
                    oldSucursalesOfTelefonosSucursalesListTelefonosSucursales = em.merge(oldSucursalesOfTelefonosSucursalesListTelefonosSucursales);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findSucursales(sucursales.getIdentificador()) != null) {
                throw new PreexistingEntityException("Sucursales " + sucursales + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Sucursales sucursales) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Sucursales persistentSucursales = em.find(Sucursales.class, sucursales.getIdentificador());
            List<Mostradores> mostradoresListOld = persistentSucursales.getMostradoresList();
            List<Mostradores> mostradoresListNew = sucursales.getMostradoresList();
            List<Empleados> empleadosListOld = persistentSucursales.getEmpleadosList();
            List<Empleados> empleadosListNew = sucursales.getEmpleadosList();
            List<TelefonosSucursales> telefonosSucursalesListOld = persistentSucursales.getTelefonosSucursalesList();
            List<TelefonosSucursales> telefonosSucursalesListNew = sucursales.getTelefonosSucursalesList();
            List<String> illegalOrphanMessages = null;
            for (TelefonosSucursales telefonosSucursalesListOldTelefonosSucursales : telefonosSucursalesListOld) {
                if (!telefonosSucursalesListNew.contains(telefonosSucursalesListOldTelefonosSucursales)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain TelefonosSucursales " + telefonosSucursalesListOldTelefonosSucursales + " since its sucursales field is not nullable.");
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
            sucursales.setMostradoresList(mostradoresListNew);
            List<Empleados> attachedEmpleadosListNew = new ArrayList<Empleados>();
            for (Empleados empleadosListNewEmpleadosToAttach : empleadosListNew) {
                empleadosListNewEmpleadosToAttach = em.getReference(empleadosListNewEmpleadosToAttach.getClass(), empleadosListNewEmpleadosToAttach.getCurp());
                attachedEmpleadosListNew.add(empleadosListNewEmpleadosToAttach);
            }
            empleadosListNew = attachedEmpleadosListNew;
            sucursales.setEmpleadosList(empleadosListNew);
            List<TelefonosSucursales> attachedTelefonosSucursalesListNew = new ArrayList<TelefonosSucursales>();
            for (TelefonosSucursales telefonosSucursalesListNewTelefonosSucursalesToAttach : telefonosSucursalesListNew) {
                telefonosSucursalesListNewTelefonosSucursalesToAttach = em.getReference(telefonosSucursalesListNewTelefonosSucursalesToAttach.getClass(), telefonosSucursalesListNewTelefonosSucursalesToAttach.getTelefonosSucursalesPK());
                attachedTelefonosSucursalesListNew.add(telefonosSucursalesListNewTelefonosSucursalesToAttach);
            }
            telefonosSucursalesListNew = attachedTelefonosSucursalesListNew;
            sucursales.setTelefonosSucursalesList(telefonosSucursalesListNew);
            sucursales = em.merge(sucursales);
            for (Mostradores mostradoresListOldMostradores : mostradoresListOld) {
                if (!mostradoresListNew.contains(mostradoresListOldMostradores)) {
                    mostradoresListOldMostradores.getSucursalesList().remove(sucursales);
                    mostradoresListOldMostradores = em.merge(mostradoresListOldMostradores);
                }
            }
            for (Mostradores mostradoresListNewMostradores : mostradoresListNew) {
                if (!mostradoresListOld.contains(mostradoresListNewMostradores)) {
                    mostradoresListNewMostradores.getSucursalesList().add(sucursales);
                    mostradoresListNewMostradores = em.merge(mostradoresListNewMostradores);
                }
            }
            for (Empleados empleadosListOldEmpleados : empleadosListOld) {
                if (!empleadosListNew.contains(empleadosListOldEmpleados)) {
                    empleadosListOldEmpleados.getSucursalesList().remove(sucursales);
                    empleadosListOldEmpleados = em.merge(empleadosListOldEmpleados);
                }
            }
            for (Empleados empleadosListNewEmpleados : empleadosListNew) {
                if (!empleadosListOld.contains(empleadosListNewEmpleados)) {
                    empleadosListNewEmpleados.getSucursalesList().add(sucursales);
                    empleadosListNewEmpleados = em.merge(empleadosListNewEmpleados);
                }
            }
            for (TelefonosSucursales telefonosSucursalesListNewTelefonosSucursales : telefonosSucursalesListNew) {
                if (!telefonosSucursalesListOld.contains(telefonosSucursalesListNewTelefonosSucursales)) {
                    Sucursales oldSucursalesOfTelefonosSucursalesListNewTelefonosSucursales = telefonosSucursalesListNewTelefonosSucursales.getSucursales();
                    telefonosSucursalesListNewTelefonosSucursales.setSucursales(sucursales);
                    telefonosSucursalesListNewTelefonosSucursales = em.merge(telefonosSucursalesListNewTelefonosSucursales);
                    if (oldSucursalesOfTelefonosSucursalesListNewTelefonosSucursales != null && !oldSucursalesOfTelefonosSucursalesListNewTelefonosSucursales.equals(sucursales)) {
                        oldSucursalesOfTelefonosSucursalesListNewTelefonosSucursales.getTelefonosSucursalesList().remove(telefonosSucursalesListNewTelefonosSucursales);
                        oldSucursalesOfTelefonosSucursalesListNewTelefonosSucursales = em.merge(oldSucursalesOfTelefonosSucursalesListNewTelefonosSucursales);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = sucursales.getIdentificador();
                if (findSucursales(id) == null) {
                    throw new NonexistentEntityException("The sucursales with id " + id + " no longer exists.");
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
            Sucursales sucursales;
            try {
                sucursales = em.getReference(Sucursales.class, id);
                sucursales.getIdentificador();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The sucursales with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<TelefonosSucursales> telefonosSucursalesListOrphanCheck = sucursales.getTelefonosSucursalesList();
            for (TelefonosSucursales telefonosSucursalesListOrphanCheckTelefonosSucursales : telefonosSucursalesListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Sucursales (" + sucursales + ") cannot be destroyed since the TelefonosSucursales " + telefonosSucursalesListOrphanCheckTelefonosSucursales + " in its telefonosSucursalesList field has a non-nullable sucursales field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Mostradores> mostradoresList = sucursales.getMostradoresList();
            for (Mostradores mostradoresListMostradores : mostradoresList) {
                mostradoresListMostradores.getSucursalesList().remove(sucursales);
                mostradoresListMostradores = em.merge(mostradoresListMostradores);
            }
            List<Empleados> empleadosList = sucursales.getEmpleadosList();
            for (Empleados empleadosListEmpleados : empleadosList) {
                empleadosListEmpleados.getSucursalesList().remove(sucursales);
                empleadosListEmpleados = em.merge(empleadosListEmpleados);
            }
            em.remove(sucursales);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Sucursales> findSucursalesEntities() {
        return findSucursalesEntities(true, -1, -1);
    }

    public List<Sucursales> findSucursalesEntities(int maxResults, int firstResult) {
        return findSucursalesEntities(false, maxResults, firstResult);
    }

    private List<Sucursales> findSucursalesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Sucursales.class));
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

    public Sucursales findSucursales(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Sucursales.class, id);
        } finally {
            em.close();
        }
    }

    public int getSucursalesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Sucursales> rt = cq.from(Sucursales.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
    /*
    * Sucursales que cuenten con especialidades.
    */
    public List<Sucursales> getSucursalesEspecialidades(){
        EntityManager em = getEntityManager();
        List<Object[]> results;
        results = em.createNativeQuery("select identificador\n" +
"from app.Farmacia.ESPECIALIDADES join app.Farmacia.TRABAJAR on ESPECIALIDADES.curp = TRABAJAR.curp\n" +
"order by identificador desc;").getResultList();
        List<Sucursales> sucursales = new LinkedList<>();
        for (int i = 0; i < 1; i++) {
            Sucursales nuevo = new Sucursales();            
            nuevo.setIdentificador(Integer.parseInt("1"));                       
      //nuevo.setCurp("151");
            //nuevo.setNombre("2541515");
            //nuevo.setPaterno("sdasdasd");
            //nuevo.setMaterno("sd4sad5as");
            //nuevo.setNumMotor((String) results.get(i)[0]);
            //nuevo.setAnio(null);
            //nuevo.setMarca((String) results.get(i)[2]);
            //nuevo.setModelo((String) results.get(i)[3]);
            //nuevo.setNumCilindros((short) results.get(i)[4]);
            //nuevo.setLlantaRefaccion((String) results.get(i)[5]);
            //nuevo.setTipo((String) results.get(i)[6]);
            //nuevo.setEstaActivo((String) results.get(i)[7]);
            //nuevo.setFechaActivo(null);
            //autos.add(nuevo);
            sucursales.add(nuevo);
        }
        return sucursales;
    }
    
}
