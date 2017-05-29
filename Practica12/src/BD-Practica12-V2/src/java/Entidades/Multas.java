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
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
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
@Table(name = "MULTAS", schema="Agencia")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Multas.findAll", query = "SELECT m FROM Multas m")
    , @NamedQuery(name = "Multas.findByIdMulta", query = "SELECT m FROM Multas m WHERE m.idMulta = :idMulta")
    , @NamedQuery(name = "Multas.findByMonto", query = "SELECT m FROM Multas m WHERE m.monto = :monto")
    , @NamedQuery(name = "Multas.findByHora", query = "SELECT m FROM Multas m WHERE m.hora = :hora")
    , @NamedQuery(name = "Multas.findByEstado", query = "SELECT m FROM Multas m WHERE m.estado = :estado")
    , @NamedQuery(name = "Multas.findByDelegacionMunicipio", query = "SELECT m FROM Multas m WHERE m.delegacionMunicipio = :delegacionMunicipio")
    , @NamedQuery(name = "Multas.findByColonia", query = "SELECT m FROM Multas m WHERE m.colonia = :colonia")
    , @NamedQuery(name = "Multas.findByCiudad", query = "SELECT m FROM Multas m WHERE m.ciudad = :ciudad")
    , @NamedQuery(name = "Multas.findByCalle", query = "SELECT m FROM Multas m WHERE m.calle = :calle")
    , @NamedQuery(name = "Multas.findByFecha", query = "SELECT m FROM Multas m WHERE m.fecha = :fecha")})
public class Multas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id_multa")
    private Integer idMulta;
    @Basic(optional = false)
    @Column(name = "monto")
    private BigInteger monto;
    @Basic(optional = false)
    @Lob
    @Column(name = "infraccion")
    private String infraccion;
    @Column(name = "hora")
    @Temporal(TemporalType.TIME)
    private Date hora;
    @Column(name = "estado")
    private String estado;
    @Column(name = "delegacion_municipio")
    private String delegacionMunicipio;
    @Column(name = "colonia")
    private String colonia;
    @Column(name = "ciudad")
    private String ciudad;
    @Column(name = "calle")
    private String calle;
    @Column(name = "fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @JoinColumn(name = "num_placa", referencedColumnName = "num_placa")
    @ManyToOne(optional = false)
    private Agentes numPlaca;
    @JoinColumn(name = "num_motor", referencedColumnName = "num_motor")
    @ManyToOne(optional = false)
    private Automoviles numMotor;

    public Multas() {
    }

    public Multas(Integer idMulta) {
        this.idMulta = idMulta;
    }

    public Multas(Integer idMulta, BigInteger monto, String infraccion) {
        this.idMulta = idMulta;
        this.monto = monto;
        this.infraccion = infraccion;
    }

    public Integer getIdMulta() {
        return idMulta;
    }

    public void setIdMulta(Integer idMulta) {
        this.idMulta = idMulta;
    }

    public BigInteger getMonto() {
        return monto;
    }

    public void setMonto(BigInteger monto) {
        this.monto = monto;
    }

    public String getInfraccion() {
        return infraccion;
    }

    public void setInfraccion(String infraccion) {
        this.infraccion = infraccion;
    }

    public Date getHora() {
        return hora;
    }

    public void setHora(Date hora) {
        this.hora = hora;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getDelegacionMunicipio() {
        return delegacionMunicipio;
    }

    public void setDelegacionMunicipio(String delegacionMunicipio) {
        this.delegacionMunicipio = delegacionMunicipio;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Agentes getNumPlaca() {
        return numPlaca;
    }

    public void setNumPlaca(Agentes numPlaca) {
        this.numPlaca = numPlaca;
    }

    public Automoviles getNumMotor() {
        return numMotor;
    }

    public void setNumMotor(Automoviles numMotor) {
        this.numMotor = numMotor;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idMulta != null ? idMulta.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Multas)) {
            return false;
        }
        Multas other = (Multas) object;
        if ((this.idMulta == null && other.idMulta != null) || (this.idMulta != null && !this.idMulta.equals(other.idMulta))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Multas[ idMulta=" + idMulta + " ]";
    }
    
}
