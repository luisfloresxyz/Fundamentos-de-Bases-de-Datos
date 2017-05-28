package Entidades;

import Entidades.Personas;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Academicos.class)
public class Academicos_ { 

    public static volatile SingularAttribute<Academicos, String> instituto;
    public static volatile SingularAttribute<Academicos, Long> idUnam;
    public static volatile SingularAttribute<Academicos, Date> horaEntrada;
    public static volatile SingularAttribute<Academicos, Date> horaSalida;
    public static volatile SingularAttribute<Academicos, Personas> curp;

}