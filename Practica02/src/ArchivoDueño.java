
/**
 * Permite manipular un archivo de dueños, este contiene un dueño por cada
 * linea. El formato es el siguiente: 
 * celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,RFC
 * 
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 * @see ManipulaArchivo, Dueño
 */
public class ArchivoDueño extends ManipulaArchivo{
        
    /**
     * Construye un archivo dueños.txt para poder editar, el archivo debe de
     * estar a la altura de la carpeta src.
     *
     */
    public ArchivoDueño() {
        super("dueños.txt");
    }
 
     /**
     * Escribre informacion en dueños.txt
     *
     * @param linea String con al información a escribir
     */
    public void escribeDueño(Dueño dueño[]){
        String lineaDueño = "";
        for(Dueño d : dueño){
            lineaDueño += d + "\n";
        }
        super.escribeArchivo(lineaDueño);
    }
    
    /**
     * ---------ESTE METODO UTILIZA SCANNER PARA LEER--------- 
     * Se encarga de leer el contenido de dueños.txt (archivo a editar) y lo 
     * convierte en un arreglo de lineas.
     *
     * @return String[] contiene como elemento cada linea del archivo
     * @throws ArchivoLecturaNoCreadoException
     */
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

    /**
     * Toma una linea del archivo dueños.txt y la convierte en un objeto 
     * cdueño.
     * @param cadenaChofer Linea del archivo.
     * @return Objeto Dueño con todos sus atributos requeridos.
     */    
    private Dueño parseaDueño(String cadenaDueño){
        String linea[] = cadenaDueño.trim().split(",");        
        int celular = Integer.parseInt(linea[0]);
        String correo = linea[1];
        String fechaIngreso = linea[2];
        int licenciaConducir = Integer.parseInt(linea[3]);
        String domicilio = linea[4];
        String nombre = linea[5];
        String RFC = linea[6];
        return new Dueño(celular, correo, fechaIngreso, licenciaConducir,
                domicilio, nombre, RFC);
    }
    
}
