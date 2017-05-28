package Entidades;

import Entidades.Multas;
import Entidades.Personas;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Agentes.class)
public class Agentes_ { 

    public static volatile SingularAttribute<Agentes, String> numPlaca;
    public static volatile ListAttribute<Agentes, Multas> multasList;
    public static volatile SingularAttribute<Agentes, String> sector;
    public static volatile SingularAttribute<Agentes, Personas> curp;

}