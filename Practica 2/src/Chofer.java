
/**
 *
 * @author Flores González Luis.
 */
public class Chofer extends Persona {

    //True si esta manejando un taxi, False en otro caso.
    private boolean conduciendo;

    public Chofer(int celular, String email, String fechaIngreso,
            int licenciaConducir, String domicilio, String nombre, 
            boolean conduciendo) {
        super(celular, email, fechaIngreso, licenciaConducir, domicilio, nombre);
        this.conduciendo = conduciendo;
    }

    public boolean estaConduciendo() {
        return this.conduciendo;
    }

    public void conducir() {
        this.conduciendo = true;
    }

    public void descansar() {
        this.conduciendo = false;
    }

    @Override
    public String toString() {
        return celular + " " + email + " " + fechaIngreso + " " + licenciaConducir
                + " " + domicilio + " " + nombre + " " + conduciendo;
    }
}
