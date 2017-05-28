package Entidades;

import java.math.BigInteger;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Choferes.class)
public class Choferes_ { 

    public static volatile SingularAttribute<Choferes, Date> fechaActivo;
    public static volatile SingularAttribute<Choferes, String> estaActivo;
    public static volatile SingularAttribute<Choferes, BigInteger> tarjetaCirculacion;
    public static volatile SingularAttribute<Choferes, String> curp;

}