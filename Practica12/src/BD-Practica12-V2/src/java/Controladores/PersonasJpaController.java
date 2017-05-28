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
import Entidades.Licencias;
import java.util.ArrayList;
import java.util.List;
import Entidades.Trabajadores;
import Entidades.Correos;
import Entidades.Academicos;
import Entidades.Celulares;
import Entidades.Alumnos;
import Entidades.Agentes;
import Entidades.Personas;
import java.util.LinkedList;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Table;

/**
 *
 * @author Luis
 */
@Table(name = "PERSONAS", schema="Agencia")
public class PersonasJpaController implements Serializable {

    public PersonasJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Personas personas) throws PreexistingEntityException, Exception {
        if (personas.getLicenciasList() == null) {
            personas.setLicenciasList(new ArrayList<Licencias>());
        }
        if (personas.getTrabajadoresList() == null) {
            personas.setTrabajadoresList(new ArrayList<Trabajadores>());
        }
        if (personas.getCorreosList() == null) {
            personas.setCorreosList(new ArrayList<Correos>());
        }
        if (personas.getAcademicosList() == null) {
            personas.setAcademicosList(new ArrayList<Academicos>());
        }
        if (personas.getCelularesList() == null) {
            personas.setCelularesList(new ArrayList<Celulares>());
        }
        if (personas.getAlumnosList() == null) {
            personas.setAlumnosList(new ArrayList<Alumnos>());
        }
        if (personas.getAgentesList() == null) {
            personas.setAgentesList(new ArrayList<Agentes>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            List<Licencias> attachedLicenciasList = new ArrayList<Licencias>();
            for (Licencias licenciasListLicenciasToAttach : personas.getLicenciasList()) {
                licenciasListLicenciasToAttach = em.getReference(licenciasListLicenciasToAttach.getClass(), licenciasListLicenciasToAttach.getNumLicencia());
                attachedLicenciasList.add(licenciasListLicenciasToAttach);
            }
            personas.setLicenciasList(attachedLicenciasList);
            List<Trabajadores> attachedTrabajadoresList = new ArrayList<Trabajadores>();
            for (Trabajadores trabajadoresListTrabajadoresToAttach : personas.getTrabajadoresList()) {
                trabajadoresListTrabajadoresToAttach = em.getReference(trabajadoresListTrabajadoresToAttach.getClass(), trabajadoresListTrabajadoresToAttach.getIdUnam());
                attachedTrabajadoresList.add(trabajadoresListTrabajadoresToAttach);
            }
            personas.setTrabajadoresList(attachedTrabajadoresList);
            List<Correos> attachedCorreosList = new ArrayList<Correos>();
            for (Correos correosListCorreosToAttach : personas.getCorreosList()) {
                correosListCorreosToAttach = em.getReference(correosListCorreosToAttach.getClass(), correosListCorreosToAttach.getCorreo());
                attachedCorreosList.add(correosListCorreosToAttach);
            }
            personas.setCorreosList(attachedCorreosList);
            List<Academicos> attachedAcademicosList = new ArrayList<Academicos>();
            for (Academicos academicosListAcademicosToAttach : personas.getAcademicosList()) {
                academicosListAcademicosToAttach = em.getReference(academicosListAcademicosToAttach.getClass(), academicosListAcademicosToAttach.getIdUnam());
                attachedAcademicosList.add(academicosListAcademicosToAttach);
            }
            personas.setAcademicosList(attachedAcademicosList);
            List<Celulares> attachedCelularesList = new ArrayList<Celulares>();
            for (Celulares celularesListCelularesToAttach : personas.getCelularesList()) {
                celularesListCelularesToAttach = em.getReference(celularesListCelularesToAttach.getClass(), celularesListCelularesToAttach.getCelular());
                attachedCelularesList.add(celularesListCelularesToAttach);
            }
            personas.setCelularesList(attachedCelularesList);
            List<Alumnos> attachedAlumnosList = new ArrayList<Alumnos>();
            for (Alumnos alumnosListAlumnosToAttach : personas.getAlumnosList()) {
                alumnosListAlumnosToAttach = em.getReference(alumnosListAlumnosToAttach.getClass(), alumnosListAlumnosToAttach.getIdUnam());
                attachedAlumnosList.add(alumnosListAlumnosToAttach);
            }
            personas.setAlumnosList(attachedAlumnosList);
            List<Agentes> attachedAgentesList = new ArrayList<Agentes>();
            for (Agentes agentesListAgentesToAttach : personas.getAgentesList()) {
                agentesListAgentesToAttach = em.getReference(agentesListAgentesToAttach.getClass(), agentesListAgentesToAttach.getNumPlaca());
                attachedAgentesList.add(agentesListAgentesToAttach);
            }
            personas.setAgentesList(attachedAgentesList);
            em.persist(personas);
            for (Licencias licenciasListLicencias : personas.getLicenciasList()) {
                licenciasListLicencias.getPersonasList().add(personas);
                licenciasListLicencias = em.merge(licenciasListLicencias);
            }
            for (Trabajadores trabajadoresListTrabajadores : personas.getTrabajadoresList()) {
                Personas oldCurpOfTrabajadoresListTrabajadores = trabajadoresListTrabajadores.getCurp();
                trabajadoresListTrabajadores.setCurp(personas);
                trabajadoresListTrabajadores = em.merge(trabajadoresListTrabajadores);
                if (oldCurpOfTrabajadoresListTrabajadores != null) {
                    oldCurpOfTrabajadoresListTrabajadores.getTrabajadoresList().remove(trabajadoresListTrabajadores);
                    oldCurpOfTrabajadoresListTrabajadores = em.merge(oldCurpOfTrabajadoresListTrabajadores);
                }
            }
            for (Correos correosListCorreos : personas.getCorreosList()) {
                Personas oldCurpOfCorreosListCorreos = correosListCorreos.getCurp();
                correosListCorreos.setCurp(personas);
                correosListCorreos = em.merge(correosListCorreos);
                if (oldCurpOfCorreosListCorreos != null) {
                    oldCurpOfCorreosListCorreos.getCorreosList().remove(correosListCorreos);
                    oldCurpOfCorreosListCorreos = em.merge(oldCurpOfCorreosListCorreos);
                }
            }
            for (Academicos academicosListAcademicos : personas.getAcademicosList()) {
                Personas oldCurpOfAcademicosListAcademicos = academicosListAcademicos.getCurp();
                academicosListAcademicos.setCurp(personas);
                academicosListAcademicos = em.merge(academicosListAcademicos);
                if (oldCurpOfAcademicosListAcademicos != null) {
                    oldCurpOfAcademicosListAcademicos.getAcademicosList().remove(academicosListAcademicos);
                    oldCurpOfAcademicosListAcademicos = em.merge(oldCurpOfAcademicosListAcademicos);
                }
            }
            for (Celulares celularesListCelulares : personas.getCelularesList()) {
                Personas oldCurpOfCelularesListCelulares = celularesListCelulares.getCurp();
                celularesListCelulares.setCurp(personas);
                celularesListCelulares = em.merge(celularesListCelulares);
                if (oldCurpOfCelularesListCelulares != null) {
                    oldCurpOfCelularesListCelulares.getCelularesList().remove(celularesListCelulares);
                    oldCurpOfCelularesListCelulares = em.merge(oldCurpOfCelularesListCelulares);
                }
            }
            for (Alumnos alumnosListAlumnos : personas.getAlumnosList()) {
                Personas oldCurpOfAlumnosListAlumnos = alumnosListAlumnos.getCurp();
                alumnosListAlumnos.setCurp(personas);
                alumnosListAlumnos = em.merge(alumnosListAlumnos);
                if (oldCurpOfAlumnosListAlumnos != null) {
                    oldCurpOfAlumnosListAlumnos.getAlumnosList().remove(alumnosListAlumnos);
                    oldCurpOfAlumnosListAlumnos = em.merge(oldCurpOfAlumnosListAlumnos);
                }
            }
            for (Agentes agentesListAgentes : personas.getAgentesList()) {
                Personas oldCurpOfAgentesListAgentes = agentesListAgentes.getCurp();
                agentesListAgentes.setCurp(personas);
                agentesListAgentes = em.merge(agentesListAgentes);
                if (oldCurpOfAgentesListAgentes != null) {
                    oldCurpOfAgentesListAgentes.getAgentesList().remove(agentesListAgentes);
                    oldCurpOfAgentesListAgentes = em.merge(oldCurpOfAgentesListAgentes);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findPersonas(personas.getCurp()) != null) {
                throw new PreexistingEntityException("Personas " + personas + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Personas personas) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Personas persistentPersonas = em.find(Personas.class, personas.getCurp());
            List<Licencias> licenciasListOld = persistentPersonas.getLicenciasList();
            List<Licencias> licenciasListNew = personas.getLicenciasList();
            List<Trabajadores> trabajadoresListOld = persistentPersonas.getTrabajadoresList();
            List<Trabajadores> trabajadoresListNew = personas.getTrabajadoresList();
            List<Correos> correosListOld = persistentPersonas.getCorreosList();
            List<Correos> correosListNew = personas.getCorreosList();
            List<Academicos> academicosListOld = persistentPersonas.getAcademicosList();
            List<Academicos> academicosListNew = personas.getAcademicosList();
            List<Celulares> celularesListOld = persistentPersonas.getCelularesList();
            List<Celulares> celularesListNew = personas.getCelularesList();
            List<Alumnos> alumnosListOld = persistentPersonas.getAlumnosList();
            List<Alumnos> alumnosListNew = personas.getAlumnosList();
            List<Agentes> agentesListOld = persistentPersonas.getAgentesList();
            List<Agentes> agentesListNew = personas.getAgentesList();
            List<String> illegalOrphanMessages = null;
            for (Correos correosListOldCorreos : correosListOld) {
                if (!correosListNew.contains(correosListOldCorreos)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Correos " + correosListOldCorreos + " since its curp field is not nullable.");
                }
            }
            for (Celulares celularesListOldCelulares : celularesListOld) {
                if (!celularesListNew.contains(celularesListOldCelulares)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Celulares " + celularesListOldCelulares + " since its curp field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Licencias> attachedLicenciasListNew = new ArrayList<Licencias>();
            for (Licencias licenciasListNewLicenciasToAttach : licenciasListNew) {
                licenciasListNewLicenciasToAttach = em.getReference(licenciasListNewLicenciasToAttach.getClass(), licenciasListNewLicenciasToAttach.getNumLicencia());
                attachedLicenciasListNew.add(licenciasListNewLicenciasToAttach);
            }
            licenciasListNew = attachedLicenciasListNew;
            personas.setLicenciasList(licenciasListNew);
            List<Trabajadores> attachedTrabajadoresListNew = new ArrayList<Trabajadores>();
            for (Trabajadores trabajadoresListNewTrabajadoresToAttach : trabajadoresListNew) {
                trabajadoresListNewTrabajadoresToAttach = em.getReference(trabajadoresListNewTrabajadoresToAttach.getClass(), trabajadoresListNewTrabajadoresToAttach.getIdUnam());
                attachedTrabajadoresListNew.add(trabajadoresListNewTrabajadoresToAttach);
            }
            trabajadoresListNew = attachedTrabajadoresListNew;
            personas.setTrabajadoresList(trabajadoresListNew);
            List<Correos> attachedCorreosListNew = new ArrayList<Correos>();
            for (Correos correosListNewCorreosToAttach : correosListNew) {
                correosListNewCorreosToAttach = em.getReference(correosListNewCorreosToAttach.getClass(), correosListNewCorreosToAttach.getCorreo());
                attachedCorreosListNew.add(correosListNewCorreosToAttach);
            }
            correosListNew = attachedCorreosListNew;
            personas.setCorreosList(correosListNew);
            List<Academicos> attachedAcademicosListNew = new ArrayList<Academicos>();
            for (Academicos academicosListNewAcademicosToAttach : academicosListNew) {
                academicosListNewAcademicosToAttach = em.getReference(academicosListNewAcademicosToAttach.getClass(), academicosListNewAcademicosToAttach.getIdUnam());
                attachedAcademicosListNew.add(academicosListNewAcademicosToAttach);
            }
            academicosListNew = attachedAcademicosListNew;
            personas.setAcademicosList(academicosListNew);
            List<Celulares> attachedCelularesListNew = new ArrayList<Celulares>();
            for (Celulares celularesListNewCelularesToAttach : celularesListNew) {
                celularesListNewCelularesToAttach = em.getReference(celularesListNewCelularesToAttach.getClass(), celularesListNewCelularesToAttach.getCelular());
                attachedCelularesListNew.add(celularesListNewCelularesToAttach);
            }
            celularesListNew = attachedCelularesListNew;
            personas.setCelularesList(celularesListNew);
            List<Alumnos> attachedAlumnosListNew = new ArrayList<Alumnos>();
            for (Alumnos alumnosListNewAlumnosToAttach : alumnosListNew) {
                alumnosListNewAlumnosToAttach = em.getReference(alumnosListNewAlumnosToAttach.getClass(), alumnosListNewAlumnosToAttach.getIdUnam());
                attachedAlumnosListNew.add(alumnosListNewAlumnosToAttach);
            }
            alumnosListNew = attachedAlumnosListNew;
            personas.setAlumnosList(alumnosListNew);
            List<Agentes> attachedAgentesListNew = new ArrayList<Agentes>();
            for (Agentes agentesListNewAgentesToAttach : agentesListNew) {
                agentesListNewAgentesToAttach = em.getReference(agentesListNewAgentesToAttach.getClass(), agentesListNewAgentesToAttach.getNumPlaca());
                attachedAgentesListNew.add(agentesListNewAgentesToAttach);
            }
            agentesListNew = attachedAgentesListNew;
            personas.setAgentesList(agentesListNew);
            personas = em.merge(personas);
            for (Licencias licenciasListOldLicencias : licenciasListOld) {
                if (!licenciasListNew.contains(licenciasListOldLicencias)) {
                    licenciasListOldLicencias.getPersonasList().remove(personas);
                    licenciasListOldLicencias = em.merge(licenciasListOldLicencias);
                }
            }
            for (Licencias licenciasListNewLicencias : licenciasListNew) {
                if (!licenciasListOld.contains(licenciasListNewLicencias)) {
                    licenciasListNewLicencias.getPersonasList().add(personas);
                    licenciasListNewLicencias = em.merge(licenciasListNewLicencias);
                }
            }
            for (Trabajadores trabajadoresListOldTrabajadores : trabajadoresListOld) {
                if (!trabajadoresListNew.contains(trabajadoresListOldTrabajadores)) {
                    trabajadoresListOldTrabajadores.setCurp(null);
                    trabajadoresListOldTrabajadores = em.merge(trabajadoresListOldTrabajadores);
                }
            }
            for (Trabajadores trabajadoresListNewTrabajadores : trabajadoresListNew) {
                if (!trabajadoresListOld.contains(trabajadoresListNewTrabajadores)) {
                    Personas oldCurpOfTrabajadoresListNewTrabajadores = trabajadoresListNewTrabajadores.getCurp();
                    trabajadoresListNewTrabajadores.setCurp(personas);
                    trabajadoresListNewTrabajadores = em.merge(trabajadoresListNewTrabajadores);
                    if (oldCurpOfTrabajadoresListNewTrabajadores != null && !oldCurpOfTrabajadoresListNewTrabajadores.equals(personas)) {
                        oldCurpOfTrabajadoresListNewTrabajadores.getTrabajadoresList().remove(trabajadoresListNewTrabajadores);
                        oldCurpOfTrabajadoresListNewTrabajadores = em.merge(oldCurpOfTrabajadoresListNewTrabajadores);
                    }
                }
            }
            for (Correos correosListNewCorreos : correosListNew) {
                if (!correosListOld.contains(correosListNewCorreos)) {
                    Personas oldCurpOfCorreosListNewCorreos = correosListNewCorreos.getCurp();
                    correosListNewCorreos.setCurp(personas);
                    correosListNewCorreos = em.merge(correosListNewCorreos);
                    if (oldCurpOfCorreosListNewCorreos != null && !oldCurpOfCorreosListNewCorreos.equals(personas)) {
                        oldCurpOfCorreosListNewCorreos.getCorreosList().remove(correosListNewCorreos);
                        oldCurpOfCorreosListNewCorreos = em.merge(oldCurpOfCorreosListNewCorreos);
                    }
                }
            }
            for (Academicos academicosListOldAcademicos : academicosListOld) {
                if (!academicosListNew.contains(academicosListOldAcademicos)) {
                    academicosListOldAcademicos.setCurp(null);
                    academicosListOldAcademicos = em.merge(academicosListOldAcademicos);
                }
            }
            for (Academicos academicosListNewAcademicos : academicosListNew) {
                if (!academicosListOld.contains(academicosListNewAcademicos)) {
                    Personas oldCurpOfAcademicosListNewAcademicos = academicosListNewAcademicos.getCurp();
                    academicosListNewAcademicos.setCurp(personas);
                    academicosListNewAcademicos = em.merge(academicosListNewAcademicos);
                    if (oldCurpOfAcademicosListNewAcademicos != null && !oldCurpOfAcademicosListNewAcademicos.equals(personas)) {
                        oldCurpOfAcademicosListNewAcademicos.getAcademicosList().remove(academicosListNewAcademicos);
                        oldCurpOfAcademicosListNewAcademicos = em.merge(oldCurpOfAcademicosListNewAcademicos);
                    }
                }
            }
            for (Celulares celularesListNewCelulares : celularesListNew) {
                if (!celularesListOld.contains(celularesListNewCelulares)) {
                    Personas oldCurpOfCelularesListNewCelulares = celularesListNewCelulares.getCurp();
                    celularesListNewCelulares.setCurp(personas);
                    celularesListNewCelulares = em.merge(celularesListNewCelulares);
                    if (oldCurpOfCelularesListNewCelulares != null && !oldCurpOfCelularesListNewCelulares.equals(personas)) {
                        oldCurpOfCelularesListNewCelulares.getCelularesList().remove(celularesListNewCelulares);
                        oldCurpOfCelularesListNewCelulares = em.merge(oldCurpOfCelularesListNewCelulares);
                    }
                }
            }
            for (Alumnos alumnosListOldAlumnos : alumnosListOld) {
                if (!alumnosListNew.contains(alumnosListOldAlumnos)) {
                    alumnosListOldAlumnos.setCurp(null);
                    alumnosListOldAlumnos = em.merge(alumnosListOldAlumnos);
                }
            }
            for (Alumnos alumnosListNewAlumnos : alumnosListNew) {
                if (!alumnosListOld.contains(alumnosListNewAlumnos)) {
                    Personas oldCurpOfAlumnosListNewAlumnos = alumnosListNewAlumnos.getCurp();
                    alumnosListNewAlumnos.setCurp(personas);
                    alumnosListNewAlumnos = em.merge(alumnosListNewAlumnos);
                    if (oldCurpOfAlumnosListNewAlumnos != null && !oldCurpOfAlumnosListNewAlumnos.equals(personas)) {
                        oldCurpOfAlumnosListNewAlumnos.getAlumnosList().remove(alumnosListNewAlumnos);
                        oldCurpOfAlumnosListNewAlumnos = em.merge(oldCurpOfAlumnosListNewAlumnos);
                    }
                }
            }
            for (Agentes agentesListOldAgentes : agentesListOld) {
                if (!agentesListNew.contains(agentesListOldAgentes)) {
                    agentesListOldAgentes.setCurp(null);
                    agentesListOldAgentes = em.merge(agentesListOldAgentes);
                }
            }
            for (Agentes agentesListNewAgentes : agentesListNew) {
                if (!agentesListOld.contains(agentesListNewAgentes)) {
                    Personas oldCurpOfAgentesListNewAgentes = agentesListNewAgentes.getCurp();
                    agentesListNewAgentes.setCurp(personas);
                    agentesListNewAgentes = em.merge(agentesListNewAgentes);
                    if (oldCurpOfAgentesListNewAgentes != null && !oldCurpOfAgentesListNewAgentes.equals(personas)) {
                        oldCurpOfAgentesListNewAgentes.getAgentesList().remove(agentesListNewAgentes);
                        oldCurpOfAgentesListNewAgentes = em.merge(oldCurpOfAgentesListNewAgentes);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = personas.getCurp();
                if (findPersonas(id) == null) {
                    throw new NonexistentEntityException("The personas with id " + id + " no longer exists.");
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
            Personas personas;
            try {
                personas = em.getReference(Personas.class, id);
                personas.getCurp();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The personas with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Correos> correosListOrphanCheck = personas.getCorreosList();
            for (Correos correosListOrphanCheckCorreos : correosListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Personas (" + personas + ") cannot be destroyed since the Correos " + correosListOrphanCheckCorreos + " in its correosList field has a non-nullable curp field.");
            }
            List<Celulares> celularesListOrphanCheck = personas.getCelularesList();
            for (Celulares celularesListOrphanCheckCelulares : celularesListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Personas (" + personas + ") cannot be destroyed since the Celulares " + celularesListOrphanCheckCelulares + " in its celularesList field has a non-nullable curp field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            List<Licencias> licenciasList = personas.getLicenciasList();
            for (Licencias licenciasListLicencias : licenciasList) {
                licenciasListLicencias.getPersonasList().remove(personas);
                licenciasListLicencias = em.merge(licenciasListLicencias);
            }
            List<Trabajadores> trabajadoresList = personas.getTrabajadoresList();
            for (Trabajadores trabajadoresListTrabajadores : trabajadoresList) {
                trabajadoresListTrabajadores.setCurp(null);
                trabajadoresListTrabajadores = em.merge(trabajadoresListTrabajadores);
            }
            List<Academicos> academicosList = personas.getAcademicosList();
            for (Academicos academicosListAcademicos : academicosList) {
                academicosListAcademicos.setCurp(null);
                academicosListAcademicos = em.merge(academicosListAcademicos);
            }
            List<Alumnos> alumnosList = personas.getAlumnosList();
            for (Alumnos alumnosListAlumnos : alumnosList) {
                alumnosListAlumnos.setCurp(null);
                alumnosListAlumnos = em.merge(alumnosListAlumnos);
            }
            List<Agentes> agentesList = personas.getAgentesList();
            for (Agentes agentesListAgentes : agentesList) {
                agentesListAgentes.setCurp(null);
                agentesListAgentes = em.merge(agentesListAgentes);
            }
            em.remove(personas);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Personas> findPersonasEntities() {
        return findPersonasEntities(true, -1, -1);
    }

    public List<Personas> findPersonasEntities(int maxResults, int firstResult) {
        return findPersonasEntities(false, maxResults, firstResult);
    }

    private List<Personas> findPersonasEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Personas.class));
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

    public Personas findPersonas(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Personas.class, id);
        } finally {
            em.close();
        }
    }

    public int getPersonasCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Personas> rt = cq.from(Personas.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
    
    public List<Personas> getChoferYDuenio(){
        EntityManager em = getEntityManager();                    
        List<Object[]> results;              
        results = em.createQuery("SELECT p.curp, p.nombre, p.materno, p.paterno, p.colonia, p.ciudad FROM Personas p INNER JOIN Choferes c ON p.curp = c.curp INNER JOIN Duenios d ON d.curp = c.curp").getResultList();
        List<Personas> personasLista = new LinkedList<>();
        for(int i = 0; i < results.size() - 1; i++){
            Personas nueva = new Personas();
            nueva.setCurp((String) results.get(i)[0]);
            nueva.setNombre((String) results.get(i)[1]);
            nueva.setMaterno((String) results.get(i)[2]);
            nueva.setPaterno((String) results.get(i)[3]);
            nueva.setColonia((String) results.get(i)[4]);
            nueva.setCiudad((String) results.get(i)[5]);
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
