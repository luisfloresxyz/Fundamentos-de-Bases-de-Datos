
import java.util.Scanner;

/**
 * Representación de un chofer.
 *
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 * @see Persona
 */
public class Chofer extends Persona {

    //True si esta manejando un taxi, false en otro caso.
    private boolean estaActivo;

    /**
     * Datos de un chofer.
     *
     * @param celular
     * @param email
     * @param fechaIngreso
     * @param licenciaConducir
     * @param domicilio
     * @param nombre
     * @param estaActivo
     */
    public Chofer(int celular, String email, String fechaIngreso,
            int licenciaConducir, String domicilio, String nombre,
            boolean estaActivo) {
        super(celular, email, fechaIngreso, licenciaConducir, domicilio, nombre);
        this.estaActivo = estaActivo;
    }

    public Chofer() {
        super();
        Scanner scanChofer = new Scanner(System.in);
        System.out.println("Celular del chofer:\n");
        super.celular = Integer.parseInt(scanChofer.nextLine());
        System.out.println("Correo del chofer:\n");
        super.correo = scanChofer.nextLine();
        System.out.println("Fecha de ingreso:\n");
        super.fechaIngreso = scanChofer.nextLine();
        System.out.println("Licencia de conducir:(Solo números)\n");
        super.licenciaConducir = Integer.parseInt(scanChofer.nextLine());
        System.out.println("Nombre del chofer:\n");
        super.nombre = scanChofer.nextLine();
        System.out.println("Domicilio del chofer:\n");
        super.domicilio = scanChofer.nextLine();
        System.out.println("Estatus del chofer, es decir,"
                + "esta en espera o esta activo. true = si esta "
                + "activo, false = no esta activo\n");
        this.estaActivo = Boolean.parseBoolean(scanChofer.nextLine());                
    }

    /**
     * Si tiene a cargo un taxi es true, false en otro caso.
     *
     * @return True si esta manejando un taxi, false en otro caso.
     */
    public boolean estaActivo() {
        return this.estaActivo;
    }

    public void asignarEstado(boolean estaActivo) {
        this.estaActivo = estaActivo;
    }

    /**
     * Sale del modo de espera.
     */
    public void conducir() {
        this.estaActivo = true;
    }

    /**
     * Entra en modo espera.
     */
    public void descansar() {
        this.estaActivo = false;
    }

    @Override
    public String toString() {
        return celular + "," + correo + "," + fechaIngreso + "," + licenciaConducir
                + "," + domicilio + "," + nombre + "," + estaActivo;
    }
}
