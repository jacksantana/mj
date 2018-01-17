/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidades;

import java.io.Serializable;
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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SEBASTIAN
 */
@Entity
@Table(name = "videotutoriales")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Videotutoriales.findAll", query = "SELECT v FROM Videotutoriales v")
    , @NamedQuery(name = "Videotutoriales.findByIdvideo", query = "SELECT v FROM Videotutoriales v WHERE v.idvideo = :idvideo")
    , @NamedQuery(name = "Videotutoriales.findByTitulo", query = "SELECT v FROM Videotutoriales v WHERE v.titulo = :titulo")
    , @NamedQuery(name = "Videotutoriales.findByUrl", query = "SELECT v FROM Videotutoriales v WHERE v.url = :url")
    , @NamedQuery(name = "Videotutoriales.findByEstado", query = "SELECT v FROM Videotutoriales v WHERE v.estado = :estado")})
public class Videotutoriales implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idvideo")
    private Integer idvideo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "titulo")
    private String titulo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "url")
    private String url;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @JoinColumn(name = "idusuarioFK", referencedColumnName = "idusuario")
    @ManyToOne(optional = false)
    private Usuarios idusuarioFK;

    public Videotutoriales() {
    }

    public Videotutoriales(Integer idvideo) {
        this.idvideo = idvideo;
    }

    public Videotutoriales(Integer idvideo, String titulo, String url, int estado) {
        this.idvideo = idvideo;
        this.titulo = titulo;
        this.url = url;
        this.estado = estado;
    }

    public Integer getIdvideo() {
        return idvideo;
    }

    public void setIdvideo(Integer idvideo) {
        this.idvideo = idvideo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idvideo != null ? idvideo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Videotutoriales)) {
            return false;
        }
        Videotutoriales other = (Videotutoriales) object;
        if ((this.idvideo == null && other.idvideo != null) || (this.idvideo != null && !this.idvideo.equals(other.idvideo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Videotutoriales[ idvideo=" + idvideo + " ]";
    }
    
}
