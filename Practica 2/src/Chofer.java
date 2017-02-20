
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

    /**
     * Si tiene a cargo un taxi es true, false en otro caso.
     * 
     * @return True si esta manejando un taxi, false en otro caso.
     */
    public boolean estaActivo() {
        return this.estaActivo;
    }

    public void asignarEstado(boolean estaActivo){
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
