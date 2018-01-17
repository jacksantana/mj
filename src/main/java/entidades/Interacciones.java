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
@Table(name = "interacciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Interacciones.findAll", query = "SELECT i FROM Interacciones i")
    , @NamedQuery(name = "Interacciones.findByIdinteraccion", query = "SELECT i FROM Interacciones i WHERE i.idinteraccion = :idinteraccion")
    , @NamedQuery(name = "Interacciones.findByNombre", query = "SELECT i FROM Interacciones i WHERE i.nombre = :nombre")
    , @NamedQuery(name = "Interacciones.findByEstado", query = "SELECT i FROM Interacciones i WHERE i.estado = :estado")})
public class Interacciones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idinteraccion")
    private Integer idinteraccion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 35)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idinteraccionFK")
    private Collection<Usuariosinteracciones> usuariosinteraccionesCollection;

    public Interacciones() {
    }

    public Interacciones(Integer idinteraccion) {
        this.idinteraccion = idinteraccion;
    }

    public Interacciones(Integer idinteraccion, String nombre, int estado) {
        this.idinteraccion = idinteraccion;
        this.nombre = nombre;
        this.estado = estado;
    }

    public Integer getIdinteraccion() {
        return idinteraccion;
    }

    public void setIdinteraccion(Integer idinteraccion) {
        this.idinteraccion = idinteraccion;
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
    public Collection<Usuariosinteracciones> getUsuariosinteraccionesCollection() {
        return usuariosinteraccionesCollection;
    }

    public void setUsuariosinteraccionesCollection(Collection<Usuariosinteracciones> usuariosinteraccionesCollection) {
        this.usuariosinteraccionesCollection = usuariosinteraccionesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idinteraccion != null ? idinteraccion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Interacciones)) {
            return false;
        }
        Interacciones other = (Interacciones) object;
        if ((this.idinteraccion == null && other.idinteraccion != null) || (this.idinteraccion != null && !this.idinteraccion.equals(other.idinteraccion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Interacciones[ idinteraccion=" + idinteraccion + " ]";
    }
    
}
