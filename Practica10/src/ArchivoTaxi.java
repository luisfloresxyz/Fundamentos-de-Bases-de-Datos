
/**
 * Permite manipular un archivo de taxis, este contiene un taxi por cada
 * linea. El formato es el siguiente: 
 * id,modelo,marca,año,llantaRefaccion,puertas,cilindros,esMiembro,correoDueño
 * 
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 * @see ManipulaArchivo, Taxi
 */
public class ArchivoTaxi extends ManipulaArchivo{
    
    /**
     * Construye un archivo taxis.txt para poder editar, el archivo debe de
     * estar a la altura de la carpeta src.
     *
     */
    public ArchivoTaxi() {
        super("taxis.txt");
    }
 
    /**
     * Escribir informacion en taxis.txt
     *
     * @param linea String con al información a escribir
     */
    public void escribeTaxi(Taxi taxi[]){
        String lineaTaxi = "";
        for(Taxi t : taxi){
            lineaTaxi += t + "\n";
        }
        super.escribeArchivo(lineaTaxi);
    }
    
    /**
     * ---------ESTE METODO UTILIZA SCANNER PARA LEER--------- 
     * Se encarga de leer el contenido de taxis.txt (archivo a editar) y lo 
     * convierte en un arreglo de lineas.
     *
     * @return String[] contiene como elemento cada linea del archivo
     * @throws ArchivoLecturaNoCreadoException
     */
    public Taxi[] leeTaxis() throws ArchivoLecturaNoCreadoException{
        String lineas[] = super.leeArchivo();
        Taxi taxis[] = new Taxi[lineas.length];
        for(int i = 0; i < taxis.length; i++){
            if(!lineas[i].equals("null")){
                taxis[i] = this.parseaTaxi(lineas[i]);
            }
        }
        return taxis;
    }
    
    /**
     * Toma una linea del archivo taxis.txt y la convierte en un objeto 
     * taxi.
     * @param cadenaChofer Linea del archivo.
     * @return Objeto Taxi con todos sus atributos requeridos.
     */
    private Taxi parseaTaxi(String cadenaTaxi){
        String linea[] = cadenaTaxi.trim().split(",");
        String id = linea[0];
        String modelo = linea[1];
        String marca = linea[2]; 
        int año = Integer.parseInt(linea[3]);
        boolean llantaRefaccion = Boolean.parseBoolean(linea[4]);
        int puertas = Integer.parseInt(linea[5]);
        int cilindros = Integer.parseInt(linea[6]);
        boolean esMiembro = Boolean.parseBoolean(linea[7]);
        String correoDueño = linea[8];
        return new Taxi(id, modelo, marca, año, llantaRefaccion, puertas, 
                cilindros, esMiembro, correoDueño);
    }
}
