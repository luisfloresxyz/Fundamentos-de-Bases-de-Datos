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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "CLIENTES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Clientes.findAll", query = "SELECT c FROM Clientes c")
    , @NamedQuery(name = "Clientes.findByCurp", query = "SELECT c FROM Clientes c WHERE c.curp = :curp")
    , @NamedQuery(name = "Clientes.findByNombre", query = "SELECT c FROM Clientes c WHERE c.nombre = :nombre")
    , @NamedQuery(name = "Clientes.findByPaterno", query = "SELECT c FROM Clientes c WHERE c.paterno = :paterno")
    , @NamedQuery(name = "Clientes.findByMaterno", query = "SELECT c FROM Clientes c WHERE c.materno = :materno")
    , @NamedQuery(name = "Clientes.findByCallePrincipal", query = "SELECT c FROM Clientes c WHERE c.callePrincipal = :callePrincipal")
    , @NamedQuery(name = "Clientes.findByColonia", query = "SELECT c FROM Clientes c WHERE c.colonia = :colonia")
    , @NamedQuery(name = "Clientes.findByDelegacionMunicipio", query = "SELECT c FROM Clientes c WHERE c.delegacionMunicipio = :delegacionMunicipio")
    , @NamedQuery(name = "Clientes.findByEstado", query = "SELECT c FROM Clientes c WHERE c.estado = :estado")
    , @NamedQuery(name = "Clientes.findByCiudad", query = "SELECT c FROM Clientes c WHERE c.ciudad = :ciudad")
    , @NamedQuery(name = "Clientes.findByCalle1", query = "SELECT c FROM Clientes c WHERE c.calle1 = :calle1")
    , @NamedQuery(name = "Clientes.findByCalle2", query = "SELECT c FROM Clientes c WHERE c.calle2 = :calle2")
    , @NamedQuery(name = "Clientes.findByReferencia", query = "SELECT c FROM Clientes c WHERE c.referencia = :referencia")
    , @NamedQuery(name = "Clientes.findByCodigoPostal", query = "SELECT c FROM Clientes c WHERE c.codigoPostal = :codigoPostal")
    , @NamedQuery(name = "Clientes.findByNumExterior", query = "SELECT c FROM Clientes c WHERE c.numExterior = :numExterior")
    , @NamedQuery(name = "Clientes.findByNumInterior", query = "SELECT c FROM Clientes c WHERE c.numInterior = :numInterior")})
public class Clientes implements Serializable {

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
    @JoinTable(name = "SOLICITAR", joinColumns = {
        @JoinColumn(name = "curp", referencedColumnName = "curp")}, inverseJoinColumns = {
        @JoinColumn(name = "identificador", referencedColumnName = "identificador")})
    @ManyToMany
    private List<Consultas> consultasList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "curp")
    private List<MonederosElectronicos> monederosElectronicosList;

    public Clientes() {
    }

    public Clientes(String curp) {
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

    @XmlTransient
    public List<Consultas> getConsultasList() {
        return consultasList;
    }

    public void setConsultasList(List<Consultas> consultasList) {
        this.consultasList = consultasList;
    }

    @XmlTransient
    public List<MonederosElectronicos> getMonederosElectronicosList() {
        return monederosElectronicosList;
    }

    public void setMonederosElectronicosList(List<MonederosElectronicos> monederosElectronicosList) {
        this.monederosElectronicosList = monederosElectronicosList;
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
        if (!(object instanceof Clientes)) {
            return false;
        }
        Clientes other = (Clientes) object;
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Clientes[ curp=" + curp + " ]";
    }
    
}
