
/**
 *
 * @author Flores González Luis.
 */
public class Taxi {
    
    private String id;
    private String modelo;
    private String marca;
    private int año;
    private boolean llantaRefaccion;
    private int puertas;
    private int cilindros;
    private boolean miembro;//True si pertenece a la asociación.    
    private String emailDueño;
    
    /**
     * Todos los taxis deben tener un dueño.
     * @param id
     * @param modelo
     * @param marca
     * @param año
     * @param llantaRefaccion
     * @param puertas
     * @param cilindros
     * @param miembro
     * @param dueño 
     */
    public Taxi(String id, String modelo, String marca, int año, 
            boolean llantaRefaccion, int puertas, int cilindros, boolean miembro,
            String emailDueño){
        this.id = id;
        this.modelo = modelo;
        this.marca = marca;
        this.año = año;
        this.llantaRefaccion = llantaRefaccion;
        this.puertas = puertas;
        this.cilindros = cilindros;
        this.miembro = miembro;
        this.emailDueño = emailDueño;
    }
    
    /**
     * Motivo por el cual se dio de baja, sí es que se dio.
     * @return 
     */
    public String MotivoBaja(){
        return "";
    }
    
    public boolean esMiembro(){
        return this.miembro;
    }
    
    public void setMiembro(boolean miembro){
        this.miembro = miembro;
    }
    
    public String getId(){
        return this.id;
    }
    
    public String getModelo(){
        return this.modelo;
    }
    
    public String getMarca(){
        return this.marca;
    }
    
    public int getAño(){
        return this.año;
    }
    
    public boolean tieneLlantaRefaccion(){
        return this.llantaRefaccion;
    }
    
    public int getNumPuertas(){
        return this.puertas;
    }
    
    public int getNumCilindros(){
        return this.cilindros;
    }
    
    public void setId(String id){
        this.id = id;
    }
    
    public void setModelo(String modelo){
        this.modelo = modelo;
    }
    
    public void setMarca(String marca){
        this.marca = marca;
    }
    
    public void setAño(int año){
        this.año = año;
    }
    
    public void setDueño(String emailDueño){
        this.emailDueño = emailDueño;
    }
    
    public void tieneLlantaRefaccion(boolean llantaRefaccion){
        this.llantaRefaccion = llantaRefaccion;
    }
    
    public void getNumPuertas(int puertas){
        this.puertas = puertas;
    }
    
    public void getNumCilindros(int cilindros){
        this.cilindros = cilindros;
    }
    
    public String getDueño(){
        return this.emailDueño;
    }
    
    @Override
    public String toString(){
        return id + " " + modelo + " " + marca + " " + año + " " 
                + llantaRefaccion + " " + puertas + " " + cilindros + " " + 
                miembro + " " + emailDueño;
    }
}
