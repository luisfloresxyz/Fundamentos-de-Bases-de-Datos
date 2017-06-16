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
import javax.persistence.ManyToOne;
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
@Table(name = "RECETAS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Recetas.findAll", query = "SELECT r FROM Recetas r")
    , @NamedQuery(name = "Recetas.findByNumReceta", query = "SELECT r FROM Recetas r WHERE r.numReceta = :numReceta")
    , @NamedQuery(name = "Recetas.findByFechaSiguienteConsulta", query = "SELECT r FROM Recetas r WHERE r.fechaSiguienteConsulta = :fechaSiguienteConsulta")
    , @NamedQuery(name = "Recetas.findByFirmaDigital", query = "SELECT r FROM Recetas r WHERE r.firmaDigital = :firmaDigital")})
public class Recetas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "num_receta")
    private Integer numReceta;
    @Column(name = "fecha_siguiente_consulta")
    @Temporal(TemporalType.DATE)
    private Date fechaSiguienteConsulta;
    @Column(name = "firma_digital")
    private String firmaDigital;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "recetas")
    private List<EspecificacionesAdicionales> especificacionesAdicionalesList;
    @JoinColumn(name = "identificador", referencedColumnName = "identificador")
    @ManyToOne(optional = false)
    private Consultas identificador;

    public Recetas() {
    }

    public Recetas(Integer numReceta) {
        this.numReceta = numReceta;
    }

    public Integer getNumReceta() {
        return numReceta;
    }

    public void setNumReceta(Integer numReceta) {
        this.numReceta = numReceta;
    }

    public Date getFechaSiguienteConsulta() {
        return fechaSiguienteConsulta;
    }

    public void setFechaSiguienteConsulta(Date fechaSiguienteConsulta) {
        this.fechaSiguienteConsulta = fechaSiguienteConsulta;
    }

    public String getFirmaDigital() {
        return firmaDigital;
    }

    public void setFirmaDigital(String firmaDigital) {
        this.firmaDigital = firmaDigital;
    }

    @XmlTransient
    public List<EspecificacionesAdicionales> getEspecificacionesAdicionalesList() {
        return especificacionesAdicionalesList;
    }

    public void setEspecificacionesAdicionalesList(List<EspecificacionesAdicionales> especificacionesAdicionalesList) {
        this.especificacionesAdicionalesList = especificacionesAdicionalesList;
    }

    public Consultas getIdentificador() {
        return identificador;
    }

    public void setIdentificador(Consultas identificador) {
        this.identificador = identificador;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (numReceta != null ? numReceta.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Recetas)) {
            return false;
        }
        Recetas other = (Recetas) object;
        if ((this.numReceta == null && other.numReceta != null) || (this.numReceta != null && !this.numReceta.equals(other.numReceta))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Recetas[ numReceta=" + numReceta + " ]";
    }
    
}
