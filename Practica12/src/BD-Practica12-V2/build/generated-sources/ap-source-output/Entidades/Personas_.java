package Entidades;

import Entidades.Academicos;
import Entidades.Agentes;
import Entidades.Alumnos;
import Entidades.Celulares;
import Entidades.Correos;
import Entidades.Licencias;
import Entidades.Trabajadores;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-05-27T19:37:09")
@StaticMetamodel(Personas.class)
public class Personas_ { 

    public static volatile SingularAttribute<Personas, String> estado;
    public static volatile SingularAttribute<Personas, String> paterno;
    public static volatile SingularAttribute<Personas, Integer> numInterior;
    public static volatile SingularAttribute<Personas, Integer> codigoPostal;
    public static volatile SingularAttribute<Personas, Date> fechaNacimiento;
    public static volatile SingularAttribute<Personas, String> callePrincipal;
    public static volatile SingularAttribute<Personas, Integer> numExterior;
    public static volatile ListAttribute<Personas, Celulares> celularesList;
    public static volatile ListAttribute<Personas, Agentes> agentesList;
    public static volatile SingularAttribute<Personas, String> nombre;
    public static volatile SingularAttribute<Personas, String> colonia;
    public static volatile SingularAttribute<Personas, String> materno;
    public static volatile ListAttribute<Personas, Trabajadores> trabajadoresList;
    public static volatile SingularAttribute<Personas, String> calle2;
    public static volatile ListAttribute<Personas, Licencias> licenciasList;
    public static volatile SingularAttribute<Personas, String> calle1;
    public static volatile SingularAttribute<Personas, String> delegacionMunicipio;
    public static volatile SingularAttribute<Personas, String> ciudad;
    public static volatile ListAttribute<Personas, Academicos> academicosList;
    public static volatile ListAttribute<Personas, Alumnos> alumnosList;
    public static volatile ListAttribute<Personas, Correos> correosList;
    public static volatile SingularAttribute<Personas, String> curp;
    public static volatile SingularAttribute<Personas, String> referencia;

}