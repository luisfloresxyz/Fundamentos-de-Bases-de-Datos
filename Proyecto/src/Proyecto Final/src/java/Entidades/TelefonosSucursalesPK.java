/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author Luis
 */
@Embeddable
public class TelefonosSucursalesPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "telefono")
    private long telefono;
    @Basic(optional = false)
    @Column(name = "identificador")
    private int identificador;

    public TelefonosSucursalesPK() {
    }

    public TelefonosSucursalesPK(long telefono, int identificador) {
        this.telefono = telefono;
        this.identificador = identificador;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public int getIdentificador() {
        return identificador;
    }

    public void setIdentificador(int identificador) {
        this.identificador = identificador;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) telefono;
        hash += (int) identificador;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TelefonosSucursalesPK)) {
            return false;
        }
        TelefonosSucursalesPK other = (TelefonosSucursalesPK) object;
        if (this.telefono != other.telefono) {
            return false;
        }
        if (this.identificador != other.identificador) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.TelefonosSucursalesPK[ telefono=" + telefono + ", identificador=" + identificador + " ]";
    }
    
}
