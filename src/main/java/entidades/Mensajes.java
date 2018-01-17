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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SEBASTIAN
 */
@Entity
@Table(name = "mensajes")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mensajes.findAll", query = "SELECT m FROM Mensajes m")
    , @NamedQuery(name = "Mensajes.findByIdmensaje", query = "SELECT m FROM Mensajes m WHERE m.idmensaje = :idmensaje")
    , @NamedQuery(name = "Mensajes.findByMensaje", query = "SELECT m FROM Mensajes m WHERE m.mensaje = :mensaje")
    , @NamedQuery(name = "Mensajes.findByFecha", query = "SELECT m FROM Mensajes m WHERE m.fecha = :fecha")
    , @NamedQuery(name = "Mensajes.findByVisto", query = "SELECT m FROM Mensajes m WHERE m.visto = :visto")
    , @NamedQuery(name = "Mensajes.findByEstado", query = "SELECT m FROM Mensajes m WHERE m.estado = :estado")})
public class Mensajes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idmensaje")
    private Integer idmensaje;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "mensaje")
    private String mensaje;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Basic(optional = false)
    @NotNull
    @Column(name = "visto")
    private short visto;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @JoinColumn(name = "idcausasusFK", referencedColumnName = "idcausasus")
    @ManyToOne(optional = false)
    private Causassuscripciones idcausasusFK;

    public Mensajes() {
    }

    public Mensajes(Integer idmensaje) {
        this.idmensaje = idmensaje;
    }

    public Mensajes(Integer idmensaje, String mensaje, Date fecha, short visto, int estado) {
        this.idmensaje = idmensaje;
        this.mensaje = mensaje;
        this.fecha = fecha;
        this.visto = visto;
        this.estado = estado;
    }

    public Integer getIdmensaje() {
        return idmensaje;
    }

    public void setIdmensaje(Integer idmensaje) {
        this.idmensaje = idmensaje;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public short getVisto() {
        return visto;
    }

    public void setVisto(short visto) {
        this.visto = visto;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public Causassuscripciones getIdcausasusFK() {
        return idcausasusFK;
    }

    public void setIdcausasusFK(Causassuscripciones idcausasusFK) {
        this.idcausasusFK = idcausasusFK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idmensaje != null ? idmensaje.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Mensajes)) {
            return false;
        }
        Mensajes other = (Mensajes) object;
        if ((this.idmensaje == null && other.idmensaje != null) || (this.idmensaje != null && !this.idmensaje.equals(other.idmensaje))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Mensajes[ idmensaje=" + idmensaje + " ]";
    }
    
}
