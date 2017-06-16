/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "MOSTRADORES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mostradores.findAll", query = "SELECT m FROM Mostradores m")
    , @NamedQuery(name = "Mostradores.findByCurp", query = "SELECT m FROM Mostradores m WHERE m.curp = :curp")})
public class Mostradores implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;
    @JoinTable(name = "VENDER", joinColumns = {
        @JoinColumn(name = "curp", referencedColumnName = "curp")}, inverseJoinColumns = {
        @JoinColumn(name = "sku", referencedColumnName = "sku")})
    @ManyToMany
    private List<Medicamentos> medicamentosList;
    @JoinTable(name = "PERTENECER", joinColumns = {
        @JoinColumn(name = "curp", referencedColumnName = "curp")}, inverseJoinColumns = {
        @JoinColumn(name = "identificador", referencedColumnName = "identificador")})
    @ManyToMany
    private List<Sucursales> sucursalesList;
    @JoinColumn(name = "curp", referencedColumnName = "curp", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Empleados empleados;

    public Mostradores() {
    }

    public Mostradores(String curp) {
        this.curp = curp;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    @XmlTransient
    public List<Medicamentos> getMedicamentosList() {
        return medicamentosList;
    }

    public void setMedicamentosList(List<Medicamentos> medicamentosList) {
        this.medicamentosList = medicamentosList;
    }

    @XmlTransient
    public List<Sucursales> getSucursalesList() {
        return sucursalesList;
    }

    public void setSucursalesList(List<Sucursales> sucursalesList) {
        this.sucursalesList = sucursalesList;
    }

    public Empleados getEmpleados() {
        return empleados;
    }

    public void setEmpleados(Empleados empleados) {
        this.empleados = empleados;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (curp != null ? curp.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Mostradores)) {
            return false;
        }
        Mostradores other = (Mostradores) object;
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Mostradores[ curp=" + curp + " ]";
    }
    
}
