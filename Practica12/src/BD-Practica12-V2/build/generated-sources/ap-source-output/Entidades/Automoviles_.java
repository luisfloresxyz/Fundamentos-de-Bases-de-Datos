package Entidades;

import Entidades.Multas;
import Entidades.Viajes;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Automoviles.class)
public class Automoviles_ { 

    public static volatile SingularAttribute<Automoviles, String> marca;
    public static volatile SingularAttribute<Automoviles, String> tipo;
    public static volatile SingularAttribute<Automoviles, String> numMotor;
    public static volatile SingularAttribute<Automoviles, String> llantaRefaccion;
    public static volatile SingularAttribute<Automoviles, Date> fechaActivo;
    public static volatile SingularAttribute<Automoviles, Short> numCilindros;
    public static volatile SingularAttribute<Automoviles, String> estaActivo;
    public static volatile ListAttribute<Automoviles, Viajes> viajesList;
    public static volatile ListAttribute<Automoviles, Multas> multasList;
    public static volatile SingularAttribute<Automoviles, String> modelo;
    public static volatile SingularAttribute<Automoviles, Date> anio;

}