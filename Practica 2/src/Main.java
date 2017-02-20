
import java.util.InputMismatchException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Modela el comportamiento entre dueños y choferes con su relación entre taxis.
 * 
 * @author Flores González Luis.
 * @version 1.0 - Febrero 2017
 * @see Asociacion
 */
public class Main {

    public static void main(String[] args) {
        boolean bandera;
        int opcion = 0;
        Scanner input = new Scanner(System.in);
        Asociacion UNAM = new Asociacion();
        do {
            bandera = true;
            System.out.println("Ingresa la opción deseada\n"
                    + "1-Agregar taxi\n"
                    + "2-Agregar dueño\n"
                    + "3-Agregar chofer\n"
                    + "4-Modificar taxi\n"
                    + "5-Modificar dueño\n"
                    + "6-Modificar chofer\n"
                    + "7-Eliminar taxi\n"
                    + "8-Eliminar dueño\n"
                    + "9-Eliminar chofer\n"
                    + "10-Buscar taxi\n"
                    + "11-Buscar dueño\n"
                    + "12-Buscar chofer\n"
                    + "13-Mostrar taxis/dueños/choferes\n"
                    + "14-Salir\n");
            try {
                opcion = input.nextInt();
            } catch (InputMismatchException e) {
                input.next();
                System.out.println("Ingresa un número como opción");
            }
            if (opcion > 0 && opcion < 15) {
                switch (opcion) {
                    case 1:
                 
                    try {
                        UNAM.agregarTaxi(new Taxi("sdasdasd", "modelin", 
                                "marcota", 1999, true, 4, 5, true, "p@da.com"));
                    } catch (ExcesoException ex) {
                        Logger.getLogger(Main.class.getName()).log(Level.SEVERE,
                                null, ex);
                    }
                
                        break;
                    case 2:
                        System.out.println("Aquí va código.");
                        break;
                    case 3:
                        System.out.println("Aquí va código.");
                        break;
                    case 4:
                        UNAM.modificarTaxi("Prueba");                        
                        break;
                    case 5:
                        System.out.println("Aquí va código.");
                        break;
                    case 6:
                        System.out.println("Aquí va código.");
                        break;
                    case 7:
                        System.out.println("Aquí va código.");
                        break;
                    case 8:
                        System.out.println("Aquí va código.");
                        break;
                    case 9:
                        System.out.println("Aquí va código.");
                        break;
                    case 10:
                        System.out.println("Aquí va código.");
                        break;
                    case 11:
                        System.out.println("Aquí va código.");
                        break;
                    case 12:
                        System.out.println("Aquí va código.");
                        break;
                    case 13:
                        System.out.println("Aquí va código.");
                        break;
                    case 14:
                        System.out.println("Adios :).");
                        bandera = false;
                        break;
                    default:
                        break;
                }
            }
        } while (bandera);

    }

}
