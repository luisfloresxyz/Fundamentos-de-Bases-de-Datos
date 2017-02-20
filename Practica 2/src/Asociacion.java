
import java.util.Arrays;
import java.util.Scanner;

/**
 * Modela el comportamiento entre dueños y choferes con su relación con taxis.
 *
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 * @see Taxi, Dueño, Chofer
 */
public class Asociacion {

    private Taxi taxis[];
    private Dueño dueños[];
    private Chofer choferes[];
    private ArchivoTaxi archivoTaxi;
    private ArchivoDueño archivoDueño;
    private ArchivoChofer archivoChofer;

    /**
     * Construye una asociación con una cantidad fija de espacios disponibles
     * para taxis, dueños y choferes. Tales espacios serán llenados
     * respectivamente con sus archivos, si hay espacios libres estos contendran
     * null.
     */
    public Asociacion() {
        taxis = new Taxi[200];
        dueños = new Dueño[200];
        choferes = new Chofer[200];
        archivoTaxi = new ArchivoTaxi();
        archivoDueño = new ArchivoDueño();
        archivoChofer = new ArchivoChofer();
        try {
            System.out.println("Leyendo datos de taxis....");
            System.arraycopy(archivoTaxi.leeTaxis(), 0, taxis,
                    0, archivoTaxi.leeTaxis().length);
            //taxis = archivoTaxi.leeTaxis();Me marca error, si lo implemento así.
            System.out.println(Arrays.toString(taxis));
            System.out.println("Leyendo datos de dueños....");
            System.arraycopy(archivoDueño.leeDueños(), 0, dueños,
                    0, archivoDueño.leeDueños().length);
            System.out.println(Arrays.toString(dueños));
            System.out.println("Leyendo datos de choferes");
            System.arraycopy(archivoChofer.leeChofer(), 0, choferes,
                    0, archivoChofer.leeChofer().length);
            System.out.println(Arrays.toString(choferes));
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
            System.out.println(Arrays.toString(taxis));
        }
    }

    /**
     * Verifica que exista lugar para un Taxi mas.
     *
     * @return
     */
    private boolean lugarTaxiDisponible() {
        return getCantidadTaxi() < taxis.length;
    }

    /**
     * Calcula los lugares ocupados por taxis.
     *
     * @return
     */
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
     * Verifica que exista lugar para un dueño mas
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
        for (Chofer c : choferes) {
            if (c != null) {
                cantidad++;
            }
        }
        return cantidad;
    }

    public void modificarTaxi(String id) {
        //buscarTaxi(id).setAño(69);
        //System.out.println(Arrays.toString(taxis));Inecesario
        System.out.println("¿Qué dato quieres modificar?");
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa la opción deseada\n"
                + "1-ID\n"
                + "2-Modelo\n"
                + "3-Marca\n"
                + "4-Año\n"
                + "5-¿Tiene llanta de refacción?\n"
                + "6-Número de puertas\n"
                + "7-Número de cilindros\n"
                + "8-¿Es miembro de la asociación?\n"
                + "9-Cambiar de dueño(correo del nuevo dueño)\n");
        int opcion = leer.nextInt();
        switch (opcion) {
            case 1:
                String nuevoId = leer.nextLine();
                buscarTaxi(id).setId(nuevoId);
                break;
            case 2:
                String nuevoModelo = leer.nextLine();
                buscarTaxi(id).setModelo(nuevoModelo);
                break;
            case 3:
                String nuevaMarca = leer.nextLine();
                buscarTaxi(id).setMarca(nuevaMarca);
                break;
            case 4:
                int nuevoAño = leer.nextInt();
                buscarTaxi(id).setAño(nuevoAño);
                break;
            case 5:
                Boolean tieneLlantaRefaccion = Boolean.parseBoolean(leer.nextLine());
                buscarTaxi(id).tieneLlantaRefaccion(tieneLlantaRefaccion);
                break;
            case 6:
                int numPuertas = leer.nextInt();
                buscarTaxi(id).setNumPuertas(numPuertas);
                break;
            case 7:
                int numCilindros = leer.nextInt();
                buscarTaxi(id).setNumCilindros(numCilindros);
                break;
            case 8:
                boolean esMiembro = leer.nextBoolean();
                buscarTaxi(id).setMiembro(esMiembro);
                break;
            case 9:
                String nuevoCorreo = leer.nextLine();
                buscarTaxi(id).setDueño(nuevoCorreo);
                break;
            default:
                System.out.println("Por favor escoge una opción.");
                break;
        }
        archivoTaxi.escribeTaxi(taxis);
    }

    /**
     *
     * @param email Actua como el id del dueño a modificar.
     * @param nuevo Dato que se quiere modificar.
     */
    public void modificarDueño(String correo) {
        //celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,RFC
        System.out.println("¿Qué dato quieres modificar?");
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa la opción deseada\n"
                + "1-Celular\n"
                + "2-Correo\n"
                + "3-Fecha de ingreso\n"
                + "4-Licencia de Conducir\n"
                + "5-Domicilio\n"
                + "6-Nombre\n"
                + "7-RFC\n");
        int opcion = leer.nextInt();
        switch (opcion) {
            case 1:
                int nuevoCelular = leer.nextInt();
                buscarDueño(correo).setCelular(nuevoCelular);
                break;
            case 2:
                String nuevoCorreo = leer.nextLine();
                buscarDueño(correo).setCorreo(nuevoCorreo);
                break;
            case 3:
                String nuevaFechaIngreso = leer.nextLine();
                buscarDueño(correo).setFechaIngreso(nuevaFechaIngreso);
                break;
            case 4:
                int nuevaLicenciaConducir = leer.nextInt();
                buscarDueño(correo).setLicenciaConducir(nuevaLicenciaConducir);
                break;
            case 5:
                String nuevoDomicilio = leer.nextLine();
                buscarDueño(correo).setDomicilio(nuevoDomicilio);
                break;
            case 6:
                String nuevoNombre = leer.nextLine();
                buscarDueño(correo).setNombre(nuevoNombre);
                break;
            case 7:
                String nuevoRFC = leer.nextLine();
                buscarDueño(correo).setRFC(nuevoRFC);
                break;
            default:
                System.out.println("Por favor escoge una opción.");
                break;
        }
        archivoDueño.escribeDueño(dueños);
    }

    public void modificarChofer(String correo) {
        //celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,estaActivo
        System.out.println("¿Qué dato quieres modificar?");
        Scanner leer = new Scanner(System.in);
        System.out.println("Ingresa la opción deseada\n"
                + "1-Celular\n"
                + "2-Correo\n"
                + "3-Fecha de ingreso\n"
                + "4-Licencia de Conducir\n"
                + "5-Domicilio\n"
                + "6-Nombre\n"
                + "7-Cambiar estatus(Esta descansando o activo)\n");
        int opcion = leer.nextInt();
        switch (opcion) {
            case 1:
                int nuevoCelular = leer.nextInt();
                buscarChofer(correo).setCelular(nuevoCelular);
                break;
            case 2:
                String nuevoCorreo = leer.nextLine();
                buscarChofer(correo).setCorreo(nuevoCorreo);
                break;
            case 3:
                String nuevaFechaIngreso = leer.nextLine();
                buscarChofer(correo).setFechaIngreso(nuevaFechaIngreso);
                break;
            case 4:
                int nuevaLicenciaConducir = leer.nextInt();
                buscarChofer(correo).setLicenciaConducir(nuevaLicenciaConducir);
                break;
            case 5:
                String nuevoDomicilio = leer.nextLine();
                buscarChofer(correo).setDomicilio(nuevoDomicilio);
                break;
            case 6:
                String nuevoNombre = leer.nextLine();
                buscarChofer(correo).setNombre(nuevoNombre);
                break;
            case 7:
                boolean nuevoEstado = leer.nextBoolean();
                buscarChofer(correo).asignarEstado(nuevoEstado);
                break;
            default:
                System.out.println("Por favor escoge una opción.");
                break;
        }
        archivoChofer.escribeChofer(choferes);
    }

    public void eliminarTaxi(String id) {        
        //id,modelo,marca,año,llantaRefaccion,puertas,cilindros,esMiembro,correoDueño
        buscarTaxi(id).setId(null);
        buscarTaxi(id).setModelo(null);
        buscarTaxi(id).setMarca(null);
        buscarTaxi(id).setAño(0);
        buscarTaxi(id).tieneLlantaRefaccion(false);
        buscarTaxi(id).setNumPuertas(0);
        buscarTaxi(id).setNumCilindros(0);
        buscarTaxi(id).setMiembro(false);
        buscarTaxi(id).setDueño(null);
        archivoTaxi.escribeTaxi(taxis);
    }

    /**
     * Si se elimina a un dueño se cambia el estatus de los choferes que
     * manejaban el taxi, que pertenece al dueño, a "en espera". Además se
     * elimina del registro de taxis, la unidad que le pertenece al dueño.
     */
    public void eliminarDueño(String correo) {                
        //celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,RFC
        buscarDueño(correo).setCelular(0);
        buscarDueño(correo).setCorreo(null);
        buscarDueño(correo).setFechaIngreso(null);
        buscarDueño(correo).setLicenciaConducir(0);
        buscarDueño(correo).setDomicilio(null);
        buscarDueño(correo).setNombre(null);
        buscarDueño(correo).setRFC(null);
        archivoDueño.escribeDueño(dueños);
    }

    public void elminarChofer(String correo) {
        //celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,estaActivo
        buscarChofer(correo).setCelular(0);
        buscarChofer(correo).setCorreo(null);
        buscarChofer(correo).setFechaIngreso(null);
        buscarChofer(correo).setLicenciaConducir(0);
        buscarChofer(correo).setDomicilio(null);
        buscarChofer(correo).setNombre(null);
        buscarChofer(correo).asignarEstado(false);
        archivoChofer.escribeChofer(choferes);
    }

    /**
     * 
     *
     * @param id 
     * @return Datos del taxi con ID especificado.
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
            if (d.getCorreo().equals(email)) {
                return d;
            }
        }
        return null;
    }

    /**
     * Busca el indice en el arreglo de dueños.
     *
     * @param email
     * @return
     */
    public Integer buscarIndiceDueño(String email) {
        for (int i = 0; i < dueños.length; i++) {
            if (dueños[i].getCorreo().equals(email)) {
                return i;
            }
        }
        return 1000;
    }

    public Chofer buscarChofer(String email) {
        for (Chofer c : choferes) {
            if (c.getCorreo().equals(email)) {
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
     * @param correo Identificador del chofer.
     */
    public void contratarChofer(String correo) {
        //Método inecesario, eliminar.
    }

    public String getTaxis() {
        return Arrays.toString(taxis);
    }
    
    public String getChoferes(){
        return Arrays.toString(choferes);
    }
    
    public String getDueños(){
        return Arrays.toString(dueños);
    }
}
