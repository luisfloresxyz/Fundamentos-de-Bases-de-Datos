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
@Table(name = "ALUMNOS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Alumnos.findAll", query = "SELECT a FROM Alumnos a")
    , @NamedQuery(name = "Alumnos.findByIdUnam", query = "SELECT a FROM Alumnos a WHERE a.idUnam = :idUnam")
    , @NamedQuery(name = "Alumnos.findByHoraEntrada", query = "SELECT a FROM Alumnos a WHERE a.horaEntrada = :horaEntrada")
    , @NamedQuery(name = "Alumnos.findByHoraSalida", query = "SELECT a FROM Alumnos a WHERE a.horaSalida = :horaSalida")
    , @NamedQuery(name = "Alumnos.findByFacultad", query = "SELECT a FROM Alumnos a WHERE a.facultad = :facultad")})
public class Alumnos implements Serializable {

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
    @Column(name = "facultad")
    private String facultad;
    @JoinColumn(name = "curp", referencedColumnName = "curp")
    @ManyToOne
    private Personas curp;

    public Alumnos() {
    }

    public Alumnos(Long idUnam) {
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

    public String getFacultad() {
        return facultad;
    }

    public void setFacultad(String facultad) {
        this.facultad = facultad;
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
        if (!(object instanceof Alumnos)) {
            return false;
        }
        Alumnos other = (Alumnos) object;
        if ((this.idUnam == null && other.idUnam != null) || (this.idUnam != null && !this.idUnam.equals(other.idUnam))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Alumnos[ idUnam=" + idUnam + " ]";
    }
    
}
