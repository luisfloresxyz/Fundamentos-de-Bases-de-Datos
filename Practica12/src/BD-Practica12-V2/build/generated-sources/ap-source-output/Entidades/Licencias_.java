package Entidades;

import Entidades.Personas;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Licencias.class)
public class Licencias_ { 

    public static volatile SingularAttribute<Licencias, Long> numLicencia;
    public static volatile SingularAttribute<Licencias, Date> vigencia;
    public static volatile SingularAttribute<Licencias, Date> fechaExpedicion;
    public static volatile ListAttribute<Licencias, Personas> personasList;

}