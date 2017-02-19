
/**
 *
 * @author Flores González Luis.
 */
public class ArchivoDueño extends ManipulaArchivo{
    
    public ArchivoDueño() {
        super("dueños.txt");
    }
 
    public void escribeDueño(Dueño dueño[]){
        String lineaDueño = "";
        for(Dueño d : dueño){
            lineaDueño += d + "\n";
        }
        super.escribeArchivo(lineaDueño);
    }
    
    public Dueño[] leeDueños() throws ArchivoLecturaNoCreadoException{
        String lineas[] = super.leeArchivo();
        Dueño dueños[] = new Dueño[lineas.length];
        for(int i = 0; i < dueños.length; i++){
            if(!lineas[i].equals("null")){
                dueños[i] = this.parseaDueño(lineas[i]);
            }
        }
        return dueños;
    }
    
    private Dueño parseaDueño(String cadenaDueño){
        String linea[] = cadenaDueño.trim().split(",");        
        int celular = Integer.parseInt(linea[0]);
        String email = linea[1];
        String fechaIngreso = linea[2];
        int licenciaConducir = Integer.parseInt(linea[3]);
        String domicilio = linea[4];
        String nombre = linea[5];
        String RFC = linea[6];
        return new Dueño(celular, email, fechaIngreso, licenciaConducir,
                domicilio, nombre, RFC);
    }
    
}
