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
@Table(name = "regiones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Regiones.findAll", query = "SELECT r FROM Regiones r")
    , @NamedQuery(name = "Regiones.findByIdregion", query = "SELECT r FROM Regiones r WHERE r.idregion = :idregion")
    , @NamedQuery(name = "Regiones.findByNombre", query = "SELECT r FROM Regiones r WHERE r.nombre = :nombre")
    , @NamedQuery(name = "Regiones.findByNumRomano", query = "SELECT r FROM Regiones r WHERE r.numRomano = :numRomano")
    , @NamedQuery(name = "Regiones.findByNumProvincias", query = "SELECT r FROM Regiones r WHERE r.numProvincias = :numProvincias")
    , @NamedQuery(name = "Regiones.findByNumComunas", query = "SELECT r FROM Regiones r WHERE r.numComunas = :numComunas")
    , @NamedQuery(name = "Regiones.findByEstado", query = "SELECT r FROM Regiones r WHERE r.estado = :estado")})
public class Regiones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idregion")
    private Integer idregion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 35)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 5)
    @Column(name = "num_romano")
    private String numRomano;
    @Basic(optional = false)
    @NotNull
    @Column(name = "num_provincias")
    private int numProvincias;
    @Basic(optional = false)
    @NotNull
    @Column(name = "num_comunas")
    private int numComunas;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idregionFK")
    private Collection<Provincias> provinciasCollection;
    @JoinColumn(name = "idpaisFK", referencedColumnName = "idpais")
    @ManyToOne(optional = false)
    private Paises idpaisFK;

    public Regiones() {
    }

    public Regiones(Integer idregion) {
        this.idregion = idregion;
    }

    public Regiones(Integer idregion, String nombre, String numRomano, int numProvincias, int numComunas, int estado) {
        this.idregion = idregion;
        this.nombre = nombre;
        this.numRomano = numRomano;
        this.numProvincias = numProvincias;
        this.numComunas = numComunas;
        this.estado = estado;
    }

    public Integer getIdregion() {
        return idregion;
    }

    public void setIdregion(Integer idregion) {
        this.idregion = idregion;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNumRomano() {
        return numRomano;
    }

    public void setNumRomano(String numRomano) {
        this.numRomano = numRomano;
    }

    public int getNumProvincias() {
        return numProvincias;
    }

    public void setNumProvincias(int numProvincias) {
        this.numProvincias = numProvincias;
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

    @XmlTransient
    public Collection<Provincias> getProvinciasCollection() {
        return provinciasCollection;
    }

    public void setProvinciasCollection(Collection<Provincias> provinciasCollection) {
        this.provinciasCollection = provinciasCollection;
    }

    public Paises getIdpaisFK() {
        return idpaisFK;
    }

    public void setIdpaisFK(Paises idpaisFK) {
        this.idpaisFK = idpaisFK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idregion != null ? idregion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Regiones)) {
            return false;
        }
        Regiones other = (Regiones) object;
        if ((this.idregion == null && other.idregion != null) || (this.idregion != null && !this.idregion.equals(other.idregion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Regiones[ idregion=" + idregion + " ]";
    }
    
}
