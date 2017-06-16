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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "CONTADORES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Contadores.findAll", query = "SELECT c FROM Contadores c")
    , @NamedQuery(name = "Contadores.findByCurpContador", query = "SELECT c FROM Contadores c WHERE c.curpContador = :curpContador")
    , @NamedQuery(name = "Contadores.findByGanancia", query = "SELECT c FROM Contadores c WHERE c.ganancia = :ganancia")})
public class Contadores implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "curp_contador")
    private String curpContador;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @Column(name = "ganancia")
    private BigDecimal ganancia;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "jefeContadorCurp")
    private List<Contadores> contadoresList;
    @JoinColumn(name = "jefe_contador_curp", referencedColumnName = "curp_contador")
    @ManyToOne(optional = false)
    private Contadores jefeContadorCurp;

    public Contadores() {
    }

    public Contadores(String curpContador) {
        this.curpContador = curpContador;
    }

    public Contadores(String curpContador, BigDecimal ganancia) {
        this.curpContador = curpContador;
        this.ganancia = ganancia;
    }

    public String getCurpContador() {
        return curpContador;
    }

    public void setCurpContador(String curpContador) {
        this.curpContador = curpContador;
    }

    public BigDecimal getGanancia() {
        return ganancia;
    }

    public void setGanancia(BigDecimal ganancia) {
        this.ganancia = ganancia;
    }

    @XmlTransient
    public List<Contadores> getContadoresList() {
        return contadoresList;
    }

    public void setContadoresList(List<Contadores> contadoresList) {
        this.contadoresList = contadoresList;
    }

    public Contadores getJefeContadorCurp() {
        return jefeContadorCurp;
    }

    public void setJefeContadorCurp(Contadores jefeContadorCurp) {
        this.jefeContadorCurp = jefeContadorCurp;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (curpContador != null ? curpContador.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Contadores)) {
            return false;
        }
        Contadores other = (Contadores) object;
        if ((this.curpContador == null && other.curpContador != null) || (this.curpContador != null && !this.curpContador.equals(other.curpContador))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Contadores[ curpContador=" + curpContador + " ]";
    }
    
}
