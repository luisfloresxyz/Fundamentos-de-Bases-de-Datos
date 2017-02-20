
/**
 * Representación del dueño de un vehiculo(taxi).
 * 
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 * @see Persona
 */
public class Dueño extends Persona{
    
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
    
    
    public String getRFC(){
        return this.RFC;
    }
    
    public void setRFC(String RFC){
        this.RFC = RFC;
    }
    
    @Override
    public String toString(){
        return celular + "," + correo + "," + fechaIngreso + "," 
                + licenciaConducir + "," + domicilio + "," + nombre + "," + RFC;
    }
}
