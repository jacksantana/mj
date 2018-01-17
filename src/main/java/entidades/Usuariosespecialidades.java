/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SEBASTIAN
 */
@Entity
@Table(name = "usuariosespecialidades")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuariosespecialidades.findAll", query = "SELECT u FROM Usuariosespecialidades u")
    , @NamedQuery(name = "Usuariosespecialidades.findByIdusuarioesp", query = "SELECT u FROM Usuariosespecialidades u WHERE u.idusuarioesp = :idusuarioesp")
    , @NamedQuery(name = "Usuariosespecialidades.findByEstado", query = "SELECT u FROM Usuariosespecialidades u WHERE u.estado = :estado")})
public class Usuariosespecialidades implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idusuarioesp")
    private Integer idusuarioesp;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @JoinColumn(name = "idusuarioFK", referencedColumnName = "idusuario")
    @ManyToOne(optional = false)
    private Usuarios idusuarioFK;
    @JoinColumn(name = "idespecialidadFK", referencedColumnName = "idespecialidad")
    @ManyToOne(optional = false)
    private Especialidades idespecialidadFK;

    public Usuariosespecialidades() {
    }

    public Usuariosespecialidades(Integer idusuarioesp) {
        this.idusuarioesp = idusuarioesp;
    }

    public Usuariosespecialidades(Integer idusuarioesp, int estado) {
        this.idusuarioesp = idusuarioesp;
        this.estado = estado;
    }

    public Integer getIdusuarioesp() {
        return idusuarioesp;
    }

    public void setIdusuarioesp(Integer idusuarioesp) {
        this.idusuarioesp = idusuarioesp;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public Usuarios getIdusuarioFK() {
        return idusuarioFK;
    }

    public void setIdusuarioFK(Usuarios idusuarioFK) {
        this.idusuarioFK = idusuarioFK;
    }

    public Especialidades getIdespecialidadFK() {
        return idespecialidadFK;
    }

    public void setIdespecialidadFK(Especialidades idespecialidadFK) {
        this.idespecialidadFK = idespecialidadFK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idusuarioesp != null ? idusuarioesp.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuariosespecialidades)) {
            return false;
        }
        Usuariosespecialidades other = (Usuariosespecialidades) object;
        if ((this.idusuarioesp == null && other.idusuarioesp != null) || (this.idusuarioesp != null && !this.idusuarioesp.equals(other.idusuarioesp))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Usuariosespecialidades[ idusuarioesp=" + idusuarioesp + " ]";
    }
    
}
