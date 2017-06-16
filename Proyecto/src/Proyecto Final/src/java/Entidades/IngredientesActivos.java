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
@Table(name = "INGREDIENTES_ACTIVOS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "IngredientesActivos.findAll", query = "SELECT i FROM IngredientesActivos i")
    , @NamedQuery(name = "IngredientesActivos.findByIngredienteActivo", query = "SELECT i FROM IngredientesActivos i WHERE i.ingredientesActivosPK.ingredienteActivo = :ingredienteActivo")
    , @NamedQuery(name = "IngredientesActivos.findBySku", query = "SELECT i FROM IngredientesActivos i WHERE i.ingredientesActivosPK.sku = :sku")})
public class IngredientesActivos implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected IngredientesActivosPK ingredientesActivosPK;
    @JoinColumn(name = "sku", referencedColumnName = "sku", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Medicamentos medicamentos;

    public IngredientesActivos() {
    }

    public IngredientesActivos(IngredientesActivosPK ingredientesActivosPK) {
        this.ingredientesActivosPK = ingredientesActivosPK;
    }

    public IngredientesActivos(String ingredienteActivo, int sku) {
        this.ingredientesActivosPK = new IngredientesActivosPK(ingredienteActivo, sku);
    }

    public IngredientesActivosPK getIngredientesActivosPK() {
        return ingredientesActivosPK;
    }

    public void setIngredientesActivosPK(IngredientesActivosPK ingredientesActivosPK) {
        this.ingredientesActivosPK = ingredientesActivosPK;
    }

    public Medicamentos getMedicamentos() {
        return medicamentos;
    }

    public void setMedicamentos(Medicamentos medicamentos) {
        this.medicamentos = medicamentos;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ingredientesActivosPK != null ? ingredientesActivosPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof IngredientesActivos)) {
            return false;
        }
        IngredientesActivos other = (IngredientesActivos) object;
        if ((this.ingredientesActivosPK == null && other.ingredientesActivosPK != null) || (this.ingredientesActivosPK != null && !this.ingredientesActivosPK.equals(other.ingredientesActivosPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.IngredientesActivos[ ingredientesActivosPK=" + ingredientesActivosPK + " ]";
    }
    
}
