package Entidades;

import Entidades.Automoviles;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Viajes.class)
public class Viajes_ { 

    public static volatile SingularAttribute<Viajes, Short> numPersonas;
    public static volatile SingularAttribute<Viajes, Date> fecha;
    public static volatile ListAttribute<Viajes, Automoviles> automovilesList;
    public static volatile SingularAttribute<Viajes, String> lugarComienzo;
    public static volatile SingularAttribute<Viajes, Date> horaFinal;
    public static volatile SingularAttribute<Viajes, String> lugarDestino;
    public static volatile SingularAttribute<Viajes, Long> idViaje;
    public static volatile SingularAttribute<Viajes, Date> horaInicio;

}