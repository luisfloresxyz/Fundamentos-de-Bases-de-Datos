/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author Luis
 */
@Embeddable
public class CorreosElectronicosClientesPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;
    @Basic(optional = false)
    @Column(name = "correo_electronico")
    private String correoElectronico;

    public CorreosElectronicosClientesPK() {
    }

    public CorreosElectronicosClientesPK(String curp, String correoElectronico) {
        this.curp = curp;
        this.correoElectronico = correoElectronico;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (curp != null ? curp.hashCode() : 0);
        hash += (correoElectronico != null ? correoElectronico.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CorreosElectronicosClientesPK)) {
            return false;
        }
        CorreosElectronicosClientesPK other = (CorreosElectronicosClientesPK) object;
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        if ((this.correoElectronico == null && other.correoElectronico != null) || (this.correoElectronico != null && !this.correoElectronico.equals(other.correoElectronico))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.CorreosElectronicosClientesPK[ curp=" + curp + ", correoElectronico=" + correoElectronico + " ]";
    }
    
}
