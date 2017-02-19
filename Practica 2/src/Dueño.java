
/**
 *
 * @author Flores González Luis.
 */
public class Dueño extends Persona{
    
    private String RFC;

    /**
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
     * Dueño sin licencia de conducir.
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
    
    
    public String getRFC(){
        return this.RFC;
    }
    
    public void setRFC(String RFC){
        this.RFC = RFC;
    }
    
    @Override
    public String toString(){
        return celular + " " + email + " " + fechaIngreso + " " 
                + licenciaConducir + " " + domicilio + " " + nombre + " " + RFC;
    }
}
