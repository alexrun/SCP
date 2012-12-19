package pedidos.ejercicio.model;

import java.util.HashSet;
import java.util.Set;


/**
 * Categoria entity. @author MyEclipse Persistence Tools
 */

public class Categoria  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String nombre;
     private String descripcion;
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
    public Categoria(String nombre, String descripcion, Set items) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.items = items;
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

    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Set getItems() {
        return this.items;
    }
    
    public void setItems(Set items) {
        this.items = items;
    }
   








}