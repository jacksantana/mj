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
@Table(name = "provincias")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Provincias.findAll", query = "SELECT p FROM Provincias p")
    , @NamedQuery(name = "Provincias.findByIdprovincia", query = "SELECT p FROM Provincias p WHERE p.idprovincia = :idprovincia")
    , @NamedQuery(name = "Provincias.findByNombre", query = "SELECT p FROM Provincias p WHERE p.nombre = :nombre")
    , @NamedQuery(name = "Provincias.findByNumComunas", query = "SELECT p FROM Provincias p WHERE p.numComunas = :numComunas")
    , @NamedQuery(name = "Provincias.findByEstado", query = "SELECT p FROM Provincias p WHERE p.estado = :estado")})
public class Provincias implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idprovincia")
    private Integer idprovincia;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 35)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Column(name = "num_comunas")
    private int numComunas;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @JoinColumn(name = "idregionFK", referencedColumnName = "idregion")
    @ManyToOne(optional = false)
    private Regiones idregionFK;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idprovinciaFK")
    private Collection<Comunas> comunasCollection;

    public Provincias() {
    }

    public Provincias(Integer idprovincia) {
        this.idprovincia = idprovincia;
    }

    public Provincias(Integer idprovincia, String nombre, int numComunas, int estado) {
        this.idprovincia = idprovincia;
        this.nombre = nombre;
        this.numComunas = numComunas;
        this.estado = estado;
    }

    public Integer getIdprovincia() {
        return idprovincia;
    }

    public void setIdprovincia(Integer idprovincia) {
        this.idprovincia = idprovincia;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getNumComunas() {
        return numComunas;
    }

    public void setNumComunas(int numComunas) {
        this.numComunas = numComunas;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public Regiones getIdregionFK() {
        return idregionFK;
    }

    public void setIdregionFK(Regiones idregionFK) {
        this.idregionFK = idregionFK;
    }

    @XmlTransient
    public Collection<Comunas> getComunasCollection() {
        return comunasCollection;
    }

    public void setComunasCollection(Collection<Comunas> comunasCollection) {
        this.comunasCollection = comunasCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idprovincia != null ? idprovincia.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Provincias)) {
            return false;
        }
        Provincias other = (Provincias) object;
        if ((this.idprovincia == null && other.idprovincia != null) || (this.idprovincia != null && !this.idprovincia.equals(other.idprovincia))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Provincias[ idprovincia=" + idprovincia + " ]";
    }
    
}
