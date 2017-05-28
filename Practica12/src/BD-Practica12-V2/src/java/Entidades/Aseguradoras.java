/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "ASEGURADORAS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Aseguradoras.findAll", query = "SELECT a FROM Aseguradoras a")
    , @NamedQuery(name = "Aseguradoras.findByIdAseguradora", query = "SELECT a FROM Aseguradoras a WHERE a.idAseguradora = :idAseguradora")
    , @NamedQuery(name = "Aseguradoras.findByCompania", query = "SELECT a FROM Aseguradoras a WHERE a.compania = :compania")
    , @NamedQuery(name = "Aseguradoras.findByEstado", query = "SELECT a FROM Aseguradoras a WHERE a.estado = :estado")
    , @NamedQuery(name = "Aseguradoras.findByDelegacionMunicipio", query = "SELECT a FROM Aseguradoras a WHERE a.delegacionMunicipio = :delegacionMunicipio")
    , @NamedQuery(name = "Aseguradoras.findByColonia", query = "SELECT a FROM Aseguradoras a WHERE a.colonia = :colonia")
    , @NamedQuery(name = "Aseguradoras.findByCallePrincipal", query = "SELECT a FROM Aseguradoras a WHERE a.callePrincipal = :callePrincipal")
    , @NamedQuery(name = "Aseguradoras.findByCiudad", query = "SELECT a FROM Aseguradoras a WHERE a.ciudad = :ciudad")
    , @NamedQuery(name = "Aseguradoras.findByCalle1", query = "SELECT a FROM Aseguradoras a WHERE a.calle1 = :calle1")
    , @NamedQuery(name = "Aseguradoras.findByCalle2", query = "SELECT a FROM Aseguradoras a WHERE a.calle2 = :calle2")
    , @NamedQuery(name = "Aseguradoras.findByCodigoPostal", query = "SELECT a FROM Aseguradoras a WHERE a.codigoPostal = :codigoPostal")
    , @NamedQuery(name = "Aseguradoras.findByNumExterior", query = "SELECT a FROM Aseguradoras a WHERE a.numExterior = :numExterior")
    , @NamedQuery(name = "Aseguradoras.findByNumInterior", query = "SELECT a FROM Aseguradoras a WHERE a.numInterior = :numInterior")})
public class Aseguradoras implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id_aseguradora")
    private Integer idAseguradora;
    @Basic(optional = false)
    @Column(name = "compania")
    private String compania;
    @Column(name = "estado")
    private String estado;
    @Column(name = "delegacion_municipio")
    private String delegacionMunicipio;
    @Column(name = "colonia")
    private String colonia;
    @Column(name = "calle_principal")
    private String callePrincipal;
    @Column(name = "ciudad")
    private String ciudad;
    @Column(name = "calle_1")
    private String calle1;
    @Column(name = "calle_2")
    private String calle2;
    @Column(name = "codigo_postal")
    private Integer codigoPostal;
    @Column(name = "num_exterior")
    private Integer numExterior;
    @Column(name = "num_interior")
    private Integer numInterior;

    public Aseguradoras() {
    }

    public Aseguradoras(Integer idAseguradora) {
        this.idAseguradora = idAseguradora;
    }

    public Aseguradoras(Integer idAseguradora, String compania) {
        this.idAseguradora = idAseguradora;
        this.compania = compania;
    }

    public Integer getIdAseguradora() {
        return idAseguradora;
    }

    public void setIdAseguradora(Integer idAseguradora) {
        this.idAseguradora = idAseguradora;
    }

    public String getCompania() {
        return compania;
    }

    public void setCompania(String compania) {
        this.compania = compania;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getDelegacionMunicipio() {
        return delegacionMunicipio;
    }

    public void setDelegacionMunicipio(String delegacionMunicipio) {
        this.delegacionMunicipio = delegacionMunicipio;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getCallePrincipal() {
        return callePrincipal;
    }

    public void setCallePrincipal(String callePrincipal) {
        this.callePrincipal = callePrincipal;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idAseguradora != null ? idAseguradora.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Aseguradoras)) {
            return false;
        }
        Aseguradoras other = (Aseguradoras) object;
        if ((this.idAseguradora == null && other.idAseguradora != null) || (this.idAseguradora != null && !this.idAseguradora.equals(other.idAseguradora))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Aseguradoras[ idAseguradora=" + idAseguradora + " ]";
    }
    
}
