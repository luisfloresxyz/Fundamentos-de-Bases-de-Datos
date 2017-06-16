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
@Table(name = "ACADEMICOS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Academicos.findAll", query = "SELECT a FROM Academicos a")
    , @NamedQuery(name = "Academicos.findByIdUnam", query = "SELECT a FROM Academicos a WHERE a.idUnam = :idUnam")
    , @NamedQuery(name = "Academicos.findByHoraEntrada", query = "SELECT a FROM Academicos a WHERE a.horaEntrada = :horaEntrada")
    , @NamedQuery(name = "Academicos.findByHoraSalida", query = "SELECT a FROM Academicos a WHERE a.horaSalida = :horaSalida")
    , @NamedQuery(name = "Academicos.findByInstituto", query = "SELECT a FROM Academicos a WHERE a.instituto = :instituto")})
public class Academicos implements Serializable {

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
    @Column(name = "instituto")
    private String instituto;
    @JoinColumn(name = "curp", referencedColumnName = "curp")
    @ManyToOne
    private Personas curp;

    public Academicos() {
    }

    public Academicos(Long idUnam) {
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

    public String getInstituto() {
        return instituto;
    }

    public void setInstituto(String instituto) {
        this.instituto = instituto;
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
        if (!(object instanceof Academicos)) {
            return false;
        }
        Academicos other = (Academicos) object;
        if ((this.idUnam == null && other.idUnam != null) || (this.idUnam != null && !this.idUnam.equals(other.idUnam))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Academicos[ idUnam=" + idUnam + " ]";
    }
    
}
