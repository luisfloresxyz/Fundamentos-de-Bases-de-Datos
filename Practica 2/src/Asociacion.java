
import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author Flores González Luis Brandon
 */
public class Asociacion {

    private Taxi taxis[];
    private Dueño dueños[];
    private Chofer choferes[];

    public Asociacion() {
        taxis = new Taxi[100];
        dueños = new Dueño[40];
        choferes = new Chofer[200];
        ArchivoTaxi archivoTaxi = new ArchivoTaxi();
        ArchivoDueño archivoDueño = new ArchivoDueño();
        ArchivoChofer archivoChofer = new ArchivoChofer();
        try {
            System.out.println("Leyendo datos de taxis....");
            taxis = archivoTaxi.leeTaxis();            
            System.out.println(Arrays.toString(taxis));
            System.out.println("Leyendo datos de dueños....");
            dueños = archivoDueño.leeDueños();
            System.out.println("Leyendo datos de choferes");
            choferes = archivoChofer.leeChofer();
            System.out.println("Datos leidos....");
        } catch (ArchivoLecturaNoCreadoException e) {
            System.out.println(e.getMessage());
        }
    }

    /**
     * Todos los vehiculos dados de alta en el sistema tienen dueño.
     */
    public void agregarTaxi(Taxi nuevo) throws ExcesoException {
         if (!lugarTaxiDisponible()) {
            throw new ExcesoException("Ya no hay espacios disponible para agregar un Taxi");
        } else {
            taxis[getCantidadTaxi()] = nuevo;
        }
    }

    private boolean lugarTaxiDisponible() {
        return getCantidadTaxi() < taxis.length;
    }

    private int getCantidadTaxi() {
        int cantidad = 0;
        for (Taxi t : taxis) {
            if (t != null) {
                cantidad++;
            }
        }
        return cantidad;
    }
    
    public void agregarDueño(Dueño nuevo) throws ExcesoException {
        if (!lugarDueñoDisponible()) {
            throw new ExcesoException("Ya no hay espacios disponible para agregar un Dueño");
        } else {
            dueños[getCantidadDueño()] = nuevo;
        }
    }

    /**
     * Verifica que exista lugar para un medico mas
     *
     * @return
     */
    private boolean lugarDueñoDisponible() {
        return getCantidadDueño() < dueños.length;
    }

    private int getCantidadDueño() {
        int cantidad = 0;
        for (Dueño d : dueños) {
            if (d != null) {
                cantidad++;
            }
        }
        return cantidad;
    }

    /**
     * No hay restriccion para almacenar choferes, estos pueden estar guardados
     * aunque no tengan actividad como chofer.
     */
    public void agregarChofer(Chofer nuevo) throws ExcesoException {
        if (!lugarChoferDisponible()) {
            throw new ExcesoException("Ya no hay espacios disponible para agregar un Chofer");
        } else {
            choferes[getCantidadChofer()] = nuevo;
        }
    }

    private boolean lugarChoferDisponible() {
        return getCantidadChofer() < choferes.length;
    }

    private int getCantidadChofer() {
        int cantidad = 0;
        for (Chofer c:  choferes) {
            if (c != null) {
                cantidad++;
            }
        }
        return cantidad;
    }
    
    public void modificarTaxi() {

    }

    /**
     * 
     * @param email Actua como el id del dueño a modificar.
     * @param nuevo Dato que se quiere modificar.
     */
    public void modificarDueño(String email) {
        buscarDueño(email).setCelular(0);
        buscarDueño(email).setDomicilio(email);
        buscarDueño(email).setEmail(email);
        buscarDueño(email).setFechaIngreso(email);
        buscarDueño(email).setLicenciaConducir(0);
        buscarDueño(email).setNombre(email);
        buscarDueño(email).setRFC(email);
    }

    public void modificarChofer() {

    }

    public void eliminarTaxi() {

    }

    /**
     * Si se elimina a un dueño se cambia el estatus de los choferes que
     * manejaban el taxi, que pertenece al dueño, a "en espera". Además se
     * elimina del registro de taxis, la unidad que le pertenece al dueño.
     */
    public void eliminarDueño(String email) {
        
    }

    public void elminarChofer() {

    }
    
    /**
     * 
     * 
     * @return 
     */
    public Taxi buscarTaxi(String id) {
         for (Taxi t : taxis) {
            if (t.getId().equals(id)) {
                return t;
            }
        }
        return null; 
    }

    /**
     * 
     * @param email Este actua como el id del dueño.
     * @return 
     */
    public Dueño buscarDueño(String email) {
        for (Dueño d : dueños) {
            if (d.getEmail().equals(email)) {
                return d;
            }
        }
        return null;
    }
    
    /**
     * Busca el indice en el arreglo de dueños.
     * @param email
     * @return 
     */
    public Integer buscarIndiceDueño(String email){
        for(int i = 0; i < dueños.length; i++){
            if (dueños[i].getEmail().equals(email)) {
                return i;
            }
        }
        return 1000;
    }

    public Chofer buscarChofer(String email) {
        for (Chofer c : choferes) {
            if (c.getEmail().equals(email)) {
                return c;
            }
        }
        return null;
    }

    /**
     * Un dueño puede contratar a una persona que se encuentre en el listado de
     * choferes, no importando el estatus que este tenga. Ya que se debe
     * actualizar la información del nuevo jefe del chofer y la unidad que
     * manejará.
     */
    public void contratarChofer() {

    }
    
    public Taxi[] getTaxis(){
        return this.taxis;
    }
}
