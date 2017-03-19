
import java.util.Scanner;


/**
 * Representación del dueño de un vehiculo(taxi).
 *
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 * @see Persona
 */
public class Dueño extends Persona {

    private String RFC;

    /**
     * Datos de un dueño que incluye atributos de una persona con licencia de
     * conducir además de tener RFC.
     *
     * @param celular
     * @param email
     * @param fechaIngreso
     * @param licenciaConducir
     * @param domicilio
     * @param nombre
     * @param RFC
     */
    public Dueño(int celular, String email, String fechaIngreso,
            int licenciaConducir, String domicilio, String nombre, String RFC) {
        super(celular, email, fechaIngreso, licenciaConducir, domicilio, nombre);
        this.RFC = RFC;
    }

    /**
     * Se construye un dueño recolectando los datos desde la terminal.
     */
    public Dueño() {
        super();
        Scanner scanDueño = new Scanner(System.in);
        System.out.println("Celular del dueño:(8 Digitos)\n");
        super.celular = Integer.parseInt(scanDueño.nextLine());
        System.out.println("Correo del dueño:\n");
        super.correo = scanDueño.nextLine();
        System.out.println("Fecha de ingreso del dueño:\n");
        super.fechaIngreso = scanDueño.nextLine();
        System.out.println("Domicilio del dueño:\n");
        super.domicilio = scanDueño.nextLine();
        System.out.println("Licencia de conducir:(Solo números)\n");
        super.licenciaConducir = Integer.parseInt(scanDueño.nextLine());
        System.out.println("Nombre del dueño:\n");
        super.nombre = scanDueño.nextLine();
        System.out.println("RFC del dueño:\n");
        this.RFC = scanDueño.nextLine();        
    }

    /**
     * Datos de un dueño que incluye atributos de una persona sin licencia de
     * conducir además de tener RFC.
     *
     * @param celular
     * @param email
     * @param fechaIngreso
     * @param domicilio
     * @param nombre
     * @param RFC
     */
    public Dueño(int celular, String email, String fechaIngreso,
            String domicilio, String nombre, String RFC) {
        super(celular, email, fechaIngreso, domicilio, nombre);
        this.RFC = RFC;
    }

    public String getRFC() {
        return this.RFC;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
    }

    @Override
    public String toString() {
        return celular + "," + correo + "," + fechaIngreso + ","
                + licenciaConducir + "," + domicilio + "," + nombre + "," + RFC;
    }
}
