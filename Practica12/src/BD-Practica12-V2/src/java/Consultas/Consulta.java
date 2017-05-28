package Consultas;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Controladores.ChoferesJpaController;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import Controladores.PersonasJpaController;
import Entidades.Choferes;
import Entidades.Personas;
import java.util.List;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceUnit;

/**
 *
 * @author Luis
 */
@ManagedBean
@RequestScoped
public class Consulta {
    
        /**
     * Comentario que se insertara en la base de datos.
     */
    private Personas nueva;
    /**
     * Interfaz para hacer consultas en la base de datos.
     */    
    private final EntityManagerFactory emf;
    /**
     * Consultas en la base de dato de la entidad comentario.
     */
    private final PersonasJpaController controladorPersona;
    /**
     * Comentarios que se encuentran actualmente en la base de datos.
     */
    private  List<Personas> personas;
    
    private List<Choferes> choferes;
    private final ChoferesJpaController controladorChofer;
        
    
    /**
     * Inicializa el controlador para poder hacer las consultas en la base de
     * datos además de obtener los identificadores tanto del puesto como del
     * usuario.
     */
    public Consulta() {
        nueva = new Personas();
        emf = Persistence.createEntityManagerFactory("BD-Practica12-V2PU");
        controladorPersona = new PersonasJpaController(emf);        
        personas = controladorPersona.findPersonasEntities();        
        controladorChofer = new ChoferesJpaController(emf);  
        choferes = controladorChofer.findChoferesEntities();
    }
    
    public String damePersonas() throws Exception{
        String persons = "";
        List<String> ListaChoferes = dame25();
        for(int i = 0; i < ListaChoferes.size(); i++){
            persons = "\n" + persons + ListaChoferes.get(i) + "\n";
        }
        return persons;
    }

    public List<String> dame25() throws Exception{
        return controladorChofer.getNombreMayor25();
    }
    
   public List<Personas> dameChoferDuenio(){
       return controladorPersona.getChoferYDuenio();
   }
    
    public Personas getNueva() {
        return nueva;
    }

    public void setNueva(Personas nueva) {
        this.nueva = nueva;
    }

    public List<Personas> getPersonas() {
        return personas;
    }

    public void setPersonas(List<Personas> personas) {
        this.personas = personas;
    }

    public List<Choferes> getChoferes() {
        return choferes;
    }

    public void setChoferes(List<Choferes> choferes) {
        this.choferes = choferes;
    }
    
    
    
}
