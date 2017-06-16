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
public class EspecificacionesAdicionalesPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "especificacion_adicional")
    private String especificacionAdicional;
    @Basic(optional = false)
    @Column(name = "num_receta")
    private int numReceta;

    public EspecificacionesAdicionalesPK() {
    }

    public EspecificacionesAdicionalesPK(String especificacionAdicional, int numReceta) {
        this.especificacionAdicional = especificacionAdicional;
        this.numReceta = numReceta;
    }

    public String getEspecificacionAdicional() {
        return especificacionAdicional;
    }

    public void setEspecificacionAdicional(String especificacionAdicional) {
        this.especificacionAdicional = especificacionAdicional;
    }

    public int getNumReceta() {
        return numReceta;
    }

    public void setNumReceta(int numReceta) {
        this.numReceta = numReceta;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (especificacionAdicional != null ? especificacionAdicional.hashCode() : 0);
        hash += (int) numReceta;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EspecificacionesAdicionalesPK)) {
            return false;
        }
        EspecificacionesAdicionalesPK other = (EspecificacionesAdicionalesPK) object;
        if ((this.especificacionAdicional == null && other.especificacionAdicional != null) || (this.especificacionAdicional != null && !this.especificacionAdicional.equals(other.especificacionAdicional))) {
            return false;
        }
        if (this.numReceta != other.numReceta) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.EspecificacionesAdicionalesPK[ especificacionAdicional=" + especificacionAdicional + ", numReceta=" + numReceta + " ]";
    }
    
}
