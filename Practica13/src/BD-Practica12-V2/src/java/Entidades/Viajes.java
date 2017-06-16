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
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
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
@Table(name = "VIAJES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Viajes.findAll", query = "SELECT v FROM Viajes v")
    , @NamedQuery(name = "Viajes.findByIdViaje", query = "SELECT v FROM Viajes v WHERE v.idViaje = :idViaje")
    , @NamedQuery(name = "Viajes.findByLugarComienzo", query = "SELECT v FROM Viajes v WHERE v.lugarComienzo = :lugarComienzo")
    , @NamedQuery(name = "Viajes.findByLugarDestino", query = "SELECT v FROM Viajes v WHERE v.lugarDestino = :lugarDestino")
    , @NamedQuery(name = "Viajes.findByNumPersonas", query = "SELECT v FROM Viajes v WHERE v.numPersonas = :numPersonas")
    , @NamedQuery(name = "Viajes.findByHoraInicio", query = "SELECT v FROM Viajes v WHERE v.horaInicio = :horaInicio")
    , @NamedQuery(name = "Viajes.findByHoraFinal", query = "SELECT v FROM Viajes v WHERE v.horaFinal = :horaFinal")
    , @NamedQuery(name = "Viajes.findByFecha", query = "SELECT v FROM Viajes v WHERE v.fecha = :fecha")})
public class Viajes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id_viaje")
    private Long idViaje;
    @Basic(optional = false)
    @Column(name = "lugar_comienzo")
    private String lugarComienzo;
    @Basic(optional = false)
    @Column(name = "lugar_destino")
    private String lugarDestino;
    @Basic(optional = false)
    @Column(name = "num_personas")
    private short numPersonas;
    @Basic(optional = false)
    @Column(name = "hora_inicio")
    @Temporal(TemporalType.TIME)
    private Date horaInicio;
    @Basic(optional = false)
    @Column(name = "hora_final")
    @Temporal(TemporalType.TIME)
    private Date horaFinal;
    @Basic(optional = false)
    @Column(name = "fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @JoinTable(name = "COMENZAR", joinColumns = {
        @JoinColumn(name = "id_viaje", referencedColumnName = "id_viaje")}, inverseJoinColumns = {
        @JoinColumn(name = "num_motor", referencedColumnName = "num_motor")})
    @ManyToMany
    private List<Automoviles> automovilesList;

    public Viajes() {
    }

    public Viajes(Long idViaje) {
        this.idViaje = idViaje;
    }

    public Viajes(Long idViaje, String lugarComienzo, String lugarDestino, short numPersonas, Date horaInicio, Date horaFinal, Date fecha) {
        this.idViaje = idViaje;
        this.lugarComienzo = lugarComienzo;
        this.lugarDestino = lugarDestino;
        this.numPersonas = numPersonas;
        this.horaInicio = horaInicio;
        this.horaFinal = horaFinal;
        this.fecha = fecha;
    }

    public Long getIdViaje() {
        return idViaje;
    }

    public void setIdViaje(Long idViaje) {
        this.idViaje = idViaje;
    }

    public String getLugarComienzo() {
        return lugarComienzo;
    }

    public void setLugarComienzo(String lugarComienzo) {
        this.lugarComienzo = lugarComienzo;
    }

    public String getLugarDestino() {
        return lugarDestino;
    }

    public void setLugarDestino(String lugarDestino) {
        this.lugarDestino = lugarDestino;
    }

    public short getNumPersonas() {
        return numPersonas;
    }

    public void setNumPersonas(short numPersonas) {
        this.numPersonas = numPersonas;
    }

    public Date getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(Date horaInicio) {
        this.horaInicio = horaInicio;
    }

    public Date getHoraFinal() {
        return horaFinal;
    }

    public void setHoraFinal(Date horaFinal) {
        this.horaFinal = horaFinal;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    @XmlTransient
    public List<Automoviles> getAutomovilesList() {
        return automovilesList;
    }

    public void setAutomovilesList(List<Automoviles> automovilesList) {
        this.automovilesList = automovilesList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idViaje != null ? idViaje.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Viajes)) {
            return false;
        }
        Viajes other = (Viajes) object;
        if ((this.idViaje == null && other.idViaje != null) || (this.idViaje != null && !this.idViaje.equals(other.idViaje))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Viajes[ idViaje=" + idViaje + " ]";
    }
    
}
