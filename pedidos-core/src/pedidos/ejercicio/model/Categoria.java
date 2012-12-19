package pedidos.ejercicio.model;

import java.util.HashSet;
import java.util.Set;


/**
 * Categoria entity. @author MyEclipse Persistence Tools
 */

public class Categoria  implements java.io.Serializable {


    // Fields    

     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
    private String nombre;
    private String descripcion;
    @SuppressWarnings("unchecked")
	private Set items = new HashSet(0);


    // Constructors

    /** default constructor */
    public Categoria() {
    }

	/** minimal constructor */
    public Categoria(String nombre) {
        this.nombre = nombre;
    }
    
    /** full constructor */
    @SuppressWarnings("unchecked")
	public Categoria(String nombre, String descripcion, Set items) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.items = items;
    }

   
    // Property accessors

    public Categoria(String nombre, String descripcion) {
		// TODO Auto-generated constructor stub
    	  this.nombre = nombre;
          this.descripcion = descripcion;
	}

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

    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @SuppressWarnings("unchecked")
	public Set getItems() {
        return this.items;
    }
    
    @SuppressWarnings("unchecked")
	public void setItems(Set items) {
        this.items = items;
    }
   








}