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
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "DUENIOS", schema="Agencia")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Duenios.findAll", query = "SELECT d FROM Duenios d")
    , @NamedQuery(name = "Duenios.findByCurp", query = "SELECT d FROM Duenios d WHERE d.curp = :curp")
    , @NamedQuery(name = "Duenios.findByRfc", query = "SELECT d FROM Duenios d WHERE d.rfc = :rfc")})
public class Duenios implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;
    @Column(name = "rfc")
    private String rfc;

    public Duenios() {
    }

    public Duenios(String curp) {
        this.curp = curp;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getRfc() {
        return rfc;
    }

    public void setRfc(String rfc) {
        this.rfc = rfc;
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
        if (!(object instanceof Duenios)) {
            return false;
        }
        Duenios other = (Duenios) object;
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Duenios[ curp=" + curp + " ]";
    }
    
}
