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
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Luis
 */
@Entity
@Table(name = "AGENTES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Agentes.findAll", query = "SELECT a FROM Agentes a")
    , @NamedQuery(name = "Agentes.findByNumPlaca", query = "SELECT a FROM Agentes a WHERE a.numPlaca = :numPlaca")
    , @NamedQuery(name = "Agentes.findBySector", query = "SELECT a FROM Agentes a WHERE a.sector = :sector")})
public class Agentes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "num_placa")
    private String numPlaca;
    @Column(name = "sector")
    private String sector;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "numPlaca")
    private List<Multas> multasList;
    @JoinColumn(name = "curp", referencedColumnName = "curp")
    @ManyToOne
    private Personas curp;

    public Agentes() {
    }

    public Agentes(String numPlaca) {
        this.numPlaca = numPlaca;
    }

    public String getNumPlaca() {
        return numPlaca;
    }

    public void setNumPlaca(String numPlaca) {
        this.numPlaca = numPlaca;
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    @XmlTransient
    public List<Multas> getMultasList() {
        return multasList;
    }

    public void setMultasList(List<Multas> multasList) {
        this.multasList = multasList;
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
        hash += (numPlaca != null ? numPlaca.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Agentes)) {
            return false;
        }
        Agentes other = (Agentes) object;
        if ((this.numPlaca == null && other.numPlaca != null) || (this.numPlaca != null && !this.numPlaca.equals(other.numPlaca))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controladores.Agentes[ numPlaca=" + numPlaca + " ]";
    }
    
}
