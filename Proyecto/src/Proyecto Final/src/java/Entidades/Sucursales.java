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
@Table(name = "SUCURSALES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sucursales.findAll", query = "SELECT s FROM Sucursales s")
    , @NamedQuery(name = "Sucursales.findByIdentificador", query = "SELECT s FROM Sucursales s WHERE s.identificador = :identificador")
    , @NamedQuery(name = "Sucursales.findByCalle1", query = "SELECT s FROM Sucursales s WHERE s.calle1 = :calle1")
    , @NamedQuery(name = "Sucursales.findByCalle2", query = "SELECT s FROM Sucursales s WHERE s.calle2 = :calle2")
    , @NamedQuery(name = "Sucursales.findByCodigoPostal", query = "SELECT s FROM Sucursales s WHERE s.codigoPostal = :codigoPostal")
    , @NamedQuery(name = "Sucursales.findByCiudad", query = "SELECT s FROM Sucursales s WHERE s.ciudad = :ciudad")
    , @NamedQuery(name = "Sucursales.findByEstado", query = "SELECT s FROM Sucursales s WHERE s.estado = :estado")
    , @NamedQuery(name = "Sucursales.findByColonia", query = "SELECT s FROM Sucursales s WHERE s.colonia = :colonia")
    , @NamedQuery(name = "Sucursales.findByReferencia", query = "SELECT s FROM Sucursales s WHERE s.referencia = :referencia")
    , @NamedQuery(name = "Sucursales.findByNumExterior", query = "SELECT s FROM Sucursales s WHERE s.numExterior = :numExterior")
    , @NamedQuery(name = "Sucursales.findByNumInterior", query = "SELECT s FROM Sucursales s WHERE s.numInterior = :numInterior")
    , @NamedQuery(name = "Sucursales.findByCallePrincipal", query = "SELECT s FROM Sucursales s WHERE s.callePrincipal = :callePrincipal")
    , @NamedQuery(name = "Sucursales.findByDelegacionMinicipio", query = "SELECT s FROM Sucursales s WHERE s.delegacionMinicipio = :delegacionMinicipio")})
public class Sucursales implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "identificador")
    private Integer identificador;
    @Column(name = "calle_1")
    private String calle1;
    @Column(name = "calle_2")
    private String calle2;
    @Column(name = "codigo_postal")
    private Integer codigoPostal;
    @Column(name = "ciudad")
    private String ciudad;
    @Column(name = "estado")
    private String estado;
    @Column(name = "colonia")
    private String colonia;
    @Column(name = "referencia")
    private String referencia;
    @Column(name = "num_exterior")
    private Integer numExterior;
    @Column(name = "num_interior")
    private Integer numInterior;
    @Column(name = "calle_principal")
    private String callePrincipal;
    @Column(name = "delegacion_minicipio")
    private String delegacionMinicipio;
    @ManyToMany(mappedBy = "sucursalesList")
    private List<Mostradores> mostradoresList;
    @ManyToMany(mappedBy = "sucursalesList")
    private List<Empleados> empleadosList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "sucursales")
    private List<TelefonosSucursales> telefonosSucursalesList;

    public Sucursales() {
    }

    public Sucursales(Integer identificador) {
        this.identificador = identificador;
    }

    public Integer getIdentificador() {
        return identificador;
    }

    public void setIdentificador(Integer identificador) {
        this.identificador = identificador;
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

    public Integer getCodigoPostal() {
        return codigoPostal;
    }

    public void setCodigoPostal(Integer codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
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

    public String getCallePrincipal() {
        return callePrincipal;
    }

    public void setCallePrincipal(String callePrincipal) {
        this.callePrincipal = callePrincipal;
    }

    public String getDelegacionMinicipio() {
        return delegacionMinicipio;
    }

    public void setDelegacionMinicipio(String delegacionMinicipio) {
        this.delegacionMinicipio = delegacionMinicipio;
    }

    @XmlTransient
    public List<Mostradores> getMostradoresList() {
        return mostradoresList;
    }

    public void setMostradoresList(List<Mostradores> mostradoresList) {
        this.mostradoresList = mostradoresList;
    }

    @XmlTransient
    public List<Empleados> getEmpleadosList() {
        return empleadosList;
    }

    public void setEmpleadosList(List<Empleados> empleadosList) {
        this.empleadosList = empleadosList;
    }

    @XmlTransient
    public List<TelefonosSucursales> getTelefonosSucursalesList() {
        return telefonosSucursalesList;
    }

    public void setTelefonosSucursalesList(List<TelefonosSucursales> telefonosSucursalesList) {
        this.telefonosSucursalesList = telefonosSucursalesList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (identificador != null ? identificador.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sucursales)) {
            return false;
        }
        Sucursales other = (Sucursales) object;
        if ((this.identificador == null && other.identificador != null) || (this.identificador != null && !this.identificador.equals(other.identificador))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Sucursales[ identificador=" + identificador + " ]";
    }
    
}
