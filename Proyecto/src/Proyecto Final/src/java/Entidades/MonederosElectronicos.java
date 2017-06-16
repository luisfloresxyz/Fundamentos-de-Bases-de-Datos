/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.math.BigDecimal;
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
@Table(name = "MONEDEROS_ELECTRONICOS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "MonederosElectronicos.findAll", query = "SELECT m FROM MonederosElectronicos m")
    , @NamedQuery(name = "MonederosElectronicos.findByIdentificador", query = "SELECT m FROM MonederosElectronicos m WHERE m.identificador = :identificador")
    , @NamedQuery(name = "MonederosElectronicos.findBySaldo", query = "SELECT m FROM MonederosElectronicos m WHERE m.saldo = :saldo")})
public class MonederosElectronicos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "identificador")
    private Integer identificador;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "saldo")
    private BigDecimal saldo;
    @JoinColumn(name = "curp", referencedColumnName = "curp")
    @ManyToOne(optional = false)
    private Clientes curp;

    public MonederosElectronicos() {
    }

    public MonederosElectronicos(Integer identificador) {
        this.identificador = identificador;
    }

    public Integer getIdentificador() {
        return identificador;
    }

    public void setIdentificador(Integer identificador) {
        this.identificador = identificador;
    }

    public BigDecimal getSaldo() {
        return saldo;
    }

    public void setSaldo(BigDecimal saldo) {
        this.saldo = saldo;
    }

    public Clientes getCurp() {
        return curp;
    }

    public void setCurp(Clientes curp) {
        this.curp = curp;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (identificador != null ? identificador.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MonederosElectronicos)) {
            return false;
        }
        MonederosElectronicos other = (MonederosElectronicos) object;
        if ((this.identificador == null && other.identificador != null) || (this.identificador != null && !this.identificador.equals(other.identificador))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.MonederosElectronicos[ identificador=" + identificador + " ]";
    }
    
}
