
/**
 * Permite manipular un archivo de choferes, este contiene un chofer por cada
 * linea. El formato es el siguiente: 
 * celular,correo,fechaIngreso,licenciaConducir,domicilio,nombre,estaActivo
 * 
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 * @see ManipulaArchivo, Chofer
 */
public class ArchivoChofer extends ManipulaArchivo {

    /**
     * Construye un archivo choferes.txt para poder editar, el archivo debe de
     * estar a la altura de la carpeta src.
     *
     */
    public ArchivoChofer() {
        super("choferes.txt");
    }

    /**
     * Escribre informacion en choferes.txt
     *
     * @param linea String con al información a escribir
     */
    public void escribeChofer(Chofer chofer[]) {
        String lineaChofer = "";
        for (Chofer c : chofer) {
            lineaChofer += c + "\n";
        }
        super.escribeArchivo(lineaChofer);
    }

    /**
     * ---------ESTE METODO UTILIZA SCANNER PARA LEER--------- 
     * Se encarga de leer el contenido de choferes.txt (archivo a editar) y lo 
     * convierte en un arreglo de lineas.
     *
     * @return String[] contiene como elemento cada linea del archivo
     * @throws ArchivoLecturaNoCreadoException
     */
    public Chofer[] leeChofer() throws ArchivoLecturaNoCreadoException {
        String lineas[] = super.leeArchivo();
        Chofer choferes[] = new Chofer[lineas.length];
        for (int i = 0; i < choferes.length; i++) {
            if (!lineas[i].equals("null")) {
                choferes[i] = this.parseaChofer(lineas[i]);
            }
        }
        return choferes;
    }

    /**
     * Toma una linea del archivo choferes.txt y la convierte en un objeto 
     * chofer.
     * @param cadenaChofer Linea del archivo.
     * @return Objeto chofer con todos sus atributos requeridos.
     */
    private Chofer parseaChofer(String cadenaChofer) {
        String linea[] = cadenaChofer.trim().split(",");
        int celular = Integer.parseInt(linea[0]);
        String correo = linea[1];
        String fechaIngreso = linea[2];
        int licenciaConducir = Integer.parseInt(linea[3]);
        String domicilio = linea[4];
        String nombre = linea[5];
        Boolean estaActivo = Boolean.parseBoolean(linea[6]);
        return new Chofer(celular, correo, fechaIngreso, licenciaConducir,
                domicilio, nombre, estaActivo);
    }

}
