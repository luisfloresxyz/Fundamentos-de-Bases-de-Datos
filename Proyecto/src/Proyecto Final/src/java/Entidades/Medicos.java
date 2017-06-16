/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "MEDICOS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Medicos.findAll", query = "SELECT m FROM Medicos m")
    , @NamedQuery(name = "Medicos.findByNumCedulaProfesinal", query = "SELECT m FROM Medicos m WHERE m.numCedulaProfesinal = :numCedulaProfesinal")
    , @NamedQuery(name = "Medicos.findByCurp", query = "SELECT m FROM Medicos m WHERE m.curp = :curp")})
public class Medicos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "num_cedula_profesinal")
    private long numCedulaProfesinal;
    @Id
    @Basic(optional = false)
    @Column(name = "curp")
    private String curp;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "curp")
    private List<Consultas> consultasList;
    @JoinColumn(name = "curp", referencedColumnName = "curp", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Empleados empleados;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "medicos")
    private List<Especialidades> especialidadesList;

    public Medicos() {
    }

    public Medicos(String curp) {
        this.curp = curp;
    }

    public Medicos(String curp, long numCedulaProfesinal) {
        this.curp = curp;
        this.numCedulaProfesinal = numCedulaProfesinal;
    }

    public long getNumCedulaProfesinal() {
        return numCedulaProfesinal;
    }

    public void setNumCedulaProfesinal(long numCedulaProfesinal) {
        this.numCedulaProfesinal = numCedulaProfesinal;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    @XmlTransient
    public List<Consultas> getConsultasList() {
        return consultasList;
    }

    public void setConsultasList(List<Consultas> consultasList) {
        this.consultasList = consultasList;
    }

    public Empleados getEmpleados() {
        return empleados;
    }

    public void setEmpleados(Empleados empleados) {
        this.empleados = empleados;
    }

    @XmlTransient
    public List<Especialidades> getEspecialidadesList() {
        return especialidadesList;
    }

    public void setEspecialidadesList(List<Especialidades> especialidadesList) {
        this.especialidadesList = especialidadesList;
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
        if (!(object instanceof Medicos)) {
            return false;
        }
        Medicos other = (Medicos) object;
        if ((this.curp == null && other.curp != null) || (this.curp != null && !this.curp.equals(other.curp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Medicos[ curp=" + curp + " ]";
    }
    
}
