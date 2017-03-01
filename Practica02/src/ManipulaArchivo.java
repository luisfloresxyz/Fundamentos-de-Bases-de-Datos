/**
 * ManipulaArchivo.java
 * Clase general para poder escribir/leer archivos
 * @author Eduardo Castro
 * @version Noviembre 2016
 */

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

public class ManipulaArchivo {
	// Objeto para el archico que voy a manipular
	protected File file;

	/**
	 * Construye un archivo para poder editar, el archivo debe de estar a la altura de la 
	 * carpeta scr.
	 * 
	 * @param nombreArchivo nombre del archivo a editar 
	 *  nombreArchivo debe tener el mismo nombre que el archivo
	 */
	public ManipulaArchivo(String nombreArchivo) {
		file = new File(nombreArchivo);
	}

	/**
	 * Escribre informacion en file (archivo a modificar)
	 * 
	 * @param linea
	 *            String con al información a escribir
	 */
	public void escribeArchivo(String linea) {
		// Objeto que escribe en el archivo
		FileWriter fileW;
		try {
			// inicializamos el objeto para escribir en file
			fileW = new FileWriter(file);
			//escribimos linea en el objeto
			fileW.write(linea);
			//cerramos el archivo
			fileW.close();
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
	}

	/**
	 * ---------ESTE METODO UTILIZA BUFFEr PARA LEER---------
	 * Se encarga de leer el contenido del file (archivo a editar) y lo convierte en un arreglo de lineas
	 * @return String[] contiene como elemento cada linea del archivo
	 * @throws ArchivoLecturaNoCreadoException
	 */
	public String[] leeArchivoBuffer() throws ArchivoLecturaNoCreadoException{
		//String donde se guarda la linea actual
		String cadena = "";
		//String donde se guarda la cadena final
		String lineas = "";
		try {
			//Objeto para leer
			FileReader fileR = new FileReader(file);
			//Objeto que almacena lo que se pretende leer
			BufferedReader buffer =new BufferedReader(fileR);
			//Leemos linea por linea y la guardamos en un String que se concatena para la cadena final
			while((cadena = buffer.readLine()) != null){
				lineas += cadena + "|";
			}
			buffer.close();
			fileR.close();
		} catch (FileNotFoundException e) {
			throw new ArchivoLecturaNoCreadoException("No existe de donde leer la información");
		} catch (IOException e) {
			System.out.println("Ocurrió un error en la operación");
		}
		//Regresamos un arreglo de lineas
		return lineas.split("\\|");
	}
	
	/**
	 * ---------ESTE METODO UTILIZA SCANNER PARA LEER---------
	 * Se encarga de leer el contenido del file (archivo a editar) y lo convierte en un arreglo de lineas
	 * @return String[] contiene como elemento cada linea del archivo
	 * @throws ArchivoLecturaNoCreadoException
	 */
	public String[] leeArchivo() throws ArchivoLecturaNoCreadoException{
		//Objeto para leer linea a linea
		Scanner input = null;
		String lineas = "";
		try {
			//Instanciamos objeto con el archivo a leer
			input = new Scanner(file);
			//Se lee linea a linea y lo guardamos en un String separado por un pipe
			while (input.hasNextLine()) {
				lineas += input.nextLine() + "|";
			}
		} catch (FileNotFoundException e) {
			//si no existe archivo lanzamos excepcion para que se cree posteriormente
			throw new ArchivoLecturaNoCreadoException("No hay datos que se puedan leer");
		}
		//convertimos el String a arreglo de Strings. Escapamos el carácter |
		String lines [] = lineas.split("\\|");
		return lines;
	}

}

