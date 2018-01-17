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
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author SEBASTIAN
 */
@Entity
@Table(name = "usuarios")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuarios.findAll", query = "SELECT u FROM Usuarios u")
    , @NamedQuery(name = "Usuarios.findByIdusuario", query = "SELECT u FROM Usuarios u WHERE u.idusuario = :idusuario")
    , @NamedQuery(name = "Usuarios.findByEmail", query = "SELECT u FROM Usuarios u WHERE u.email = :email")
    , @NamedQuery(name = "Usuarios.findByNombres", query = "SELECT u FROM Usuarios u WHERE u.nombres = :nombres")
    , @NamedQuery(name = "Usuarios.findByApellidos", query = "SELECT u FROM Usuarios u WHERE u.apellidos = :apellidos")
    , @NamedQuery(name = "Usuarios.findByPassword", query = "SELECT u FROM Usuarios u WHERE u.password = :password")
    , @NamedQuery(name = "Usuarios.findByTipo", query = "SELECT u FROM Usuarios u WHERE u.tipo = :tipo")
    , @NamedQuery(name = "Usuarios.findByUltimologin", query = "SELECT u FROM Usuarios u WHERE u.ultimologin = :ultimologin")
    , @NamedQuery(name = "Usuarios.findByResena", query = "SELECT u FROM Usuarios u WHERE u.resena = :resena")
    , @NamedQuery(name = "Usuarios.findByFinplan", query = "SELECT u FROM Usuarios u WHERE u.finplan = :finplan")
    , @NamedQuery(name = "Usuarios.findByLimiteregistro", query = "SELECT u FROM Usuarios u WHERE u.limiteregistro = :limiteregistro")
    , @NamedQuery(name = "Usuarios.findByTokenregistro", query = "SELECT u FROM Usuarios u WHERE u.tokenregistro = :tokenregistro")
    , @NamedQuery(name = "Usuarios.findByEstado", query = "SELECT u FROM Usuarios u WHERE u.estado = :estado")})
public class Usuarios implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idusuario")
    private Integer idusuario;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 35)
    @Column(name = "nombres")
    private String nombres;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 35)
    @Column(name = "apellidos")
    private String apellidos;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 25)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @NotNull
    @Column(name = "tipo")
    private int tipo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ultimologin")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ultimologin;
    @Size(max = 450)
    @Column(name = "resena")
    private String resena;
    @Column(name = "finplan")
    @Temporal(TemporalType.TIMESTAMP)
    private Date finplan;
    @Lob
    @Column(name = "foto")
    private byte[] foto;
    @Basic(optional = false)
    @NotNull
    @Column(name = "limiteregistro")
    @Temporal(TemporalType.TIMESTAMP)
    private Date limiteregistro;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "tokenregistro")
    private String tokenregistro;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado")
    private int estado;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idusuarioFK")
    private Collection<Usuariosespecialidades> usuariosespecialidadesCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "ownerFK")
    private Collection<Usuariosinteracciones> usuariosinteraccionesCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "targetFK")
    private Collection<Usuariosinteracciones> usuariosinteraccionesCollection1;
    @JoinColumn(name = "idcomunaFK", referencedColumnName = "idcomuna")
    @ManyToOne(optional = false)
    private Comunas idcomunaFK;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idusuarioFK")
    private Collection<Causassuscripciones> causassuscripcionesCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idusuarioFK")
    private Collection<Compras> comprasCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idusuarioFK")
    private Collection<Videotutoriales> videotutorialesCollection;

    public Usuarios() {
    }

    public Usuarios(Integer idusuario) {
        this.idusuario = idusuario;
    }

    public Usuarios(Integer idusuario, String email, String nombres, String apellidos, String password, int tipo, Date ultimologin, Date limiteregistro, String tokenregistro, int estado) {
        this.idusuario = idusuario;
        this.email = email;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.password = password;
        this.tipo = tipo;
        this.ultimologin = ultimologin;
        this.limiteregistro = limiteregistro;
        this.tokenregistro = tokenregistro;
        this.estado = estado;
    }

    public Integer getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(Integer idusuario) {
        this.idusuario = idusuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public Date getUltimologin() {
        return ultimologin;
    }

    public void setUltimologin(Date ultimologin) {
        this.ultimologin = ultimologin;
    }

    public String getResena() {
        return resena;
    }

    public void setResena(String resena) {
        this.resena = resena;
    }

    public Date getFinplan() {
        return finplan;
    }

    public void setFinplan(Date finplan) {
        this.finplan = finplan;
    }

    public byte[] getFoto() {
        return foto;
    }

    public void setFoto(byte[] foto) {
        this.foto = foto;
    }

    public Date getLimiteregistro() {
        return limiteregistro;
    }

    public void setLimiteregistro(Date limiteregistro) {
        this.limiteregistro = limiteregistro;
    }

    public String getTokenregistro() {
        return tokenregistro;
    }

    public void setTokenregistro(String tokenregistro) {
        this.tokenregistro = tokenregistro;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    @XmlTransient
    public Collection<Usuariosespecialidades> getUsuariosespecialidadesCollection() {
        return usuariosespecialidadesCollection;
    }

    public void setUsuariosespecialidadesCollection(Collection<Usuariosespecialidades> usuariosespecialidadesCollection) {
        this.usuariosespecialidadesCollection = usuariosespecialidadesCollection;
    }

    @XmlTransient
    public Collection<Usuariosinteracciones> getUsuariosinteraccionesCollection() {
        return usuariosinteraccionesCollection;
    }

    public void setUsuariosinteraccionesCollection(Collection<Usuariosinteracciones> usuariosinteraccionesCollection) {
        this.usuariosinteraccionesCollection = usuariosinteraccionesCollection;
    }

    @XmlTransient
    public Collection<Usuariosinteracciones> getUsuariosinteraccionesCollection1() {
        return usuariosinteraccionesCollection1;
    }

    public void setUsuariosinteraccionesCollection1(Collection<Usuariosinteracciones> usuariosinteraccionesCollection1) {
        this.usuariosinteraccionesCollection1 = usuariosinteraccionesCollection1;
    }

    public Comunas getIdcomunaFK() {
        return idcomunaFK;
    }

    public void setIdcomunaFK(Comunas idcomunaFK) {
        this.idcomunaFK = idcomunaFK;
    }

    @XmlTransient
    public Collection<Causassuscripciones> getCausassuscripcionesCollection() {
        return causassuscripcionesCollection;
    }

    public void setCausassuscripcionesCollection(Collection<Causassuscripciones> causassuscripcionesCollection) {
        this.causassuscripcionesCollection = causassuscripcionesCollection;
    }

    @XmlTransient
    public Collection<Compras> getComprasCollection() {
        return comprasCollection;
    }

    public void setComprasCollection(Collection<Compras> comprasCollection) {
        this.comprasCollection = comprasCollection;
    }

    @XmlTransient
    public Collection<Videotutoriales> getVideotutorialesCollection() {
        return videotutorialesCollection;
    }

    public void setVideotutorialesCollection(Collection<Videotutoriales> videotutorialesCollection) {
        this.videotutorialesCollection = videotutorialesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idusuario != null ? idusuario.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuarios)) {
            return false;
        }
        Usuarios other = (Usuarios) object;
        if ((this.idusuario == null && other.idusuario != null) || (this.idusuario != null && !this.idusuario.equals(other.idusuario))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entidades.Usuarios[ idusuario=" + idusuario + " ]";
    }
    
}
