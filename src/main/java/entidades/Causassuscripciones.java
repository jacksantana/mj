/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author SEBASTIAN
 */
@Entity
@Table(name = "causassuscripciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Causassuscripciones.findAll", query = "SELECT c FROM Causassuscripciones c")
    , @NamedQuery(name = "Causassuscripciones.findByIdcausasus", query = "SELECT c FROM Causassuscripciones c WHERE c.idcausasus = :idcausasus")
    , @NamedQuery(name = "Causassuscripciones.findByFecha", query = "SELECT c FROM Causassuscripciones c WHERE c.fecha = :fecha")
    , @NamedQuery(name = "Causassuscripciones.findByEvaluacion", query = "SELECT c FROM Causassuscripciones c WHERE c.evaluacion = :evaluacion")
    , @NamedQuery(name = "Causassuscripciones.findByTipo", query = "SELECT c FROM Causassuscripciones c WHERE c.tipo = :tipo")
    , @NamedQuery(name = "Causassuscripciones.findByEstado", query = "SELECT c FROM Causassuscripciones c WHERE c.estado = :estado")})
public class Causassuscripciones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcausasus")
    private Integer idcausasus;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Column(name = "evaluacion")
    private Integer evaluacion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tipo")
    private int tipo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @JoinColumn(name = "idusuarioFK", referencedColumnName = "idusuario")
    @ManyToOne(optional = false)
    private Usuarios idusuarioFK;
    @JoinColumn(name = "idcausaFK", referencedColumnName = "idcausa")
    @ManyToOne(optional = false)
    private Causas idcausaFK;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idcausasusFK")
    private Collection<Mensajes> mensajesCollection;

    public Causassuscripciones() {
    }

    public Causassuscripciones(Integer idcausasus) {
        this.idcausasus = idcausasus;
    }

    public Causassuscripciones(Integer idcausasus, Date fecha, int tipo, int estado) {
        this.idcausasus = idcausasus;
        this.fecha = fecha;
        this.tipo = tipo;
        this.estado = estado;
    }

    public Integer getIdcausasus() {
        return idcausasus;
    }

    public void setIdcausasus(Integer idcausasus) {
        this.idcausasus = idcausasus;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Integer getEvaluacion() {
        return evaluacion;
    }

    public void setEvaluacion(Integer evaluacion) {
        this.evaluacion = evaluacion;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
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

    public Causas getIdcausaFK() {
        return idcausaFK;
    }

    public void setIdcausaFK(Causas idcausaFK) {
        this.idcausaFK = idcausaFK;
    }

    @XmlTransient
    public Collection<Mensajes> getMensajesCollection() {
        return mensajesCollection;
    }

    public void setMensajesCollection(Collection<Mensajes> mensajesCollection) {
        this.mensajesCollection = mensajesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcausasus != null ? idcausasus.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Causassuscripciones)) {
            return false;
        }
        Causassuscripciones other = (Causassuscripciones) object;
        if ((this.idcausasus == null && other.idcausasus != null) || (this.idcausasus != null && !this.idcausasus.equals(other.idcausasus))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Causassuscripciones[ idcausasus=" + idcausasus + " ]";
    }
    
}
