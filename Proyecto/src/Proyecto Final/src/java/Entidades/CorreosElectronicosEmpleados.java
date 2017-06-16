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
@Table(name = "CORREOS_ELECTRONICOS_EMPLEADOS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CorreosElectronicosEmpleados.findAll", query = "SELECT c FROM CorreosElectronicosEmpleados c")
    , @NamedQuery(name = "CorreosElectronicosEmpleados.findByCurp", query = "SELECT c FROM CorreosElectronicosEmpleados c WHERE c.correosElectronicosEmpleadosPK.curp = :curp")
    , @NamedQuery(name = "CorreosElectronicosEmpleados.findByCorreoElectronico", query = "SELECT c FROM CorreosElectronicosEmpleados c WHERE c.correosElectronicosEmpleadosPK.correoElectronico = :correoElectronico")})
public class CorreosElectronicosEmpleados implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected CorreosElectronicosEmpleadosPK correosElectronicosEmpleadosPK;

    public CorreosElectronicosEmpleados() {
    }

    public CorreosElectronicosEmpleados(CorreosElectronicosEmpleadosPK correosElectronicosEmpleadosPK) {
        this.correosElectronicosEmpleadosPK = correosElectronicosEmpleadosPK;
    }

    public CorreosElectronicosEmpleados(String curp, String correoElectronico) {
        this.correosElectronicosEmpleadosPK = new CorreosElectronicosEmpleadosPK(curp, correoElectronico);
    }

    public CorreosElectronicosEmpleadosPK getCorreosElectronicosEmpleadosPK() {
        return correosElectronicosEmpleadosPK;
    }

    public void setCorreosElectronicosEmpleadosPK(CorreosElectronicosEmpleadosPK correosElectronicosEmpleadosPK) {
        this.correosElectronicosEmpleadosPK = correosElectronicosEmpleadosPK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (correosElectronicosEmpleadosPK != null ? correosElectronicosEmpleadosPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CorreosElectronicosEmpleados)) {
            return false;
        }
        CorreosElectronicosEmpleados other = (CorreosElectronicosEmpleados) object;
        if ((this.correosElectronicosEmpleadosPK == null && other.correosElectronicosEmpleadosPK != null) || (this.correosElectronicosEmpleadosPK != null && !this.correosElectronicosEmpleadosPK.equals(other.correosElectronicosEmpleadosPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.CorreosElectronicosEmpleados[ correosElectronicosEmpleadosPK=" + correosElectronicosEmpleadosPK + " ]";
    }
    
}
