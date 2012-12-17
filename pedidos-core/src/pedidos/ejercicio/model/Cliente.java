package pedidos.ejercicio.model;
// default package

import java.util.HashSet;
import java.util.Set;


/**
 * Cliente entity. @author MyEclipse Persistence Tools
 */

public class Cliente  implements java.io.Serializable {


    // Fields    

     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
     private String nombre;
     private String apellido;
     private String direccion;
     private String ciudad;
     private String telefonos;
     private String cedula;
     @SuppressWarnings("unchecked")
	private Set pedidoses = new HashSet(0);


    // Constructors

    /** default constructor */
    public Cliente() {
    }

	/** minimal constructor */
    public Cliente(String nombre, String apellido, String direccion, String cedula) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.direccion = direccion;
        this.cedula = cedula;
    }
    
    /** full constructor */
    @SuppressWarnings("unchecked")
	public Cliente(String nombre, String apellido, String direccion, String ciudad, String telefonos, String cedula, Set pedidoses) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.telefonos = telefonos;
        this.cedula = cedula;
        this.pedidoses = pedidoses;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return this.apellido;
    }
    
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDireccion() {
        return this.direccion;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCiudad() {
        return this.ciudad;
    }
    
    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getTelefonos() {
        return this.telefonos;
    }
    
    public void setTelefonos(String telefonos) {
        this.telefonos = telefonos;
    }

    public String getCedula() {
        return this.cedula;
    }
    
    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    @SuppressWarnings("unchecked")
	public Set getPedidoses() {
        return this.pedidoses;
    }
    
    @SuppressWarnings("unchecked")
	public void setPedidoses(Set pedidoses) {
        this.pedidoses = pedidoses;
    }
   








}