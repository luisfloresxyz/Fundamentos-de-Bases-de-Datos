/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "INTENDENCIAS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Intendencias.findAll", query = "SELECT i FROM Intendencias i")
    , @NamedQuery(name = "Intendencias.findByCurp", query = "SELECT i FROM Intendencias i WHERE i.curp = :curp")})
public class Intendencias implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;
    @JoinColumn(name = "curp", referencedColumnName = "curp", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Empleados empleados;

    public Intendencias() {
    }

    public Intendencias(String curp) {
        this.curp = curp;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
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
        if (!(object instanceof Intendencias)) {
            return false;
        }
        Intendencias other = (Intendencias) object;
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Intendencias[ curp=" + curp + " ]";
    }
    
}
