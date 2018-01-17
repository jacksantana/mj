/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author SEBASTIAN
 */
@Entity
@Table(name = "especialidades")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Especialidades.findAll", query = "SELECT e FROM Especialidades e")
    , @NamedQuery(name = "Especialidades.findByIdespecialidad", query = "SELECT e FROM Especialidades e WHERE e.idespecialidad = :idespecialidad")
    , @NamedQuery(name = "Especialidades.findByNombre", query = "SELECT e FROM Especialidades e WHERE e.nombre = :nombre")
    , @NamedQuery(name = "Especialidades.findByEstado", query = "SELECT e FROM Especialidades e WHERE e.estado = :estado")})
public class Especialidades implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idespecialidad")
    private Integer idespecialidad;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 35)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idespecialidadFK")
    private Collection<Usuariosespecialidades> usuariosespecialidadesCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idespecialidadFK")
    private Collection<Causas> causasCollection;

    public Especialidades() {
    }

    public Especialidades(Integer idespecialidad) {
        this.idespecialidad = idespecialidad;
    }

    public Especialidades(Integer idespecialidad, String nombre, int estado) {
        this.idespecialidad = idespecialidad;
        this.nombre = nombre;
        this.estado = estado;
    }

    public Integer getIdespecialidad() {
        return idespecialidad;
    }

    public void setIdespecialidad(Integer idespecialidad) {
        this.idespecialidad = idespecialidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    @XmlTransient
    public Collection<Usuariosespecialidades> getUsuariosespecialidadesCollection() {
        return usuariosespecialidadesCollection;
    }

    public void setUsuariosespecialidadesCollection(Collection<Usuariosespecialidades> usuariosespecialidadesCollection) {
        this.usuariosespecialidadesCollection = usuariosespecialidadesCollection;
    }

    @XmlTransient
    public Collection<Causas> getCausasCollection() {
        return causasCollection;
    }

    public void setCausasCollection(Collection<Causas> causasCollection) {
        this.causasCollection = causasCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idespecialidad != null ? idespecialidad.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Especialidades)) {
            return false;
        }
        Especialidades other = (Especialidades) object;
        if ((this.idespecialidad == null && other.idespecialidad != null) || (this.idespecialidad != null && !this.idespecialidad.equals(other.idespecialidad))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Especialidades[ idespecialidad=" + idespecialidad + " ]";
    }
    
}
