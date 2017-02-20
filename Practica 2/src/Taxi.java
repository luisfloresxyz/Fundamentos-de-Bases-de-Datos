
/**
 * Representación de un vehiculo.
 *
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 * @see Persona
 */
public class Taxi {

    private String id;
    private String modelo;
    private String marca;
    private int año;
    private boolean llantaRefaccion;
    private int puertas;
    private int cilindros;
    private boolean esMiembroAsociacion;//True si pertenece a la asociación.    
    private String correoDueño;
    private String motivoBaja;

    /**
     * Todos los taxis deben tener un dueño.
     *
     * @param id
     * @param modelo
     * @param marca
     * @param año
     * @param llantaRefaccion
     * @param puertas
     * @param cilindros
     * @param miembro
     * @param emailDueño
     */
    public Taxi(String id, String modelo, String marca, int año,
            boolean llantaRefaccion, int puertas, int cilindros, boolean miembro,
            String emailDueño) {
        this.id = id;
        this.modelo = modelo;
        this.marca = marca;
        this.año = año;
        this.llantaRefaccion = llantaRefaccion;
        this.puertas = puertas;
        this.cilindros = cilindros;
        this.esMiembroAsociacion = miembro;
        this.correoDueño = emailDueño;
    }

    /**
     * Motivo por el cual se dio de baja.
     *
     * @return
     */
    public String getMotivoBaja() {
        return this.motivoBaja;
    }

    public String getId() {
        return this.id;
    }

    public String getModelo() {
        return this.modelo;
    }

    public String getMarca() {
        return this.marca;
    }

    public int getAño() {
        return this.año;
    }

    public boolean tieneLlantaRefaccion() {
        return this.llantaRefaccion;
    }

    public int getNumPuertas() {
        return this.puertas;
    }

    public int getNumCilindros() {
        return this.cilindros;
    }

    /**
     * Motivo por el cual se dio de baja.
     *
     * @param motivo
     */
    public void setMotivoBaja(String motivo) {
        this.motivoBaja = motivo;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setAño(int año) {
        this.año = año;
    }

    public void setDueño(String emailDueño) {
        this.correoDueño = emailDueño;
    }
    
    public void setNumPuertas(int puertas){
        this.puertas = puertas;
    }
    
    public void setNumCilindros(int cilindros){
        this.cilindros = cilindros;
    }
    
    /**
     * Indica si es miembro de la asociación o no.
     * @param esMiembro True si es miembro de la asociación, false en otro caso.
     */
    public void setMiembro(boolean esMiembro){
        this.esMiembroAsociacion = esMiembro;
    }
    
    public void tieneLlantaRefaccion(boolean llantaRefaccion) {
        this.llantaRefaccion = llantaRefaccion;
    }

    public void getNumPuertas(int puertas) {
        this.puertas = puertas;
    }

    public void getNumCilindros(int cilindros) {
        this.cilindros = cilindros;
    }

    public String getDueño() {
        return this.correoDueño;
    }

    /**
     * Revisa si es miembro de la asociación.
     *
     * @return True si es miembro, false en otro caso.
     */
    public boolean esMiembroAsociacion() {
        return this.esMiembroAsociacion;
    }

    /**
     * Indica que el taxi esta en la asociación.
     */
    public void asociar() {
        this.esMiembroAsociacion = true;
    }

    /**
     * Indica que el taxi no esta en la asociación.
     */
    public void desasociar() {
        this.esMiembroAsociacion = false;
    }

    @Override
    public String toString() {
        return id + " " + modelo + " " + marca + " " + año + " "
                + llantaRefaccion + " " + puertas + " " + cilindros + " "
                + esMiembroAsociacion + " " + correoDueño;
    }
}
