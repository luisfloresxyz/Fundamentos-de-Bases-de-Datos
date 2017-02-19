
/**
 *
 * @author Flores González Luis
 */
public class ArchivoTaxi extends ManipulaArchivo{
    
    public ArchivoTaxi() {
        super("taxis.txt");
    }
 
    public void escribeTaxi(Taxi taxi[]){
        String lineaTaxi = "";
        for(Taxi t : taxi){
            lineaTaxi += t + "\n";
        }
        super.escribeArchivo(lineaTaxi);
    }
    
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
    
    private Taxi parseaTaxi(String cadenaTaxi){
        String linea[] = cadenaTaxi.trim().split(",");
        String id = linea[0];
        String modelo = linea[1];
        String marca = linea[2]; 
        int año = Integer.parseInt(linea[3]);
        boolean llantaRefaccion = Boolean.parseBoolean(linea[4]);
        int puertas = Integer.parseInt(linea[5]);
        int cilindros = Integer.parseInt(linea[6]);
        boolean esMiembro = Boolean.parseBoolean(linea[6]);
        String emailDueño = linea[7];
        return new Taxi(id, modelo, marca, año, llantaRefaccion, puertas, 
                cilindros, esMiembro, emailDueño);
    }
}
