/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
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
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "EMPLEADOS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Empleados.findAll", query = "SELECT e FROM Empleados e")
    , @NamedQuery(name = "Empleados.findByCurp", query = "SELECT e FROM Empleados e WHERE e.curp = :curp")
    , @NamedQuery(name = "Empleados.findByNombre", query = "SELECT e FROM Empleados e WHERE e.nombre = :nombre")
    , @NamedQuery(name = "Empleados.findByPaterno", query = "SELECT e FROM Empleados e WHERE e.paterno = :paterno")
    , @NamedQuery(name = "Empleados.findByMaterno", query = "SELECT e FROM Empleados e WHERE e.materno = :materno")
    , @NamedQuery(name = "Empleados.findByCallePrincipal", query = "SELECT e FROM Empleados e WHERE e.callePrincipal = :callePrincipal")
    , @NamedQuery(name = "Empleados.findByColonia", query = "SELECT e FROM Empleados e WHERE e.colonia = :colonia")
    , @NamedQuery(name = "Empleados.findByDelegacionMunicipio", query = "SELECT e FROM Empleados e WHERE e.delegacionMunicipio = :delegacionMunicipio")
    , @NamedQuery(name = "Empleados.findByEstado", query = "SELECT e FROM Empleados e WHERE e.estado = :estado")
    , @NamedQuery(name = "Empleados.findByCiudad", query = "SELECT e FROM Empleados e WHERE e.ciudad = :ciudad")
    , @NamedQuery(name = "Empleados.findByCalle1", query = "SELECT e FROM Empleados e WHERE e.calle1 = :calle1")
    , @NamedQuery(name = "Empleados.findByCalle2", query = "SELECT e FROM Empleados e WHERE e.calle2 = :calle2")
    , @NamedQuery(name = "Empleados.findByReferencia", query = "SELECT e FROM Empleados e WHERE e.referencia = :referencia")
    , @NamedQuery(name = "Empleados.findByCodigoPostal", query = "SELECT e FROM Empleados e WHERE e.codigoPostal = :codigoPostal")
    , @NamedQuery(name = "Empleados.findByNumExterior", query = "SELECT e FROM Empleados e WHERE e.numExterior = :numExterior")
    , @NamedQuery(name = "Empleados.findByNumInterior", query = "SELECT e FROM Empleados e WHERE e.numInterior = :numInterior")
    , @NamedQuery(name = "Empleados.findByRfc", query = "SELECT e FROM Empleados e WHERE e.rfc = :rfc")
    , @NamedQuery(name = "Empleados.findByNumSeguroSocial", query = "SELECT e FROM Empleados e WHERE e.numSeguroSocial = :numSeguroSocial")})
public class Empleados implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "paterno")
    private String paterno;
    @Column(name = "materno")
    private String materno;
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
    @Column(name = "codigo_postal")
    private Integer codigoPostal;
    @Column(name = "num_exterior")
    private Integer numExterior;
    @Column(name = "num_interior")
    private Integer numInterior;
    @Column(name = "rfc")
    private String rfc;
    @Column(name = "num_seguro_social")
    private Integer numSeguroSocial;
    @JoinTable(name = "TRABAJAR", joinColumns = {
        @JoinColumn(name = "curp", referencedColumnName = "curp")}, inverseJoinColumns = {
        @JoinColumn(name = "identificador", referencedColumnName = "identificador")})
    @ManyToMany
    private List<Sucursales> sucursalesList;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "empleados")
    private Intendencias intendencias;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "empleados")
    private Generales generales;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "empleados")
    private Choferes choferes;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "empleados")
    private Mostradores mostradores;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "empleados")
    private Medicos medicos;

    public Empleados() {
    }

    public Empleados(String curp) {
        this.curp = curp;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPaterno() {
        return paterno;
    }

    public void setPaterno(String paterno) {
        this.paterno = paterno;
    }

    public String getMaterno() {
        return materno;
    }

    public void setMaterno(String materno) {
        this.materno = materno;
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

    public Integer getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(Integer codigoPostal) {
        this.codigoPostal = codigoPostal;
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

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
    }

    public Integer getNumSeguroSocial() {
        return numSeguroSocial;
    }

    public void setNumSeguroSocial(Integer numSeguroSocial) {
        this.numSeguroSocial = numSeguroSocial;
    }

    @XmlTransient
    public List<Sucursales> getSucursalesList() {
        return sucursalesList;
    }

    public void setSucursalesList(List<Sucursales> sucursalesList) {
        this.sucursalesList = sucursalesList;
    }

    public Intendencias getIntendencias() {
        return intendencias;
    }

    public void setIntendencias(Intendencias intendencias) {
        this.intendencias = intendencias;
    }

    public Generales getGenerales() {
        return generales;
    }

    public void setGenerales(Generales generales) {
        this.generales = generales;
    }

    public Choferes getChoferes() {
        return choferes;
    }

    public void setChoferes(Choferes choferes) {
        this.choferes = choferes;
    }

    public Mostradores getMostradores() {
        return mostradores;
    }

    public void setMostradores(Mostradores mostradores) {
        this.mostradores = mostradores;
    }

    public Medicos getMedicos() {
        return medicos;
    }

    public void setMedicos(Medicos medicos) {
        this.medicos = medicos;
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
        if (!(object instanceof Empleados)) {
            return false;
        }
        Empleados other = (Empleados) object;
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Empleados[ curp=" + curp + " ]";
    }
    
}
