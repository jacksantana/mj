/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
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
@Table(name = "planes")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Planes.findAll", query = "SELECT p FROM Planes p")
    , @NamedQuery(name = "Planes.findByIdplan", query = "SELECT p FROM Planes p WHERE p.idplan = :idplan")
    , @NamedQuery(name = "Planes.findByDescripcion", query = "SELECT p FROM Planes p WHERE p.descripcion = :descripcion")
    , @NamedQuery(name = "Planes.findByValor", query = "SELECT p FROM Planes p WHERE p.valor = :valor")
    , @NamedQuery(name = "Planes.findByDuracion", query = "SELECT p FROM Planes p WHERE p.duracion = :duracion")
    , @NamedQuery(name = "Planes.findByEstado", query = "SELECT p FROM Planes p WHERE p.estado = :estado")})
public class Planes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idplan")
    private Integer idplan;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "valor")
    private int valor;
    @Basic(optional = false)
    @NotNull
    @Column(name = "duracion")
    private int duracion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @OneToMany(mappedBy = "idplanFK")
    private Collection<Compras> comprasCollection;

    public Planes() {
    }

    public Planes(Integer idplan) {
        this.idplan = idplan;
    }

    public Planes(Integer idplan, String descripcion, int valor, int duracion, int estado) {
        this.idplan = idplan;
        this.descripcion = descripcion;
        this.valor = valor;
        this.duracion = duracion;
        this.estado = estado;
    }

    public Integer getIdplan() {
        return idplan;
    }

    public void setIdplan(Integer idplan) {
        this.idplan = idplan;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public int getDuracion() {
        return duracion;
    }

    public void setDuracion(int duracion) {
        this.duracion = duracion;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    @XmlTransient
    public Collection<Compras> getComprasCollection() {
        return comprasCollection;
    }

    public void setComprasCollection(Collection<Compras> comprasCollection) {
        this.comprasCollection = comprasCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idplan != null ? idplan.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Planes)) {
            return false;
        }
        Planes other = (Planes) object;
        if ((this.idplan == null && other.idplan != null) || (this.idplan != null && !this.idplan.equals(other.idplan))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Planes[ idplan=" + idplan + " ]";
    }
    
}
