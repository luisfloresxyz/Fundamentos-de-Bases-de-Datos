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
@Table(name = "TELEFONOS_EMPLEADOS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TelefonosEmpleados.findAll", query = "SELECT t FROM TelefonosEmpleados t")
    , @NamedQuery(name = "TelefonosEmpleados.findByTelefono", query = "SELECT t FROM TelefonosEmpleados t WHERE t.telefonosEmpleadosPK.telefono = :telefono")
    , @NamedQuery(name = "TelefonosEmpleados.findByCurp", query = "SELECT t FROM TelefonosEmpleados t WHERE t.telefonosEmpleadosPK.curp = :curp")})
public class TelefonosEmpleados implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected TelefonosEmpleadosPK telefonosEmpleadosPK;

    public TelefonosEmpleados() {
    }

    public TelefonosEmpleados(TelefonosEmpleadosPK telefonosEmpleadosPK) {
        this.telefonosEmpleadosPK = telefonosEmpleadosPK;
    }

    public TelefonosEmpleados(long telefono, String curp) {
        this.telefonosEmpleadosPK = new TelefonosEmpleadosPK(telefono, curp);
    }

    public TelefonosEmpleadosPK getTelefonosEmpleadosPK() {
        return telefonosEmpleadosPK;
    }

    public void setTelefonosEmpleadosPK(TelefonosEmpleadosPK telefonosEmpleadosPK) {
        this.telefonosEmpleadosPK = telefonosEmpleadosPK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (telefonosEmpleadosPK != null ? telefonosEmpleadosPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TelefonosEmpleados)) {
            return false;
        }
        TelefonosEmpleados other = (TelefonosEmpleados) object;
        if ((this.telefonosEmpleadosPK == null && other.telefonosEmpleadosPK != null) || (this.telefonosEmpleadosPK != null && !this.telefonosEmpleadosPK.equals(other.telefonosEmpleadosPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.TelefonosEmpleados[ telefonosEmpleadosPK=" + telefonosEmpleadosPK + " ]";
    }
    
}
