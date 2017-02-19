
/**
 *
 * @author Flores González Luis.
 */
public class Persona {
    
    protected int celular;
    protected String email;
    protected String fechaIngreso;
    protected int licenciaConducir;
    protected String domicilio;
    protected String nombre;   
    
    /**
     * 
     * @param celular
     * @param email
     * @param fechaIngreso
     * @param licenciaConducir
     * @param domicilio
     * @param nombre 
     */
    public Persona(int celular, String email, String fechaIngreso,
            int licenciaConducir, String domicilio, String nombre){
        this.celular = celular;
        this.email = email;
        this.fechaIngreso = fechaIngreso;
        this.licenciaConducir = licenciaConducir;
        this.domicilio = domicilio;
        this.nombre = nombre;
    }
    
    /**
     * Persona sin licencia de conducir.
     * @param celular
     * @param email
     * @param fechaIngreso
     * @param domicilio
     * @param nombre 
     */
    public Persona(int celular, String email, String fechaIngreso, 
            String domicilio, String nombre){
        this.celular = celular;
        this.email = email;
        this.fechaIngreso = fechaIngreso;
        this.domicilio = domicilio;
        this.nombre = nombre;
        this.licenciaConducir = 0;
    }
    
    public int getCelular(){
        return this.celular;
    }
    
    public String getEmail(){
        return this.email;
    }
    
    public String getFechaIngreso(){
        return this.fechaIngreso;
    }
    
    public int getLicenciaConducir(){
        return this.licenciaConducir;
    }
    
    public String getDomicilio(){
        return this.domicilio;
    }
    
    public String getNombre(){
        return this.nombre;
    }
    
    public void setCelular(int celular){
        this.celular = celular;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public void setFechaIngreso(String fechaIngreso){
        this.fechaIngreso = fechaIngreso;
    }
    
    public void setLicenciaConducir(int licenciaConducir){
        this.licenciaConducir = licenciaConducir;
    }
    
    public void setDomicilio(String domicilio){
        this.domicilio = domicilio;
    }
    
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    
}
