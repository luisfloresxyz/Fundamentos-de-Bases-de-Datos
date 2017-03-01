/**
 * ArchivoLecturaNoCreadoException
 * Clase que implementa a una escepcion para cuando un archivo para leer no sea encontrado
 * @author Eduardo Castro
 * @version Noviembre 2016
 */
public class ArchivoLecturaNoCreadoException extends Exception {
	public ArchivoLecturaNoCreadoException(String message){
		super(message);
	}
}
