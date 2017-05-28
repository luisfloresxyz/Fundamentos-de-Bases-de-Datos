/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "PERSONAS", schema="Agencia")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Personas.findAll", query = "SELECT p FROM Personas p")
    , @NamedQuery(name = "Personas.findByCurp", query = "SELECT p FROM Personas p WHERE p.curp = :curp")
    , @NamedQuery(name = "Personas.findByCallePrincipal", query = "SELECT p FROM Personas p WHERE p.callePrincipal = :callePrincipal")
    , @NamedQuery(name = "Personas.findByColonia", query = "SELECT p FROM Personas p WHERE p.colonia = :colonia")
    , @NamedQuery(name = "Personas.findByDelegacionMunicipio", query = "SELECT p FROM Personas p WHERE p.delegacionMunicipio = :delegacionMunicipio")
    , @NamedQuery(name = "Personas.findByEstado", query = "SELECT p FROM Personas p WHERE p.estado = :estado")
    , @NamedQuery(name = "Personas.findByCiudad", query = "SELECT p FROM Personas p WHERE p.ciudad = :ciudad")
    , @NamedQuery(name = "Personas.findByCalle1", query = "SELECT p FROM Personas p WHERE p.calle1 = :calle1")
    , @NamedQuery(name = "Personas.findByCalle2", query = "SELECT p FROM Personas p WHERE p.calle2 = :calle2")
    , @NamedQuery(name = "Personas.findByReferencia", query = "SELECT p FROM Personas p WHERE p.referencia = :referencia")
    , @NamedQuery(name = "Personas.findByNumExterior", query = "SELECT p FROM Personas p WHERE p.numExterior = :numExterior")
    , @NamedQuery(name = "Personas.findByNumInterior", query = "SELECT p FROM Personas p WHERE p.numInterior = :numInterior")
    , @NamedQuery(name = "Personas.findByCodigoPostal", query = "SELECT p FROM Personas p WHERE p.codigoPostal = :codigoPostal")
    , @NamedQuery(name = "Personas.findByNombre", query = "SELECT p FROM Personas p WHERE p.nombre = :nombre")
    , @NamedQuery(name = "Personas.findByMaterno", query = "SELECT p FROM Personas p WHERE p.materno = :materno")
    , @NamedQuery(name = "Personas.findByPaterno", query = "SELECT p FROM Personas p WHERE p.paterno = :paterno")
    , @NamedQuery(name = "Personas.findByFechaNacimiento", query = "SELECT p FROM Personas p WHERE p.fechaNacimiento = :fechaNacimiento")})
public class Personas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;
    @Column(name = "calle_principal")
    private String callePrincipal;
    @Column(name = "colonia")
    private String colonia;
    @Column(name = "delegacion_municipio")
    private String delegacionMunicipio;
    @Column(name = "estado")
    private String estado;
    @Column(name = "ciudad")
    private String ciudad;
    @Column(name = "calle_1")
    private String calle1;
    @Column(name = "calle_2")
    private String calle2;
    @Column(name = "referencia")
    private String referencia;
    @Column(name = "num_exterior")
    private Integer numExterior;
    @Column(name = "num_interior")
    private Integer numInterior;
    @Column(name = "codigo_postal")
    private Integer codigoPostal;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "materno")
    private String materno;
    @Column(name = "paterno")
    private String paterno;
    @Column(name = "fecha_nacimiento")
    @Temporal(TemporalType.DATE)
    private Date fechaNacimiento;
    @JoinTable(name = "TENER", joinColumns = {
        @JoinColumn(name = "curp", referencedColumnName = "curp")}, inverseJoinColumns = {
        @JoinColumn(name = "num_licencia", referencedColumnName = "num_licencia")})
    @ManyToMany
    private List<Licencias> licenciasList;
    @OneToMany(mappedBy = "curp")
    private List<Trabajadores> trabajadoresList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "curp")
    private List<Correos> correosList;
    @OneToMany(mappedBy = "curp")
    private List<Academicos> academicosList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "curp")
    private List<Celulares> celularesList;
    @OneToMany(mappedBy = "curp")
    private List<Alumnos> alumnosList;
    @OneToMany(mappedBy = "curp")
    private List<Agentes> agentesList;

    public Personas() {
    }

    public Personas(String curp) {
        this.curp = curp;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getCallePrincipal() {
        return callePrincipal;
    }

    public void setCallePrincipal(String callePrincipal) {
        this.callePrincipal = callePrincipal;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getDelegacionMunicipio() {
        return delegacionMunicipio;
    }

    public void setDelegacionMunicipio(String delegacionMunicipio) {
        this.delegacionMunicipio = delegacionMunicipio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getCalle1() {
        return calle1;
    }

    public void setCalle1(String calle1) {
        this.calle1 = calle1;
    }

    public String getCalle2() {
        return calle2;
    }

    public void setCalle2(String calle2) {
        this.calle2 = calle2;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
    }

    public Integer getNumExterior() {
        return numExterior;
    }

    public void setNumExterior(Integer numExterior) {
        this.numExterior = numExterior;
    }

    public Integer getNumInterior() {
        return numInterior;
    }

    public void setNumInterior(Integer numInterior) {
        this.numInterior = numInterior;
    }

    public Integer getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(Integer codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMaterno() {
        return materno;
    }

    public void setMaterno(String materno) {
        this.materno = materno;
    }

    public String getPaterno() {
        return paterno;
    }

    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    @XmlTransient
    public List<Licencias> getLicenciasList() {
        return licenciasList;
    }

    public void setLicenciasList(List<Licencias> licenciasList) {
        this.licenciasList = licenciasList;
    }

    @XmlTransient
    public List<Trabajadores> getTrabajadoresList() {
        return trabajadoresList;
    }

    public void setTrabajadoresList(List<Trabajadores> trabajadoresList) {
        this.trabajadoresList = trabajadoresList;
    }

    @XmlTransient
    public List<Correos> getCorreosList() {
        return correosList;
    }

    public void setCorreosList(List<Correos> correosList) {
        this.correosList = correosList;
    }

    @XmlTransient
    public List<Academicos> getAcademicosList() {
        return academicosList;
    }

    public void setAcademicosList(List<Academicos> academicosList) {
        this.academicosList = academicosList;
    }

    @XmlTransient
    public List<Celulares> getCelularesList() {
        return celularesList;
    }

    public void setCelularesList(List<Celulares> celularesList) {
        this.celularesList = celularesList;
    }

    @XmlTransient
    public List<Alumnos> getAlumnosList() {
        return alumnosList;
    }

    public void setAlumnosList(List<Alumnos> alumnosList) {
        this.alumnosList = alumnosList;
    }

    @XmlTransient
    public List<Agentes> getAgentesList() {
        return agentesList;
    }

    public void setAgentesList(List<Agentes> agentesList) {
        this.agentesList = agentesList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (curp != null ? curp.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Personas)) {
            return false;
        }
        Personas other = (Personas) object;
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Personas[ curp=" + curp + " ]";
    }
    
}
