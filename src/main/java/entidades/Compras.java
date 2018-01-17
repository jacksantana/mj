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
@Table(name = "compras")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Compras.findAll", query = "SELECT c FROM Compras c")
    , @NamedQuery(name = "Compras.findByIdcompra", query = "SELECT c FROM Compras c WHERE c.idcompra = :idcompra")
    , @NamedQuery(name = "Compras.findByFecha", query = "SELECT c FROM Compras c WHERE c.fecha = :fecha")
    , @NamedQuery(name = "Compras.findByTipo", query = "SELECT c FROM Compras c WHERE c.tipo = :tipo")
    , @NamedQuery(name = "Compras.findByEstado", query = "SELECT c FROM Compras c WHERE c.estado = :estado")})
public class Compras implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcompra")
    private Integer idcompra;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fecha;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tipo")
    private int tipo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @JoinColumn(name = "idcodigoFK", referencedColumnName = "idcodigo")
    @ManyToOne
    private Codigos idcodigoFK;
    @JoinColumn(name = "idplanFK", referencedColumnName = "idplan")
    @ManyToOne
    private Planes idplanFK;
    @JoinColumn(name = "idusuarioFK", referencedColumnName = "idusuario")
    @ManyToOne(optional = false)
    private Usuarios idusuarioFK;

    public Compras() {
    }

    public Compras(Integer idcompra) {
        this.idcompra = idcompra;
    }

    public Compras(Integer idcompra, Date fecha, int tipo, int estado) {
        this.idcompra = idcompra;
        this.fecha = fecha;
        this.tipo = tipo;
        this.estado = estado;
    }

    public Integer getIdcompra() {
        return idcompra;
    }

    public void setIdcompra(Integer idcompra) {
        this.idcompra = idcompra;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
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

    public Codigos getIdcodigoFK() {
        return idcodigoFK;
    }

    public void setIdcodigoFK(Codigos idcodigoFK) {
        this.idcodigoFK = idcodigoFK;
    }

    public Planes getIdplanFK() {
        return idplanFK;
    }

    public void setIdplanFK(Planes idplanFK) {
        this.idplanFK = idplanFK;
    }

    public Usuarios getIdusuarioFK() {
        return idusuarioFK;
    }

    public void setIdusuarioFK(Usuarios idusuarioFK) {
        this.idusuarioFK = idusuarioFK;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcompra != null ? idcompra.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Compras)) {
            return false;
        }
        Compras other = (Compras) object;
        if ((this.idcompra == null && other.idcompra != null) || (this.idcompra != null && !this.idcompra.equals(other.idcompra))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Compras[ idcompra=" + idcompra + " ]";
    }
    
}
