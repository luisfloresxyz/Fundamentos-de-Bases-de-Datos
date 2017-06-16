/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "TELEFONOS_SUCURSALES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TelefonosSucursales.findAll", query = "SELECT t FROM TelefonosSucursales t")
    , @NamedQuery(name = "TelefonosSucursales.findByTelefono", query = "SELECT t FROM TelefonosSucursales t WHERE t.telefonosSucursalesPK.telefono = :telefono")
    , @NamedQuery(name = "TelefonosSucursales.findByIdentificador", query = "SELECT t FROM TelefonosSucursales t WHERE t.telefonosSucursalesPK.identificador = :identificador")})
public class TelefonosSucursales implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected TelefonosSucursalesPK telefonosSucursalesPK;
    @JoinColumn(name = "identificador", referencedColumnName = "identificador", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Sucursales sucursales;

    public TelefonosSucursales() {
    }

    public TelefonosSucursales(TelefonosSucursalesPK telefonosSucursalesPK) {
        this.telefonosSucursalesPK = telefonosSucursalesPK;
    }

    public TelefonosSucursales(long telefono, int identificador) {
        this.telefonosSucursalesPK = new TelefonosSucursalesPK(telefono, identificador);
    }

    public TelefonosSucursalesPK getTelefonosSucursalesPK() {
        return telefonosSucursalesPK;
    }

    public void setTelefonosSucursalesPK(TelefonosSucursalesPK telefonosSucursalesPK) {
        this.telefonosSucursalesPK = telefonosSucursalesPK;
    }

    public Sucursales getSucursales() {
        return sucursales;
    }

    public void setSucursales(Sucursales sucursales) {
        this.sucursales = sucursales;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (telefonosSucursalesPK != null ? telefonosSucursalesPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TelefonosSucursales)) {
            return false;
        }
        TelefonosSucursales other = (TelefonosSucursales) object;
        if ((this.telefonosSucursalesPK == null && other.telefonosSucursalesPK != null) || (this.telefonosSucursalesPK != null && !this.telefonosSucursalesPK.equals(other.telefonosSucursalesPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.TelefonosSucursales[ telefonosSucursalesPK=" + telefonosSucursalesPK + " ]";
    }
    
}
