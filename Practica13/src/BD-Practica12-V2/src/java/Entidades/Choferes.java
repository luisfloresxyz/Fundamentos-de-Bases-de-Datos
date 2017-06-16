/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "CHOFERES", schema="Agencia")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Choferes.findAll", query = "SELECT c FROM Choferes c")
    , @NamedQuery(name = "Choferes.findByCurp", query = "SELECT c FROM Choferes c WHERE c.curp = :curp")
    , @NamedQuery(name = "Choferes.findByEstaActivo", query = "SELECT c FROM Choferes c WHERE c.estaActivo = :estaActivo")
    , @NamedQuery(name = "Choferes.findByFechaActivo", query = "SELECT c FROM Choferes c WHERE c.fechaActivo = :fechaActivo")
    , @NamedQuery(name = "Choferes.findByTarjetaCirculacion", query = "SELECT c FROM Choferes c WHERE c.tarjetaCirculacion = :tarjetaCirculacion")})
public class Choferes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;
    @Basic(optional = false)
    @Column(name = "esta_activo")
    private String estaActivo;
    @Column(name = "fecha_activo")
    @Temporal(TemporalType.DATE)
    private Date fechaActivo;
    @Column(name = "tarjeta_circulacion")
    private BigInteger tarjetaCirculacion;

    public Choferes() {
    }

    public Choferes(String curp) {
        this.curp = curp;
    }

    public Choferes(String curp, String estaActivo) {
        this.curp = curp;
        this.estaActivo = estaActivo;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getEstaActivo() {
        return estaActivo;
    }

    public void setEstaActivo(String estaActivo) {
        this.estaActivo = estaActivo;
    }

    public Date getFechaActivo() {
        return fechaActivo;
    }

    public void setFechaActivo(Date fechaActivo) {
        this.fechaActivo = fechaActivo;
    }

    public BigInteger getTarjetaCirculacion() {
        return tarjetaCirculacion;
    }

    public void setTarjetaCirculacion(BigInteger tarjetaCirculacion) {
        this.tarjetaCirculacion = tarjetaCirculacion;
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
        return "Controladores.Choferes[ curp=" + curp + " ]";
    }
    
}
