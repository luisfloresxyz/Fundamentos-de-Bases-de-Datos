/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.IllegalOrphanException;
import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Clientes;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Empleados;
import Entidades.Consultas;
import java.util.ArrayList;
import java.util.List;
import Entidades.Especialidades;
import Entidades.Medicos;
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
public class MedicosJpaController implements Serializable {

    public MedicosJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public MedicosJpaController() {
        this.emf = Persistence.createEntityManagerFactory("BD-Practica12-V2PU");
    }

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Medicos medicos) throws IllegalOrphanException, PreexistingEntityException, Exception {
        if (medicos.getConsultasList() == null) {
            medicos.setConsultasList(new ArrayList<Consultas>());
        }
        if (medicos.getEspecialidadesList() == null) {
            medicos.setEspecialidadesList(new ArrayList<Especialidades>());
        }
        List<String> illegalOrphanMessages = null;
        Empleados empleadosOrphanCheck = medicos.getEmpleados();
        if (empleadosOrphanCheck != null) {
            Medicos oldMedicosOfEmpleados = empleadosOrphanCheck.getMedicos();
            if (oldMedicosOfEmpleados != null) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("The Empleados " + empleadosOrphanCheck + " already has an item of type Medicos whose empleados column cannot be null. Please make another selection for the empleados field.");
            }
        }
        if (illegalOrphanMessages != null) {
            throw new IllegalOrphanException(illegalOrphanMessages);
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Empleados empleados = medicos.getEmpleados();
            if (empleados != null) {
                empleados = em.getReference(empleados.getClass(), empleados.getCurp());
                medicos.setEmpleados(empleados);
            }
            List<Consultas> attachedConsultasList = new ArrayList<Consultas>();
            for (Consultas consultasListConsultasToAttach : medicos.getConsultasList()) {
                consultasListConsultasToAttach = em.getReference(consultasListConsultasToAttach.getClass(), consultasListConsultasToAttach.getIdentificador());
                attachedConsultasList.add(consultasListConsultasToAttach);
            }
            medicos.setConsultasList(attachedConsultasList);
            List<Especialidades> attachedEspecialidadesList = new ArrayList<Especialidades>();
            for (Especialidades especialidadesListEspecialidadesToAttach : medicos.getEspecialidadesList()) {
                especialidadesListEspecialidadesToAttach = em.getReference(especialidadesListEspecialidadesToAttach.getClass(), especialidadesListEspecialidadesToAttach.getEspecialidadesPK());
                attachedEspecialidadesList.add(especialidadesListEspecialidadesToAttach);
            }
            medicos.setEspecialidadesList(attachedEspecialidadesList);
            em.persist(medicos);
            if (empleados != null) {
                empleados.setMedicos(medicos);
                empleados = em.merge(empleados);
            }
            for (Consultas consultasListConsultas : medicos.getConsultasList()) {
                Medicos oldCurpOfConsultasListConsultas = consultasListConsultas.getCurp();
                consultasListConsultas.setCurp(medicos);
                consultasListConsultas = em.merge(consultasListConsultas);
                if (oldCurpOfConsultasListConsultas != null) {
                    oldCurpOfConsultasListConsultas.getConsultasList().remove(consultasListConsultas);
                    oldCurpOfConsultasListConsultas = em.merge(oldCurpOfConsultasListConsultas);
                }
            }
            for (Especialidades especialidadesListEspecialidades : medicos.getEspecialidadesList()) {
                Medicos oldMedicosOfEspecialidadesListEspecialidades = especialidadesListEspecialidades.getMedicos();
                especialidadesListEspecialidades.setMedicos(medicos);
                especialidadesListEspecialidades = em.merge(especialidadesListEspecialidades);
                if (oldMedicosOfEspecialidadesListEspecialidades != null) {
                    oldMedicosOfEspecialidadesListEspecialidades.getEspecialidadesList().remove(especialidadesListEspecialidades);
                    oldMedicosOfEspecialidadesListEspecialidades = em.merge(oldMedicosOfEspecialidadesListEspecialidades);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findMedicos(medicos.getCurp()) != null) {
                throw new PreexistingEntityException("Medicos " + medicos + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Medicos medicos) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Medicos persistentMedicos = em.find(Medicos.class, medicos.getCurp());
            Empleados empleadosOld = persistentMedicos.getEmpleados();
            Empleados empleadosNew = medicos.getEmpleados();
            List<Consultas> consultasListOld = persistentMedicos.getConsultasList();
            List<Consultas> consultasListNew = medicos.getConsultasList();
            List<Especialidades> especialidadesListOld = persistentMedicos.getEspecialidadesList();
            List<Especialidades> especialidadesListNew = medicos.getEspecialidadesList();
            List<String> illegalOrphanMessages = null;
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                Medicos oldMedicosOfEmpleados = empleadosNew.getMedicos();
                if (oldMedicosOfEmpleados != null) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("The Empleados " + empleadosNew + " already has an item of type Medicos whose empleados column cannot be null. Please make another selection for the empleados field.");
                }
            }
            for (Consultas consultasListOldConsultas : consultasListOld) {
                if (!consultasListNew.contains(consultasListOldConsultas)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Consultas " + consultasListOldConsultas + " since its curp field is not nullable.");
                }
            }
            for (Especialidades especialidadesListOldEspecialidades : especialidadesListOld) {
                if (!especialidadesListNew.contains(especialidadesListOldEspecialidades)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Especialidades " + especialidadesListOldEspecialidades + " since its medicos field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (empleadosNew != null) {
                empleadosNew = em.getReference(empleadosNew.getClass(), empleadosNew.getCurp());
                medicos.setEmpleados(empleadosNew);
            }
            List<Consultas> attachedConsultasListNew = new ArrayList<Consultas>();
            for (Consultas consultasListNewConsultasToAttach : consultasListNew) {
                consultasListNewConsultasToAttach = em.getReference(consultasListNewConsultasToAttach.getClass(), consultasListNewConsultasToAttach.getIdentificador());
                attachedConsultasListNew.add(consultasListNewConsultasToAttach);
            }
            consultasListNew = attachedConsultasListNew;
            medicos.setConsultasList(consultasListNew);
            List<Especialidades> attachedEspecialidadesListNew = new ArrayList<Especialidades>();
            for (Especialidades especialidadesListNewEspecialidadesToAttach : especialidadesListNew) {
                especialidadesListNewEspecialidadesToAttach = em.getReference(especialidadesListNewEspecialidadesToAttach.getClass(), especialidadesListNewEspecialidadesToAttach.getEspecialidadesPK());
                attachedEspecialidadesListNew.add(especialidadesListNewEspecialidadesToAttach);
            }
            especialidadesListNew = attachedEspecialidadesListNew;
            medicos.setEspecialidadesList(especialidadesListNew);
            medicos = em.merge(medicos);
            if (empleadosOld != null && !empleadosOld.equals(empleadosNew)) {
                empleadosOld.setMedicos(null);
                empleadosOld = em.merge(empleadosOld);
            }
            if (empleadosNew != null && !empleadosNew.equals(empleadosOld)) {
                empleadosNew.setMedicos(medicos);
                empleadosNew = em.merge(empleadosNew);
            }
            for (Consultas consultasListNewConsultas : consultasListNew) {
                if (!consultasListOld.contains(consultasListNewConsultas)) {
                    Medicos oldCurpOfConsultasListNewConsultas = consultasListNewConsultas.getCurp();
                    consultasListNewConsultas.setCurp(medicos);
                    consultasListNewConsultas = em.merge(consultasListNewConsultas);
                    if (oldCurpOfConsultasListNewConsultas != null && !oldCurpOfConsultasListNewConsultas.equals(medicos)) {
                        oldCurpOfConsultasListNewConsultas.getConsultasList().remove(consultasListNewConsultas);
                        oldCurpOfConsultasListNewConsultas = em.merge(oldCurpOfConsultasListNewConsultas);
                    }
                }
            }
            for (Especialidades especialidadesListNewEspecialidades : especialidadesListNew) {
                if (!especialidadesListOld.contains(especialidadesListNewEspecialidades)) {
                    Medicos oldMedicosOfEspecialidadesListNewEspecialidades = especialidadesListNewEspecialidades.getMedicos();
                    especialidadesListNewEspecialidades.setMedicos(medicos);
                    especialidadesListNewEspecialidades = em.merge(especialidadesListNewEspecialidades);
                    if (oldMedicosOfEspecialidadesListNewEspecialidades != null && !oldMedicosOfEspecialidadesListNewEspecialidades.equals(medicos)) {
                        oldMedicosOfEspecialidadesListNewEspecialidades.getEspecialidadesList().remove(especialidadesListNewEspecialidades);
                        oldMedicosOfEspecialidadesListNewEspecialidades = em.merge(oldMedicosOfEspecialidadesListNewEspecialidades);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = medicos.getCurp();
                if (findMedicos(id) == null) {
                    throw new NonexistentEntityException("The medicos with id " + id + " no longer exists.");
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
            Medicos medicos;
            try {
                medicos = em.getReference(Medicos.class, id);
                medicos.getCurp();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The medicos with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Consultas> consultasListOrphanCheck = medicos.getConsultasList();
            for (Consultas consultasListOrphanCheckConsultas : consultasListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Medicos (" + medicos + ") cannot be destroyed since the Consultas " + consultasListOrphanCheckConsultas + " in its consultasList field has a non-nullable curp field.");
            }
            List<Especialidades> especialidadesListOrphanCheck = medicos.getEspecialidadesList();
            for (Especialidades especialidadesListOrphanCheckEspecialidades : especialidadesListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Medicos (" + medicos + ") cannot be destroyed since the Especialidades " + especialidadesListOrphanCheckEspecialidades + " in its especialidadesList field has a non-nullable medicos field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            Empleados empleados = medicos.getEmpleados();
            if (empleados != null) {
                empleados.setMedicos(null);
                empleados = em.merge(empleados);
            }
            em.remove(medicos);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Medicos> findMedicosEntities() {
        return findMedicosEntities(true, -1, -1);
    }

    public List<Medicos> findMedicosEntities(int maxResults, int firstResult) {
        return findMedicosEntities(false, maxResults, firstResult);
    }

    private List<Medicos> findMedicosEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Medicos.class));
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

    public Medicos findMedicos(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Medicos.class, id);
        } finally {
            em.close();
        }
    }

    public int getMedicosCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Medicos> rt = cq.from(Medicos.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }

    /*
    * Medicos que más pacientes atienden.
     */
    public List<Empleados> getMasPacientes() {
        EntityManager em = getEntityManager();
        List<Object[]> results;
        results = em.createNativeQuery("select R.curp , nombre, paterno , materno\n"
                + "from (\n"
                + "	select curp , count(identificador) as num_consultas\n"
                + "	from APP.Farmacia.CONSULTAS\n"
                + "	group by curp\n"
                + ") as R join APP.Farmacia.EMPLEADOS  on R.curp = EMPLEADOS.curp").getResultList();
        List<Empleados> medicos = new LinkedList<>();
        for (int i = 0; i < results.size(); i++) {
            Empleados nuevo = new Empleados();
            nuevo.setCurp((String) results.get(i)[0]);
            nuevo.setNombre((String) results.get(i)[1]);
            nuevo.setPaterno((String) results.get(i)[2]);
            nuevo.setMaterno((String) results.get(i)[3]);
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
            medicos.add(nuevo);
        }
        return medicos;
    }

    /*
    * Médicos que son responsables en el turno matutino
     */
    public List<Empleados> getResponsables() {
        EntityManager em = getEntityManager();
        List<Object[]> results;
        results = em.createNativeQuery("select R.curp , nombre , paterno , materno \n"
                + "from (select MEDICOS.curp\n"
                + "		from APP.Farmacia.MEDICOS join APP.Farmacia.RESPONSABLES on MEDICOS.curp = RESPONSABLES.curp\n"
                + "		where turno = 'matutino') as R join APP.Farmacia.EMPLEADOS on R.curp = EMPLEADOS.curp").getResultList();
        List<Empleados> medicos = new LinkedList<>();
        for (int i = 0; i < results.size(); i++) {
            Empleados nuevo = new Empleados();
            nuevo.setCurp((String) results.get(i)[0]);
            nuevo.setNombre((String) results.get(i)[1]);
            nuevo.setPaterno((String) results.get(i)[2]);
            nuevo.setMaterno((String) results.get(i)[3]);
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
            medicos.add(nuevo);
        }
        return medicos;
    }
}
