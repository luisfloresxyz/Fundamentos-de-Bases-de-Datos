
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
        taxis = new Taxi[100];
        dueños = new Dueño[100];
        choferes = new Chofer[100];
        archivoTaxi = new ArchivoTaxi();
        archivoDueño = new ArchivoDueño();
        archivoChofer = new ArchivoChofer();
        try {
            System.out.println("Leyendo datos de taxis....");
            System.arraycopy(archivoTaxi.leeTaxis(), 0, taxis,
                    0, archivoTaxi.leeTaxis().length);
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
     * Agrega un Taxi al arreglo de taxis y luego lo escribe en el archivo.
     *
     */
    public void agregarTaxi(Taxi nuevo) throws ExcesoException {
        if (!lugarTaxiDisponible()) {
            throw new ExcesoException("Ya no hay espacios disponible para agregar un Taxi");
        } else {
            taxis[getCantidadTaxi()] = nuevo;
            System.out.println(Arrays.toString(taxis));
            archivoTaxi.escribeTaxi(taxis);
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

    /**
     * Agrega un dueño al arreglo de dueños y luego lo escribe en el archivo.
     *
     * @param nuevo
     * @throws ExcesoException
     */
    public void agregarDueño(Dueño nuevo) throws ExcesoException {
        if (!lugarDueñoDisponible()) {
            throw new ExcesoException("Ya no hay espacios disponible para agregar un Dueño");
        } else {
            dueños[getCantidadDueño()] = nuevo;
            archivoDueño.escribeDueño(dueños);
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

    /**
     * Calcula los lugares ocupados por dueños.
     *
     * @return
     */
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
     * Agrega un Chofer al arreglo de choferes y luego lo escribe en el archivo.
     * No hay restriccion para almacenar choferes, estos pueden estar guardados
     * aunque no tengan actividad como chofer.
     */
    public void agregarChofer(Chofer nuevo) throws ExcesoException {
        if (!lugarChoferDisponible()) {
            throw new ExcesoException("Ya no hay espacios disponible para agregar un Chofer");
        } else {
            choferes[getCantidadChofer()] = nuevo;
            archivoChofer.escribeChofer(choferes);
        }
    }

    /**
     * Verifica que exista lugar para un chofer mas.
     *
     * @return
     */
    private boolean lugarChoferDisponible() {
        return getCantidadChofer() < choferes.length;
    }

    /**
     * Calcula los lugares ocupados por choferes.
     *
     * @return
     */
    private int getCantidadChofer() {
        int cantidad = 0;
        for (Chofer c : choferes) {
            if (c != null) {
                cantidad++;
            }
        }
        return cantidad;
    }

    /**
     * Modifica solo una dato del taxi.
     *
     * @param id Id del taxi a modificar.
     */
    public void modificarTaxi(String id) {
        System.out.println("¿Qué dato quieres modificar?");
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
        Scanner leer = new Scanner(System.in);
        int opcion = Integer.parseInt(leer.nextLine());
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
                int nuevoAño = Integer.parseInt(leer.nextLine());
                buscarTaxi(id).setAño(nuevoAño);
                break;
            case 5:
                Boolean tieneLlantaRefaccion = Boolean.parseBoolean(leer.nextLine());
                buscarTaxi(id).tieneLlantaRefaccion(tieneLlantaRefaccion);
                break;
            case 6:
                int numPuertas = Integer.parseInt(leer.nextLine());
                buscarTaxi(id).setNumPuertas(numPuertas);
                break;
            case 7:
                int numCilindros = Integer.parseInt(leer.nextLine());
                buscarTaxi(id).setNumCilindros(numCilindros);
                break;
            case 8:
                boolean esMiembro = Boolean.parseBoolean(leer.nextLine());
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
     * Modifca solo un dato del dueño apartir de la terminal.
     *
     * @param correo ID del dueño.
     */
    public void modificarDueño(String correo) {
        //celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,RFC
        System.out.println("¿Qué dato quieres modificar?");
        System.out.println("Ingresa la opción deseada\n"
                + "1-Celular\n"
                + "2-Correo\n"
                + "3-Fecha de ingreso\n"
                + "4-Licencia de Conducir\n"
                + "5-Domicilio\n"
                + "6-Nombre\n"
                + "7-RFC\n");
        Scanner leer = new Scanner(System.in);
        int opcion = Integer.parseInt(leer.nextLine());
        switch (opcion) {
            case 1:
                int nuevoCelular = Integer.parseInt(leer.nextLine());
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
                int nuevaLicenciaConducir = Integer.parseInt(leer.nextLine());
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

    /**
     * Modifica tan solo un dato del chofer desde la terminal
     *
     * @param correo ID del chofer.
     */
    public void modificarChofer(String correo) {
        //celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,estaActivo
        System.out.println("¿Qué dato quieres modificar?");
        System.out.println("Ingresa la opción deseada\n"
                + "1-Celular\n"
                + "2-Correo\n"
                + "3-Fecha de ingreso\n"
                + "4-Licencia de Conducir\n"
                + "5-Domicilio\n"
                + "6-Nombre\n"
                + "7-Cambiar estatus(Esta descansando o activo)\n");
        Scanner leer = new Scanner(System.in);
        int opcion = Integer.parseInt(leer.nextLine());
        switch (opcion) {
            case 1:
                int nuevoCelular = Integer.parseInt(leer.nextLine());
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
                int nuevaLicenciaConducir = Integer.parseInt(leer.nextLine());
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
                boolean nuevoEstado = Boolean.parseBoolean(leer.nextLine());
                buscarChofer(correo).asignarEstado(nuevoEstado);
                break;
            default:
                System.out.println("Por favor escoge una opción.");
                break;
        }
        archivoChofer.escribeChofer(choferes);
    }

    /**
     * Elimina un taxi del archivo.
     *
     * @param id ID del taxi a eliminar.
     */
    public void eliminarTaxi(String id) {
        //id,modelo,marca,año,llantaRefaccion,puertas,cilindros,esMiembro,correoDueño        
        buscarTaxi(id).setModelo(null);
        buscarTaxi(id).setMarca(null);
        buscarTaxi(id).setAño(0);
        buscarTaxi(id).tieneLlantaRefaccion(false);
        buscarTaxi(id).setNumPuertas(0);
        buscarTaxi(id).setNumCilindros(0);
        buscarTaxi(id).setMiembro(false);
        buscarTaxi(id).setDueño(null);
        buscarTaxi(id).setId(null);
        archivoTaxi.escribeTaxi(taxis);
    }

    /**
     * Elimina un dueño del archiv
     *
     * @param correo ID del dueño a eliminar.
     */
    public void eliminarDueño(String correo) {
        //celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,RFC
        buscarDueño(correo).setCelular(0);
        buscarDueño(correo).setFechaIngreso(null);
        buscarDueño(correo).setLicenciaConducir(0);
        buscarDueño(correo).setDomicilio(null);
        buscarDueño(correo).setNombre(null);
        buscarDueño(correo).setRFC(null);
        buscarDueño(correo).setCorreo(null);
        archivoDueño.escribeDueño(dueños);
    }

    /**
     * Elimina un dueño del archivo.
     *
     * @param correo ID del dueño
     */
    public void elminarChofer(String correo) {
        //celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,estaActivo
        buscarChofer(correo).setCelular(0);
        buscarChofer(correo).setFechaIngreso(null);
        buscarChofer(correo).setLicenciaConducir(0);
        buscarChofer(correo).setDomicilio(null);
        buscarChofer(correo).setNombre(null);
        buscarChofer(correo).asignarEstado(false);
        buscarChofer(correo).setCorreo(null);
        archivoChofer.escribeChofer(choferes);
    }

    /**
     *
     * @param id ID del taxi.
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
     * @return Datos del dueño.
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
     *
     * @param email ID del chofer.
     * @return Datos del chofer.
     */
    public Chofer buscarChofer(String email) {
        for (Chofer c : choferes) {
            if (c.getCorreo().equals(email)) {
                return c;
            }
        }
        return null;
    }

    /**
     * Representaión de todos los taxis.
     *
     * @return Cadena de taxis, este incluye espacios nulos.
     */
    public String getTaxis() {
        return Arrays.toString(taxis);
    }

    /**
     * Representación de todos los choferes.
     *
     * @return Cadena de choferes, este incluye espacios nulos.
     */
    public String getChoferes() {
        return Arrays.toString(choferes);
    }

    /**
     * Representación de todos los dueños.
     *
     * @return Cadena de dueños, este incluye espacios nulos.
     */
    public String getDueños() {
        return Arrays.toString(dueños);
    }
}
