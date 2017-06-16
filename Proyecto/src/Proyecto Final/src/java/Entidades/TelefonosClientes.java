/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "TELEFONOS_CLIENTES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TelefonosClientes.findAll", query = "SELECT t FROM TelefonosClientes t")
    , @NamedQuery(name = "TelefonosClientes.findByTelefono", query = "SELECT t FROM TelefonosClientes t WHERE t.telefonosClientesPK.telefono = :telefono")
    , @NamedQuery(name = "TelefonosClientes.findByCurp", query = "SELECT t FROM TelefonosClientes t WHERE t.telefonosClientesPK.curp = :curp")})
public class TelefonosClientes implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected TelefonosClientesPK telefonosClientesPK;

    public TelefonosClientes() {
    }

    public TelefonosClientes(TelefonosClientesPK telefonosClientesPK) {
        this.telefonosClientesPK = telefonosClientesPK;
    }

    public TelefonosClientes(long telefono, String curp) {
        this.telefonosClientesPK = new TelefonosClientesPK(telefono, curp);
    }

    public TelefonosClientesPK getTelefonosClientesPK() {
        return telefonosClientesPK;
    }

    public void setTelefonosClientesPK(TelefonosClientesPK telefonosClientesPK) {
        this.telefonosClientesPK = telefonosClientesPK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (telefonosClientesPK != null ? telefonosClientesPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TelefonosClientes)) {
            return false;
        }
        TelefonosClientes other = (TelefonosClientes) object;
        if ((this.telefonosClientesPK == null && other.telefonosClientesPK != null) || (this.telefonosClientesPK != null && !this.telefonosClientesPK.equals(other.telefonosClientesPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.TelefonosClientes[ telefonosClientesPK=" + telefonosClientesPK + " ]";
    }
    
}
