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
@Table(name = "codigos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Codigos.findAll", query = "SELECT c FROM Codigos c")
    , @NamedQuery(name = "Codigos.findByIdcodigo", query = "SELECT c FROM Codigos c WHERE c.idcodigo = :idcodigo")
    , @NamedQuery(name = "Codigos.findByCodigo", query = "SELECT c FROM Codigos c WHERE c.codigo = :codigo")
    , @NamedQuery(name = "Codigos.findByDuracion", query = "SELECT c FROM Codigos c WHERE c.duracion = :duracion")
    , @NamedQuery(name = "Codigos.findByEstado", query = "SELECT c FROM Codigos c WHERE c.estado = :estado")})
public class Codigos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcodigo")
    private Integer idcodigo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "codigo")
    private String codigo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "duracion")
    private int duracion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @OneToMany(mappedBy = "idcodigoFK")
    private Collection<Compras> comprasCollection;

    public Codigos() {
    }

    public Codigos(Integer idcodigo) {
        this.idcodigo = idcodigo;
    }

    public Codigos(Integer idcodigo, String codigo, int duracion, int estado) {
        this.idcodigo = idcodigo;
        this.codigo = codigo;
        this.duracion = duracion;
        this.estado = estado;
    }

    public Integer getIdcodigo() {
        return idcodigo;
    }

    public void setIdcodigo(Integer idcodigo) {
        this.idcodigo = idcodigo;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
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
        hash += (idcodigo != null ? idcodigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Codigos)) {
            return false;
        }
        Codigos other = (Codigos) object;
        if ((this.idcodigo == null && other.idcodigo != null) || (this.idcodigo != null && !this.idcodigo.equals(other.idcodigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Codigos[ idcodigo=" + idcodigo + " ]";
    }
    
}
