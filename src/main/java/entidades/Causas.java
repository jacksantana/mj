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
@Table(name = "causas")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Causas.findAll", query = "SELECT c FROM Causas c")
    , @NamedQuery(name = "Causas.findByIdcausa", query = "SELECT c FROM Causas c WHERE c.idcausa = :idcausa")
    , @NamedQuery(name = "Causas.findByDescripcion", query = "SELECT c FROM Causas c WHERE c.descripcion = :descripcion")
    , @NamedQuery(name = "Causas.findByEstado", query = "SELECT c FROM Causas c WHERE c.estado = :estado")})
public class Causas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcausa")
    private Integer idcausa;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idcausaFK")
    private Collection<Causassuscripciones> causassuscripcionesCollection;
    @JoinColumn(name = "idcomunaFK", referencedColumnName = "idcomuna")
    @ManyToOne(optional = false)
    private Comunas idcomunaFK;
    @JoinColumn(name = "idespecialidadFK", referencedColumnName = "idespecialidad")
    @ManyToOne(optional = false)
    private Especialidades idespecialidadFK;

    public Causas() {
    }

    public Causas(Integer idcausa) {
        this.idcausa = idcausa;
    }

    public Causas(Integer idcausa, String descripcion, int estado) {
        this.idcausa = idcausa;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public Integer getIdcausa() {
        return idcausa;
    }

    public void setIdcausa(Integer idcausa) {
        this.idcausa = idcausa;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    @XmlTransient
    public Collection<Causassuscripciones> getCausassuscripcionesCollection() {
        return causassuscripcionesCollection;
    }

    public void setCausassuscripcionesCollection(Collection<Causassuscripciones> causassuscripcionesCollection) {
        this.causassuscripcionesCollection = causassuscripcionesCollection;
    }

    public Comunas getIdcomunaFK() {
        return idcomunaFK;
    }

    public void setIdcomunaFK(Comunas idcomunaFK) {
        this.idcomunaFK = idcomunaFK;
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
        hash += (idcausa != null ? idcausa.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Causas)) {
            return false;
        }
        Causas other = (Causas) object;
        if ((this.idcausa == null && other.idcausa != null) || (this.idcausa != null && !this.idcausa.equals(other.idcausa))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Causas[ idcausa=" + idcausa + " ]";
    }
    
}
