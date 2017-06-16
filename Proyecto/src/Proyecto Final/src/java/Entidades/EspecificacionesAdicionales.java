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
@Table(name = "ESPECIFICACIONES_ADICIONALES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EspecificacionesAdicionales.findAll", query = "SELECT e FROM EspecificacionesAdicionales e")
    , @NamedQuery(name = "EspecificacionesAdicionales.findByEspecificacionAdicional", query = "SELECT e FROM EspecificacionesAdicionales e WHERE e.especificacionesAdicionalesPK.especificacionAdicional = :especificacionAdicional")
    , @NamedQuery(name = "EspecificacionesAdicionales.findByNumReceta", query = "SELECT e FROM EspecificacionesAdicionales e WHERE e.especificacionesAdicionalesPK.numReceta = :numReceta")})
public class EspecificacionesAdicionales implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EspecificacionesAdicionalesPK especificacionesAdicionalesPK;
    @JoinColumn(name = "num_receta", referencedColumnName = "num_receta", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Recetas recetas;

    public EspecificacionesAdicionales() {
    }

    public EspecificacionesAdicionales(EspecificacionesAdicionalesPK especificacionesAdicionalesPK) {
        this.especificacionesAdicionalesPK = especificacionesAdicionalesPK;
    }

    public EspecificacionesAdicionales(String especificacionAdicional, int numReceta) {
        this.especificacionesAdicionalesPK = new EspecificacionesAdicionalesPK(especificacionAdicional, numReceta);
    }

    public EspecificacionesAdicionalesPK getEspecificacionesAdicionalesPK() {
        return especificacionesAdicionalesPK;
    }

    public void setEspecificacionesAdicionalesPK(EspecificacionesAdicionalesPK especificacionesAdicionalesPK) {
        this.especificacionesAdicionalesPK = especificacionesAdicionalesPK;
    }

    public Recetas getRecetas() {
        return recetas;
    }

    public void setRecetas(Recetas recetas) {
        this.recetas = recetas;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (especificacionesAdicionalesPK != null ? especificacionesAdicionalesPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EspecificacionesAdicionales)) {
            return false;
        }
        EspecificacionesAdicionales other = (EspecificacionesAdicionales) object;
        if ((this.especificacionesAdicionalesPK == null && other.especificacionesAdicionalesPK != null) || (this.especificacionesAdicionalesPK != null && !this.especificacionesAdicionalesPK.equals(other.especificacionesAdicionalesPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.EspecificacionesAdicionales[ especificacionesAdicionalesPK=" + especificacionesAdicionalesPK + " ]";
    }
    
}
