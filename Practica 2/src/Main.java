
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
        Scanner scan = new Scanner(System.in);
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
            opcion = Integer.parseInt(scan.nextLine());
            if (opcion > 0 && opcion < 15) {
                switch (opcion) {
                    case 1:                        
                        Taxi nuevo = new Taxi();
                            try {
                                UNAM.agregarTaxi(nuevo);
                            } catch (ExcesoException ex) {
                                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
                            }
                        break;
                    case 2:
                        
                        Dueño nuevoDueño = new Dueño();
                         {
                            try {
                                UNAM.agregarDueño(nuevoDueño);
                            } catch (ExcesoException ex) {
                                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
                            }
                        }
                        break;
                    case 3:
                        
                        Chofer nuevoChofer = new Chofer();
                         {
                            try {
                                UNAM.agregarChofer(nuevoChofer);
                            } catch (ExcesoException ex) {
                                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
                            }
                        }
                        break;
                    case 4:                        
                        System.out.println("Ingresa el Id del taxi para hacer "
                                + "la modificacion:\n");
                        Scanner leerIdTaxi = new Scanner(System.in);
                        String idTaxi = leerIdTaxi.nextLine();                                                                    
                        UNAM.modificarTaxi(idTaxi);
                        break;
                    case 5:
                        System.out.println("Ingrese el correo del dueño para "
                                + "modificar a ese mismo dueño:");
                        String correoDueño = scan.nextLine();
                        UNAM.modificarDueño(correoDueño);
                        break;
                    case 6:
                        System.out.println("Ingrese el correo del chofer que "
                                + "quiere modificar:");
                        String correoChofer = scan.nextLine();
                        UNAM.modificarChofer(correoChofer);
                        break;
                    case 7:
                        System.out.println("Ingresa el Id del taxi para hacer "
                                + "la eliminacion:\n");
                        String idTaxiElim = scan.nextLine();
                        UNAM.eliminarTaxi(idTaxiElim);
                        break;
                    case 8:
                        System.out.println("Ingresa el correo del dueño a "
                                + "eliminar:");
                        String correoDueñoElim = scan.nextLine();
                        UNAM.eliminarDueño(correoDueñoElim);
                        break;
                    case 9:
                        System.out.println("Ingresa el correo del chofer a"
                                + "eliminar:");
                        String correoChoferElim = scan.nextLine();
                        UNAM.elminarChofer(correoChoferElim);
                        break;
                    case 10:
                        System.out.println("Ingresa el ID del taxi para buscarlo:\n");
                        String taxiEncontrado = scan.nextLine();
                        System.out.println(UNAM.buscarTaxi(taxiEncontrado));
                        break;
                    case 11:
                        System.out.println("Ingresa el correo del dueño para buscarlo:\n");
                        String dueñoEncontrado = scan.nextLine();
                        System.out.println(UNAM.buscarDueño(dueñoEncontrado));
                        break;
                    case 12:
                        System.out.println("Ingresa el correo del chofer para buscarlo:\n");
                        String choferEncontrado = scan.nextLine();
                        System.out.println(UNAM.buscarChofer(choferEncontrado));
                        break;
                    case 13:
                        System.out.println("Registro de Taxis.");
                        System.out.println(UNAM.getTaxis());
                        System.out.println("Registro de Dueños.");
                        System.out.println(UNAM.getDueños());
                        System.out.println("Registro de choferes.");
                        System.out.println(UNAM.getChoferes());
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
