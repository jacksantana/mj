/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SEBASTIAN
 */
@Entity
@Table(name = "usuariosinteracciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuariosinteracciones.findAll", query = "SELECT u FROM Usuariosinteracciones u")
    , @NamedQuery(name = "Usuariosinteracciones.findByIdinteraccion", query = "SELECT u FROM Usuariosinteracciones u WHERE u.idinteraccion = :idinteraccion")
    , @NamedQuery(name = "Usuariosinteracciones.findByFecha", query = "SELECT u FROM Usuariosinteracciones u WHERE u.fecha = :fecha")
    , @NamedQuery(name = "Usuariosinteracciones.findByEstado", query = "SELECT u FROM Usuariosinteracciones u WHERE u.estado = :estado")})
public class Usuariosinteracciones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idinteraccion")
    private Integer idinteraccion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @JoinColumn(name = "ownerFK", referencedColumnName = "idusuario")
    @ManyToOne(optional = false)
    private Usuarios ownerFK;
    @JoinColumn(name = "targetFK", referencedColumnName = "idusuario")
    @ManyToOne(optional = false)
    private Usuarios targetFK;
    @JoinColumn(name = "idinteraccionFK", referencedColumnName = "idinteraccion")
    @ManyToOne(optional = false)
    private Interacciones idinteraccionFK;

    public Usuariosinteracciones() {
    }

    public Usuariosinteracciones(Integer idinteraccion) {
        this.idinteraccion = idinteraccion;
    }

    public Usuariosinteracciones(Integer idinteraccion, Date fecha, int estado) {
        this.idinteraccion = idinteraccion;
        this.fecha = fecha;
        this.estado = estado;
    }

    public Integer getIdinteraccion() {
        return idinteraccion;
    }

    public void setIdinteraccion(Integer idinteraccion) {
        this.idinteraccion = idinteraccion;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public Usuarios getOwnerFK() {
        return ownerFK;
    }

    public void setOwnerFK(Usuarios ownerFK) {
        this.ownerFK = ownerFK;
    }

    public Usuarios getTargetFK() {
        return targetFK;
    }

    public void setTargetFK(Usuarios targetFK) {
        this.targetFK = targetFK;
    }

    public Interacciones getIdinteraccionFK() {
        return idinteraccionFK;
    }

    public void setIdinteraccionFK(Interacciones idinteraccionFK) {
        this.idinteraccionFK = idinteraccionFK;
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
        if (!(object instanceof Usuariosinteracciones)) {
            return false;
        }
        Usuariosinteracciones other = (Usuariosinteracciones) object;
        if ((this.idinteraccion == null && other.idinteraccion != null) || (this.idinteraccion != null && !this.idinteraccion.equals(other.idinteraccion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Usuariosinteracciones[ idinteraccion=" + idinteraccion + " ]";
    }
    
}
