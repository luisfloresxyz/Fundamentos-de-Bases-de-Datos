/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "MEDICAMENTOS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Medicamentos.findAll", query = "SELECT m FROM Medicamentos m")
    , @NamedQuery(name = "Medicamentos.findBySku", query = "SELECT m FROM Medicamentos m WHERE m.sku = :sku")
    , @NamedQuery(name = "Medicamentos.findByPrecio", query = "SELECT m FROM Medicamentos m WHERE m.precio = :precio")
    , @NamedQuery(name = "Medicamentos.findByNombre", query = "SELECT m FROM Medicamentos m WHERE m.nombre = :nombre")
    , @NamedQuery(name = "Medicamentos.findByMarca", query = "SELECT m FROM Medicamentos m WHERE m.marca = :marca")
    , @NamedQuery(name = "Medicamentos.findByPresentacion", query = "SELECT m FROM Medicamentos m WHERE m.presentacion = :presentacion")
    , @NamedQuery(name = "Medicamentos.findByRequiereReceta", query = "SELECT m FROM Medicamentos m WHERE m.requiereReceta = :requiereReceta")})
public class Medicamentos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "sku")
    private Integer sku;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "precio")
    private BigDecimal precio;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "marca")
    private String marca;
    @Column(name = "presentacion")
    private String presentacion;
    @Column(name = "requiere_receta")
    private Character requiereReceta;
    @ManyToMany(mappedBy = "medicamentosList")
    private List<Mostradores> mostradoresList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "medicamentos")
    private List<IngredientesActivos> ingredientesActivosList;

    public Medicamentos() {
    }

    public Medicamentos(Integer sku) {
        this.sku = sku;
    }

    public Integer getSku() {
        return sku;
    }

    public void setSku(Integer sku) {
        this.sku = sku;
    }

    public BigDecimal getPrecio() {
        return precio;
    }

    public void setPrecio(BigDecimal precio) {
        this.precio = precio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getPresentacion() {
        return presentacion;
    }

    public void setPresentacion(String presentacion) {
        this.presentacion = presentacion;
    }

    public Character getRequiereReceta() {
        return requiereReceta;
    }

    public void setRequiereReceta(Character requiereReceta) {
        this.requiereReceta = requiereReceta;
    }

    @XmlTransient
    public List<Mostradores> getMostradoresList() {
        return mostradoresList;
    }

    public void setMostradoresList(List<Mostradores> mostradoresList) {
        this.mostradoresList = mostradoresList;
    }

    @XmlTransient
    public List<IngredientesActivos> getIngredientesActivosList() {
        return ingredientesActivosList;
    }

    public void setIngredientesActivosList(List<IngredientesActivos> ingredientesActivosList) {
        this.ingredientesActivosList = ingredientesActivosList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sku != null ? sku.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Medicamentos)) {
            return false;
        }
        Medicamentos other = (Medicamentos) object;
        if ((this.sku == null && other.sku != null) || (this.sku != null && !this.sku.equals(other.sku))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Medicamentos[ sku=" + sku + " ]";
    }
    
}
