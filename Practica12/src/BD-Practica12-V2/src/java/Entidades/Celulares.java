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
@Table(name = "CELULARES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Celulares.findAll", query = "SELECT c FROM Celulares c")
    , @NamedQuery(name = "Celulares.findByCelular", query = "SELECT c FROM Celulares c WHERE c.celular = :celular")})
public class Celulares implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "celular")
    private Long celular;
    @JoinColumn(name = "curp", referencedColumnName = "curp")
    @ManyToOne(optional = false)
    private Personas curp;

    public Celulares() {
    }

    public Celulares(Long celular) {
        this.celular = celular;
    }

    public Long getCelular() {
        return celular;
    }

    public void setCelular(Long celular) {
        this.celular = celular;
    }

    public Personas getCurp() {
        return curp;
    }

    public void setCurp(Personas curp) {
        this.curp = curp;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (celular != null ? celular.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Celulares)) {
            return false;
        }
        Celulares other = (Celulares) object;
        if ((this.celular == null && other.celular != null) || (this.celular != null && !this.celular.equals(other.celular))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Celulares[ celular=" + celular + " ]";
    }
    
}
