/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
@Table(name = "TRABAJADORES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Trabajadores.findAll", query = "SELECT t FROM Trabajadores t")
    , @NamedQuery(name = "Trabajadores.findByIdUnam", query = "SELECT t FROM Trabajadores t WHERE t.idUnam = :idUnam")
    , @NamedQuery(name = "Trabajadores.findByHoraEntrada", query = "SELECT t FROM Trabajadores t WHERE t.horaEntrada = :horaEntrada")
    , @NamedQuery(name = "Trabajadores.findByHoraSalida", query = "SELECT t FROM Trabajadores t WHERE t.horaSalida = :horaSalida")
    , @NamedQuery(name = "Trabajadores.findByUnidad", query = "SELECT t FROM Trabajadores t WHERE t.unidad = :unidad")})
public class Trabajadores implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "id_unam")
    private Long idUnam;
    @Column(name = "hora_entrada")
    @Temporal(TemporalType.TIME)
    private Date horaEntrada;
    @Column(name = "hora_salida")
    @Temporal(TemporalType.TIME)
    private Date horaSalida;
    @Column(name = "unidad")
    private String unidad;
    @JoinColumn(name = "curp", referencedColumnName = "curp")
    @ManyToOne
    private Personas curp;

    public Trabajadores() {
    }

    public Trabajadores(Long idUnam) {
        this.idUnam = idUnam;
    }

    public Long getIdUnam() {
        return idUnam;
    }

    public void setIdUnam(Long idUnam) {
        this.idUnam = idUnam;
    }

    public Date getHoraEntrada() {
        return horaEntrada;
    }

    public void setHoraEntrada(Date horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public Date getHoraSalida() {
        return horaSalida;
    }

    public void setHoraSalida(Date horaSalida) {
        this.horaSalida = horaSalida;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
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
        hash += (idUnam != null ? idUnam.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Trabajadores)) {
            return false;
        }
        Trabajadores other = (Trabajadores) object;
        if ((this.idUnam == null && other.idUnam != null) || (this.idUnam != null && !this.idUnam.equals(other.idUnam))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Trabajadores[ idUnam=" + idUnam + " ]";
    }
    
}
