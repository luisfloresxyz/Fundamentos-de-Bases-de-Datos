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
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
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
@Table(name = "LICENCIAS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Licencias.findAll", query = "SELECT l FROM Licencias l")
    , @NamedQuery(name = "Licencias.findByNumLicencia", query = "SELECT l FROM Licencias l WHERE l.numLicencia = :numLicencia")
    , @NamedQuery(name = "Licencias.findByFechaExpedicion", query = "SELECT l FROM Licencias l WHERE l.fechaExpedicion = :fechaExpedicion")
    , @NamedQuery(name = "Licencias.findByVigencia", query = "SELECT l FROM Licencias l WHERE l.vigencia = :vigencia")})
public class Licencias implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "num_licencia")
    private Long numLicencia;
    @Column(name = "fecha_expedicion")
    @Temporal(TemporalType.DATE)
    private Date fechaExpedicion;
    @Column(name = "vigencia")
    @Temporal(TemporalType.DATE)
    private Date vigencia;
    @ManyToMany(mappedBy = "licenciasList")
    private List<Personas> personasList;

    public Licencias() {
    }

    public Licencias(Long numLicencia) {
        this.numLicencia = numLicencia;
    }

    public Long getNumLicencia() {
        return numLicencia;
    }

    public void setNumLicencia(Long numLicencia) {
        this.numLicencia = numLicencia;
    }

    public Date getFechaExpedicion() {
        return fechaExpedicion;
    }

    public void setFechaExpedicion(Date fechaExpedicion) {
        this.fechaExpedicion = fechaExpedicion;
    }

    public Date getVigencia() {
        return vigencia;
    }

    public void setVigencia(Date vigencia) {
        this.vigencia = vigencia;
    }

    @XmlTransient
    public List<Personas> getPersonasList() {
        return personasList;
    }

    public void setPersonasList(List<Personas> personasList) {
        this.personasList = personasList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (numLicencia != null ? numLicencia.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Licencias)) {
            return false;
        }
        Licencias other = (Licencias) object;
        if ((this.numLicencia == null && other.numLicencia != null) || (this.numLicencia != null && !this.numLicencia.equals(other.numLicencia))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Licencias[ numLicencia=" + numLicencia + " ]";
    }
    
}
