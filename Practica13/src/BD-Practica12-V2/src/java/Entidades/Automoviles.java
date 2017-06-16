/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "AUTOMOVILES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Automoviles.findAll", query = "SELECT a FROM Automoviles a")
    , @NamedQuery(name = "Automoviles.findByNumMotor", query = "SELECT a FROM Automoviles a WHERE a.numMotor = :numMotor")
    , @NamedQuery(name = "Automoviles.findByAnio", query = "SELECT a FROM Automoviles a WHERE a.anio = :anio")
    , @NamedQuery(name = "Automoviles.findByMarca", query = "SELECT a FROM Automoviles a WHERE a.marca = :marca")
    , @NamedQuery(name = "Automoviles.findByModelo", query = "SELECT a FROM Automoviles a WHERE a.modelo = :modelo")
    , @NamedQuery(name = "Automoviles.findByNumCilindros", query = "SELECT a FROM Automoviles a WHERE a.numCilindros = :numCilindros")
    , @NamedQuery(name = "Automoviles.findByLlantaRefaccion", query = "SELECT a FROM Automoviles a WHERE a.llantaRefaccion = :llantaRefaccion")
    , @NamedQuery(name = "Automoviles.findByTipo", query = "SELECT a FROM Automoviles a WHERE a.tipo = :tipo")
    , @NamedQuery(name = "Automoviles.findByEstaActivo", query = "SELECT a FROM Automoviles a WHERE a.estaActivo = :estaActivo")
    , @NamedQuery(name = "Automoviles.findByFechaActivo", query = "SELECT a FROM Automoviles a WHERE a.fechaActivo = :fechaActivo")})
public class Automoviles implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "num_motor")
    private String numMotor;
    @Basic(optional = false)
    @Column(name = "anio")
    @Temporal(TemporalType.DATE)
    private Date anio;
    @Basic(optional = false)
    @Column(name = "marca")
    private String marca;
    @Basic(optional = false)
    @Column(name = "modelo")
    private String modelo;
    @Basic(optional = false)
    @Column(name = "num_cilindros")
    private short numCilindros;
    @Basic(optional = false)
    @Column(name = "llanta_refaccion")
    private String llantaRefaccion;
    @Basic(optional = false)
    @Column(name = "tipo")
    private String tipo;
    @Basic(optional = false)
    @Column(name = "esta_activo")
    private String estaActivo;
    @Column(name = "fecha_activo")
    @Temporal(TemporalType.DATE)
    private Date fechaActivo;
    @ManyToMany(mappedBy = "automovilesList")
    private List<Viajes> viajesList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "numMotor")
    private List<Multas> multasList;

    public Automoviles() {
    }

    public Automoviles(String numMotor) {
        this.numMotor = numMotor;
    }

    public Automoviles(String numMotor, Date anio, String marca, String modelo, short numCilindros, String llantaRefaccion, String tipo, String estaActivo) {
        this.numMotor = numMotor;
        this.anio = anio;
        this.marca = marca;
        this.modelo = modelo;
        this.numCilindros = numCilindros;
        this.llantaRefaccion = llantaRefaccion;
        this.tipo = tipo;
        this.estaActivo = estaActivo;
    }

    public String getNumMotor() {
        return numMotor;
    }

    public void setNumMotor(String numMotor) {
        this.numMotor = numMotor;
    }

    public Date getAnio() {
        return anio;
    }

    public void setAnio(Date anio) {
        this.anio = anio;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public short getNumCilindros() {
        return numCilindros;
    }

    public void setNumCilindros(short numCilindros) {
        this.numCilindros = numCilindros;
    }

    public String getLlantaRefaccion() {
        return llantaRefaccion;
    }

    public void setLlantaRefaccion(String llantaRefaccion) {
        this.llantaRefaccion = llantaRefaccion;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
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

    @XmlTransient
    public List<Viajes> getViajesList() {
        return viajesList;
    }

    public void setViajesList(List<Viajes> viajesList) {
        this.viajesList = viajesList;
    }

    @XmlTransient
    public List<Multas> getMultasList() {
        return multasList;
    }

    public void setMultasList(List<Multas> multasList) {
        this.multasList = multasList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (numMotor != null ? numMotor.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Automoviles)) {
            return false;
        }
        Automoviles other = (Automoviles) object;
        if ((this.numMotor == null && other.numMotor != null) || (this.numMotor != null && !this.numMotor.equals(other.numMotor))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Automoviles[ numMotor=" + numMotor + " ]";
    }
    
}
