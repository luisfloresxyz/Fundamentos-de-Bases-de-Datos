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
public class IngredientesActivosPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "ingrediente_activo")
    private String ingredienteActivo;
    @Basic(optional = false)
    @Column(name = "sku")
    private int sku;

    public IngredientesActivosPK() {
    }

    public IngredientesActivosPK(String ingredienteActivo, int sku) {
        this.ingredienteActivo = ingredienteActivo;
        this.sku = sku;
    }

    public String getIngredienteActivo() {
        return ingredienteActivo;
    }

    public void setIngredienteActivo(String ingredienteActivo) {
        this.ingredienteActivo = ingredienteActivo;
    }

    public int getSku() {
        return sku;
    }

    public void setSku(int sku) {
        this.sku = sku;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ingredienteActivo != null ? ingredienteActivo.hashCode() : 0);
        hash += (int) sku;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof IngredientesActivosPK)) {
            return false;
        }
        IngredientesActivosPK other = (IngredientesActivosPK) object;
        if ((this.ingredienteActivo == null && other.ingredienteActivo != null) || (this.ingredienteActivo != null && !this.ingredienteActivo.equals(other.ingredienteActivo))) {
            return false;
        }
        if (this.sku != other.sku) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.IngredientesActivosPK[ ingredienteActivo=" + ingredienteActivo + ", sku=" + sku + " ]";
    }
    
}
