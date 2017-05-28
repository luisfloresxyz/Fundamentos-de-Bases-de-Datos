package Entidades;

import Entidades.Agentes;
import Entidades.Automoviles;
import java.math.BigInteger;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Multas.class)
public class Multas_ { 

    public static volatile SingularAttribute<Multas, Integer> idMulta;
    public static volatile SingularAttribute<Multas, Date> fecha;
    public static volatile SingularAttribute<Multas, String> estado;
    public static volatile SingularAttribute<Multas, BigInteger> monto;
    public static volatile SingularAttribute<Multas, Automoviles> numMotor;
    public static volatile SingularAttribute<Multas, String> infraccion;
    public static volatile SingularAttribute<Multas, String> delegacionMunicipio;
    public static volatile SingularAttribute<Multas, Date> hora;
    public static volatile SingularAttribute<Multas, String> ciudad;
    public static volatile SingularAttribute<Multas, String> calle;
    public static volatile SingularAttribute<Multas, Agentes> numPlaca;
    public static volatile SingularAttribute<Multas, String> colonia;

}