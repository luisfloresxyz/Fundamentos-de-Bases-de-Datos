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
@Table(name = "CORREOS_ELECTRONICOS_CLIENTES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CorreosElectronicosClientes.findAll", query = "SELECT c FROM CorreosElectronicosClientes c")
    , @NamedQuery(name = "CorreosElectronicosClientes.findByCurp", query = "SELECT c FROM CorreosElectronicosClientes c WHERE c.correosElectronicosClientesPK.curp = :curp")
    , @NamedQuery(name = "CorreosElectronicosClientes.findByCorreoElectronico", query = "SELECT c FROM CorreosElectronicosClientes c WHERE c.correosElectronicosClientesPK.correoElectronico = :correoElectronico")})
public class CorreosElectronicosClientes implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CorreosElectronicosClientesPK correosElectronicosClientesPK;

    public CorreosElectronicosClientes() {
    }

    public CorreosElectronicosClientes(CorreosElectronicosClientesPK correosElectronicosClientesPK) {
        this.correosElectronicosClientesPK = correosElectronicosClientesPK;
    }

    public CorreosElectronicosClientes(String curp, String correoElectronico) {
        this.correosElectronicosClientesPK = new CorreosElectronicosClientesPK(curp, correoElectronico);
    }

    public CorreosElectronicosClientesPK getCorreosElectronicosClientesPK() {
        return correosElectronicosClientesPK;
    }

    public void setCorreosElectronicosClientesPK(CorreosElectronicosClientesPK correosElectronicosClientesPK) {
        this.correosElectronicosClientesPK = correosElectronicosClientesPK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (correosElectronicosClientesPK != null ? correosElectronicosClientesPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CorreosElectronicosClientes)) {
            return false;
        }
        CorreosElectronicosClientes other = (CorreosElectronicosClientes) object;
        if ((this.correosElectronicosClientesPK == null && other.correosElectronicosClientesPK != null) || (this.correosElectronicosClientesPK != null && !this.correosElectronicosClientesPK.equals(other.correosElectronicosClientesPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.CorreosElectronicosClientes[ correosElectronicosClientesPK=" + correosElectronicosClientesPK + " ]";
    }
    
}
