/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
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
@Table(name = "ESPECIALIDADES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Especialidades.findAll", query = "SELECT e FROM Especialidades e")
    , @NamedQuery(name = "Especialidades.findByEspecialidad", query = "SELECT e FROM Especialidades e WHERE e.especialidadesPK.especialidad = :especialidad")
    , @NamedQuery(name = "Especialidades.findByCurp", query = "SELECT e FROM Especialidades e WHERE e.especialidadesPK.curp = :curp")})
public class Especialidades implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EspecialidadesPK especialidadesPK;
    @JoinColumn(name = "curp", referencedColumnName = "curp", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Medicos medicos;

    public Especialidades() {
    }

    public Especialidades(EspecialidadesPK especialidadesPK) {
        this.especialidadesPK = especialidadesPK;
    }

    public Especialidades(String especialidad, String curp) {
        this.especialidadesPK = new EspecialidadesPK(especialidad, curp);
    }

    public EspecialidadesPK getEspecialidadesPK() {
        return especialidadesPK;
    }

    public void setEspecialidadesPK(EspecialidadesPK especialidadesPK) {
        this.especialidadesPK = especialidadesPK;
    }

    public Medicos getMedicos() {
        return medicos;
    }

    public void setMedicos(Medicos medicos) {
        this.medicos = medicos;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (especialidadesPK != null ? especialidadesPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Especialidades)) {
            return false;
        }
        Especialidades other = (Especialidades) object;
        if ((this.especialidadesPK == null && other.especialidadesPK != null) || (this.especialidadesPK != null && !this.especialidadesPK.equals(other.especialidadesPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Especialidades[ especialidadesPK=" + especialidadesPK + " ]";
    }
    
}
