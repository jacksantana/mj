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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "comunas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Comunas.findAll", query = "SELECT c FROM Comunas c")
    , @NamedQuery(name = "Comunas.findByIdcomuna", query = "SELECT c FROM Comunas c WHERE c.idcomuna = :idcomuna")
    , @NamedQuery(name = "Comunas.findByNombre", query = "SELECT c FROM Comunas c WHERE c.nombre = :nombre")
    , @NamedQuery(name = "Comunas.findByEstado", query = "SELECT c FROM Comunas c WHERE c.estado = :estado")})
public class Comunas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcomuna")
    private Integer idcomuna;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 35)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @JoinColumn(name = "idprovinciaFK", referencedColumnName = "idprovincia")
    @ManyToOne(optional = false)
    private Provincias idprovinciaFK;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idcomunaFK")
    private Collection<Usuarios> usuariosCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idcomunaFK")
    private Collection<Causas> causasCollection;

    public Comunas() {
    }

    public Comunas(Integer idcomuna) {
        this.idcomuna = idcomuna;
    }

    public Comunas(Integer idcomuna, String nombre, int estado) {
        this.idcomuna = idcomuna;
        this.nombre = nombre;
        this.estado = estado;
    }

    public Integer getIdcomuna() {
        return idcomuna;
    }

    public void setIdcomuna(Integer idcomuna) {
        this.idcomuna = idcomuna;
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

    public Provincias getIdprovinciaFK() {
        return idprovinciaFK;
    }

    public void setIdprovinciaFK(Provincias idprovinciaFK) {
        this.idprovinciaFK = idprovinciaFK;
    }

    @XmlTransient
    public Collection<Usuarios> getUsuariosCollection() {
        return usuariosCollection;
    }

    public void setUsuariosCollection(Collection<Usuarios> usuariosCollection) {
        this.usuariosCollection = usuariosCollection;
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
        hash += (idcomuna != null ? idcomuna.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Comunas)) {
            return false;
        }
        Comunas other = (Comunas) object;
        if ((this.idcomuna == null && other.idcomuna != null) || (this.idcomuna != null && !this.idcomuna.equals(other.idcomuna))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Comunas[ idcomuna=" + idcomuna + " ]";
    }
    
}
