package Entidades;

import Entidades.Personas;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Trabajadores.class)
public class Trabajadores_ { 

    public static volatile SingularAttribute<Trabajadores, String> unidad;
    public static volatile SingularAttribute<Trabajadores, Long> idUnam;
    public static volatile SingularAttribute<Trabajadores, Date> horaEntrada;
    public static volatile SingularAttribute<Trabajadores, Date> horaSalida;
    public static volatile SingularAttribute<Trabajadores, Personas> curp;

}