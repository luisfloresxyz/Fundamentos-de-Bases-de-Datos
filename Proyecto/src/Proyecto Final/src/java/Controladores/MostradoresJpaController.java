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
import Entidades.Empleados;
import Entidades.Medicamentos;
import Entidades.Mostradores;
import java.util.ArrayList;
import java.util.List;
import Entidades.Sucursales;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class MostradoresJpaController implements Serializable {

    public MostradoresJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Mostradores mostradores) throws IllegalOrphanException, PreexistingEntityException, Exception {
        if (mostradores.getMedicamentosList() == null) {
            mostradores.setMedicamentosList(new ArrayList<Medicamentos>());
        }
        if (mostradores.getSucursalesList() == null) {
            mostradores.setSucursalesList(new ArrayList<Sucursales>());
        }
        List<String> illegalOrphanMessages = null;
        Empleados empleadosOrphanCheck = mostradores.getEmpleados();
        if (empleadosOrphanCheck != null) {
            Mostradores oldMostradoresOfEmpleados = empleadosOrphanCheck.getMostradores();
            if (oldMostradoresOfEmpleados != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("The Empleados " + empleadosOrphanCheck + " already has an item of type Mostradores whose empleados column cannot be null. Please make another selection for the empleados field.");
            }
        }
        if (illegalOrphanMessages != null) {
            throw new IllegalOrphanException(illegalOrphanMessages);
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Empleados empleados = mostradores.getEmpleados();
            if (empleados != null) {
                empleados = em.getReference(empleados.getClass(), empleados.getCurp());
                mostradores.setEmpleados(empleados);
            }
            List<Medicamentos> attachedMedicamentosList = new ArrayList<Medicamentos>();
            for (Medicamentos medicamentosListMedicamentosToAttach : mostradores.getMedicamentosList()) {
                medicamentosListMedicamentosToAttach = em.getReference(medicamentosListMedicamentosToAttach.getClass(), medicamentosListMedicamentosToAttach.getSku());
                attachedMedicamentosList.add(medicamentosListMedicamentosToAttach);
            }
            mostradores.setMedicamentosList(attachedMedicamentosList);
            List<Sucursales> attachedSucursalesList = new ArrayList<Sucursales>();
            for (Sucursales sucursalesListSucursalesToAttach : mostradores.getSucursalesList()) {
                sucursalesListSucursalesToAttach = em.getReference(sucursalesListSucursalesToAttach.getClass(), sucursalesListSucursalesToAttach.getIdentificador());
                attachedSucursalesList.add(sucursalesListSucursalesToAttach);
            }
            mostradores.setSucursalesList(attachedSucursalesList);
            em.persist(mostradores);
            if (empleados != null) {
                empleados.setMostradores(mostradores);
                empleados = em.merge(empleados);
            }
            for (Medicamentos medicamentosListMedicamentos : mostradores.getMedicamentosList()) {
                medicamentosListMedicamentos.getMostradoresList().add(mostradores);
                medicamentosListMedicamentos = em.merge(medicamentosListMedicamentos);
            }
            for (Sucursales sucursalesListSucursales : mostradores.getSucursalesList()) {
                sucursalesListSucursales.getMostradoresList().add(mostradores);
                sucursalesListSucursales = em.merge(sucursalesListSucursales);
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findMostradores(mostradores.getCurp()) != null) {
                throw new PreexistingEntityException("Mostradores " + mostradores + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Mostradores mostradores) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Mostradores persistentMostradores = em.find(Mostradores.class, mostradores.getCurp());
            Empleados empleadosOld = persistentMostradores.getEmpleados();
            Empleados empleadosNew = mostradores.getEmpleados();
            List<Medicamentos> medicamentosListOld = persistentMostradores.getMedicamentosList();
            List<Medicamentos> medicamentosListNew = mostradores.getMedicamentosList();
            List<Sucursales> sucursalesListOld = persistentMostradores.getSucursalesList();
            List<Sucursales> sucursalesListNew = mostradores.getSucursalesList();
            List<String> illegalOrphanMessages = null;
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                Mostradores oldMostradoresOfEmpleados = empleadosNew.getMostradores();
                if (oldMostradoresOfEmpleados != null) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("The Empleados " + empleadosNew + " already has an item of type Mostradores whose empleados column cannot be null. Please make another selection for the empleados field.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (empleadosNew != null) {
                empleadosNew = em.getReference(empleadosNew.getClass(), empleadosNew.getCurp());
                mostradores.setEmpleados(empleadosNew);
            }
            List<Medicamentos> attachedMedicamentosListNew = new ArrayList<Medicamentos>();
            for (Medicamentos medicamentosListNewMedicamentosToAttach : medicamentosListNew) {
                medicamentosListNewMedicamentosToAttach = em.getReference(medicamentosListNewMedicamentosToAttach.getClass(), medicamentosListNewMedicamentosToAttach.getSku());
                attachedMedicamentosListNew.add(medicamentosListNewMedicamentosToAttach);
            }
            medicamentosListNew = attachedMedicamentosListNew;
            mostradores.setMedicamentosList(medicamentosListNew);
            List<Sucursales> attachedSucursalesListNew = new ArrayList<Sucursales>();
            for (Sucursales sucursalesListNewSucursalesToAttach : sucursalesListNew) {
                sucursalesListNewSucursalesToAttach = em.getReference(sucursalesListNewSucursalesToAttach.getClass(), sucursalesListNewSucursalesToAttach.getIdentificador());
                attachedSucursalesListNew.add(sucursalesListNewSucursalesToAttach);
            }
            sucursalesListNew = attachedSucursalesListNew;
            mostradores.setSucursalesList(sucursalesListNew);
            mostradores = em.merge(mostradores);
            if (empleadosOld != null && !empleadosOld.equals(empleadosNew)) {
                empleadosOld.setMostradores(null);
                empleadosOld = em.merge(empleadosOld);
            }
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                empleadosNew.setMostradores(mostradores);
                empleadosNew = em.merge(empleadosNew);
            }
            for (Medicamentos medicamentosListOldMedicamentos : medicamentosListOld) {
                if (!medicamentosListNew.contains(medicamentosListOldMedicamentos)) {
                    medicamentosListOldMedicamentos.getMostradoresList().remove(mostradores);
                    medicamentosListOldMedicamentos = em.merge(medicamentosListOldMedicamentos);
                }
            }
            for (Medicamentos medicamentosListNewMedicamentos : medicamentosListNew) {
                if (!medicamentosListOld.contains(medicamentosListNewMedicamentos)) {
                    medicamentosListNewMedicamentos.getMostradoresList().add(mostradores);
                    medicamentosListNewMedicamentos = em.merge(medicamentosListNewMedicamentos);
                }
            }
            for (Sucursales sucursalesListOldSucursales : sucursalesListOld) {
                if (!sucursalesListNew.contains(sucursalesListOldSucursales)) {
                    sucursalesListOldSucursales.getMostradoresList().remove(mostradores);
                    sucursalesListOldSucursales = em.merge(sucursalesListOldSucursales);
                }
            }
            for (Sucursales sucursalesListNewSucursales : sucursalesListNew) {
                if (!sucursalesListOld.contains(sucursalesListNewSucursales)) {
                    sucursalesListNewSucursales.getMostradoresList().add(mostradores);
                    sucursalesListNewSucursales = em.merge(sucursalesListNewSucursales);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = mostradores.getCurp();
                if (findMostradores(id) == null) {
                    throw new NonexistentEntityException("The mostradores with id " + id + " no longer exists.");
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
            Mostradores mostradores;
            try {
                mostradores = em.getReference(Mostradores.class, id);
                mostradores.getCurp();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The mostradores with id " + id + " no longer exists.", enfe);
            }
            Empleados empleados = mostradores.getEmpleados();
            if (empleados != null) {
                empleados.setMostradores(null);
                empleados = em.merge(empleados);
            }
            List<Medicamentos> medicamentosList = mostradores.getMedicamentosList();
            for (Medicamentos medicamentosListMedicamentos : medicamentosList) {
                medicamentosListMedicamentos.getMostradoresList().remove(mostradores);
                medicamentosListMedicamentos = em.merge(medicamentosListMedicamentos);
            }
            List<Sucursales> sucursalesList = mostradores.getSucursalesList();
            for (Sucursales sucursalesListSucursales : sucursalesList) {
                sucursalesListSucursales.getMostradoresList().remove(mostradores);
                sucursalesListSucursales = em.merge(sucursalesListSucursales);
            }
            em.remove(mostradores);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Mostradores> findMostradoresEntities() {
        return findMostradoresEntities(true, -1, -1);
    }

    public List<Mostradores> findMostradoresEntities(int maxResults, int firstResult) {
        return findMostradoresEntities(false, maxResults, firstResult);
    }

    private List<Mostradores> findMostradoresEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Mostradores.class));
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

    public Mostradores findMostradores(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Mostradores.class, id);
        } finally {
            em.close();
        }
    }

    public int getMostradoresCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Mostradores> rt = cq.from(Mostradores.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
