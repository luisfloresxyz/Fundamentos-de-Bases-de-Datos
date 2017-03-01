
/**
 * Representación de una persona con datos de trabajo que tiene por 
 * identificación un correo.
 *
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 */
public class Persona {

    protected int celular;
    protected String correo;
    protected String fechaIngreso;
    protected int licenciaConducir;
    protected String domicilio;
    protected String nombre;

    /**
     * Datos de una persona con licencia de conducir.
     * 
     * @param celular
     * @param correo
     * @param fechaIngreso
     * @param licenciaConducir
     * @param domicilio
     * @param nombre
     */
    public Persona(int celular, String correo, String fechaIngreso,
            int licenciaConducir, String domicilio, String nombre) {
        this.celular = celular;
        this.correo = correo;
        this.fechaIngreso = fechaIngreso;
        this.licenciaConducir = licenciaConducir;
        this.domicilio = domicilio;
        this.nombre = nombre;
    }

    /**
     * Persona sin licencia de conducir, ya que no siempre es requerida.
     *
     * @param celular
     * @param correo
     * @param fechaIngreso
     * @param domicilio
     * @param nombre
     */
    public Persona(int celular, String correo, String fechaIngreso,
            String domicilio, String nombre) {
        this.celular = celular;
        this.correo = correo;
        this.fechaIngreso = fechaIngreso;
        this.domicilio = domicilio;
        this.nombre = nombre;
        this.licenciaConducir = 0;
    }

    public Persona(){
        
    }
    
    public int getCelular() {
        return this.celular;
    }

    public String getCorreo() {
        return this.correo;
    }

    public String getFechaIngreso() {
        return this.fechaIngreso;
    }

    public int getLicenciaConducir() {
        return this.licenciaConducir;
    }

    public String getDomicilio() {
        return this.domicilio;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public void setFechaIngreso(String fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public void setLicenciaConducir(int licenciaConducir) {
        this.licenciaConducir = licenciaConducir;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

}
