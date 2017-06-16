/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.math.BigInteger;
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
@Table(name = "CHOFERES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Choferes.findAll", query = "SELECT c FROM Choferes c")
    , @NamedQuery(name = "Choferes.findByCurp", query = "SELECT c FROM Choferes c WHERE c.curp = :curp")
    , @NamedQuery(name = "Choferes.findByTransporte", query = "SELECT c FROM Choferes c WHERE c.transporte = :transporte")
    , @NamedQuery(name = "Choferes.findByNumLicencia", query = "SELECT c FROM Choferes c WHERE c.numLicencia = :numLicencia")})
public class Choferes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;
    @Column(name = "transporte")
    private String transporte;
    @Column(name = "num_licencia")
    private BigInteger numLicencia;
    @JoinColumn(name = "curp", referencedColumnName = "curp", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Empleados empleados;

    public Choferes() {
    }

    public Choferes(String curp) {
        this.curp = curp;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getTransporte() {
        return transporte;
    }

    public void setTransporte(String transporte) {
        this.transporte = transporte;
    }

    public BigInteger getNumLicencia() {
        return numLicencia;
    }

    public void setNumLicencia(BigInteger numLicencia) {
        this.numLicencia = numLicencia;
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
        if (!(object instanceof Choferes)) {
            return false;
        }
        Choferes other = (Choferes) object;
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Choferes[ curp=" + curp + " ]";
    }
    
}
