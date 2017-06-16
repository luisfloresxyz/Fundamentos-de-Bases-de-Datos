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
public class EspecialidadesPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "especialidad")
    private String especialidad;
    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;

    public EspecialidadesPK() {
    }

    public EspecialidadesPK(String especialidad, String curp) {
        this.especialidad = especialidad;
        this.curp = curp;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (especialidad != null ? especialidad.hashCode() : 0);
        hash += (curp != null ? curp.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EspecialidadesPK)) {
            return false;
        }
        EspecialidadesPK other = (EspecialidadesPK) object;
        if ((this.especialidad == null && other.especialidad != null) || (this.especialidad != null && !this.especialidad.equals(other.especialidad))) {
            return false;
        }
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.EspecialidadesPK[ especialidad=" + especialidad + ", curp=" + curp + " ]";
    }
    
}
