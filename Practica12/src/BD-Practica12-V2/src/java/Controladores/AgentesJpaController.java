/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Controladores.exceptions.IllegalOrphanException;
import Controladores.exceptions.NonexistentEntityException;
import Controladores.exceptions.PreexistingEntityException;
import Entidades.Agentes;
import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import Entidades.Personas;
import Entidades.Multas;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

/**
 *
 * @author Luis
 */
public class AgentesJpaController implements Serializable {

    public AgentesJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Agentes agentes) throws PreexistingEntityException, Exception {
        if (agentes.getMultasList() == null) {
            agentes.setMultasList(new ArrayList<Multas>());
        }
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Personas curp = agentes.getCurp();
            if (curp != null) {
                curp = em.getReference(curp.getClass(), curp.getCurp());
                agentes.setCurp(curp);
            }
            List<Multas> attachedMultasList = new ArrayList<Multas>();
            for (Multas multasListMultasToAttach : agentes.getMultasList()) {
                multasListMultasToAttach = em.getReference(multasListMultasToAttach.getClass(), multasListMultasToAttach.getIdMulta());
                attachedMultasList.add(multasListMultasToAttach);
            }
            agentes.setMultasList(attachedMultasList);
            em.persist(agentes);
            if (curp != null) {
                curp.getAgentesList().add(agentes);
                curp = em.merge(curp);
            }
            for (Multas multasListMultas : agentes.getMultasList()) {
                Agentes oldNumPlacaOfMultasListMultas = multasListMultas.getNumPlaca();
                multasListMultas.setNumPlaca(agentes);
                multasListMultas = em.merge(multasListMultas);
                if (oldNumPlacaOfMultasListMultas != null) {
                    oldNumPlacaOfMultasListMultas.getMultasList().remove(multasListMultas);
                    oldNumPlacaOfMultasListMultas = em.merge(oldNumPlacaOfMultasListMultas);
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            if (findAgentes(agentes.getNumPlaca()) != null) {
                throw new PreexistingEntityException("Agentes " + agentes + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Agentes agentes) throws IllegalOrphanException, NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Agentes persistentAgentes = em.find(Agentes.class, agentes.getNumPlaca());
            Personas curpOld = persistentAgentes.getCurp();
            Personas curpNew = agentes.getCurp();
            List<Multas> multasListOld = persistentAgentes.getMultasList();
            List<Multas> multasListNew = agentes.getMultasList();
            List<String> illegalOrphanMessages = null;
            for (Multas multasListOldMultas : multasListOld) {
                if (!multasListNew.contains(multasListOldMultas)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Multas " + multasListOldMultas + " since its numPlaca field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (curpNew != null) {
                curpNew = em.getReference(curpNew.getClass(), curpNew.getCurp());
                agentes.setCurp(curpNew);
            }
            List<Multas> attachedMultasListNew = new ArrayList<Multas>();
            for (Multas multasListNewMultasToAttach : multasListNew) {
                multasListNewMultasToAttach = em.getReference(multasListNewMultasToAttach.getClass(), multasListNewMultasToAttach.getIdMulta());
                attachedMultasListNew.add(multasListNewMultasToAttach);
            }
            multasListNew = attachedMultasListNew;
            agentes.setMultasList(multasListNew);
            agentes = em.merge(agentes);
            if (curpOld != null && !curpOld.equals(curpNew)) {
                curpOld.getAgentesList().remove(agentes);
                curpOld = em.merge(curpOld);
            }
            if (curpNew != null && !curpNew.equals(curpOld)) {
                curpNew.getAgentesList().add(agentes);
                curpNew = em.merge(curpNew);
            }
            for (Multas multasListNewMultas : multasListNew) {
                if (!multasListOld.contains(multasListNewMultas)) {
                    Agentes oldNumPlacaOfMultasListNewMultas = multasListNewMultas.getNumPlaca();
                    multasListNewMultas.setNumPlaca(agentes);
                    multasListNewMultas = em.merge(multasListNewMultas);
                    if (oldNumPlacaOfMultasListNewMultas != null && !oldNumPlacaOfMultasListNewMultas.equals(agentes)) {
                        oldNumPlacaOfMultasListNewMultas.getMultasList().remove(multasListNewMultas);
                        oldNumPlacaOfMultasListNewMultas = em.merge(oldNumPlacaOfMultasListNewMultas);
                    }
                }
            }
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = agentes.getNumPlaca();
                if (findAgentes(id) == null) {
                    throw new NonexistentEntityException("The agentes with id " + id + " no longer exists.");
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
            Agentes agentes;
            try {
                agentes = em.getReference(Agentes.class, id);
                agentes.getNumPlaca();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The agentes with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Multas> multasListOrphanCheck = agentes.getMultasList();
            for (Multas multasListOrphanCheckMultas : multasListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This Agentes (" + agentes + ") cannot be destroyed since the Multas " + multasListOrphanCheckMultas + " in its multasList field has a non-nullable numPlaca field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            Personas curp = agentes.getCurp();
            if (curp != null) {
                curp.getAgentesList().remove(agentes);
                curp = em.merge(curp);
            }
            em.remove(agentes);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Agentes> findAgentesEntities() {
        return findAgentesEntities(true, -1, -1);
    }

    public List<Agentes> findAgentesEntities(int maxResults, int firstResult) {
        return findAgentesEntities(false, maxResults, firstResult);
    }

    private List<Agentes> findAgentesEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Agentes.class));
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

    public Agentes findAgentes(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Agentes.class, id);
        } finally {
            em.close();
        }
    }

    public int getAgentesCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Agentes> rt = cq.from(Agentes.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
