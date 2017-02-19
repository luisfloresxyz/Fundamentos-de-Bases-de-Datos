
/**
 *
 * @author Flores González Luis
 */
public class ArchivoChofer extends ManipulaArchivo {
    
    public ArchivoChofer(){
        super("choferes.txt");
    }
 
    public void escribeChofer(Chofer chofer[]){
        String lineaChofer = "";
        for(Chofer c : chofer){
            lineaChofer += c + "\n";
        }
        super.escribeArchivo(lineaChofer);
    }
    
    public Chofer[] leeChofer() throws ArchivoLecturaNoCreadoException{
        String lineas[] = super.leeArchivo();
        Chofer choferes[] = new Chofer[lineas.length];
        for(int i = 0; i < choferes.length; i++){
            if(!lineas[i].equals("null")){
                choferes[i] = this.parseaChofer(lineas[i]);
            }
        }
        return choferes;
    }
    
    private Chofer parseaChofer(String cadenaChofer){
        String linea[] = cadenaChofer.trim().split(",");        
        int celular = Integer.parseInt(linea[0]);
        String email = linea[1];
        String fechaIngreso = linea[2];
        int licenciaConducir = Integer.parseInt(linea[3]);
        String domicilio = linea[4];
        String nombre = linea[5];
        Boolean conduciendo = Boolean.parseBoolean(linea[6]);
        return new Chofer(celular, email, fechaIngreso, licenciaConducir, 
                domicilio, nombre, conduciendo);
    }
    
}
