package Entidades;

import Entidades.Personas;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Alumnos.class)
public class Alumnos_ { 

    public static volatile SingularAttribute<Alumnos, Long> idUnam;
    public static volatile SingularAttribute<Alumnos, Date> horaEntrada;
    public static volatile SingularAttribute<Alumnos, Date> horaSalida;
    public static volatile SingularAttribute<Alumnos, Personas> curp;
    public static volatile SingularAttribute<Alumnos, String> facultad;

}