package pedidos.ejercicio.model;

import java.util.HashSet;
import java.util.Set;


/**
 * Item entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class Item  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Categoria categoria;
     private String nombre;
     private String descripcion;
     private Double precioCompra;
     private Double precioVenta;
     private String imagenUrl;
     @SuppressWarnings("unchecked")
	private Set detallePedidos = new HashSet(0);


    // Constructors

    /** default constructor */
    public Item() {
    }

	/** minimal constructor */
    public Item(Categoria categoria, String nombre) {
        this.categoria = categoria;
        this.nombre = nombre;
    }
    
    /** full constructor */
    @SuppressWarnings("unchecked")
	public Item(Categoria categoria, String nombre, String descripcion, Double precioCompra, Double precioVenta, String imagenUrl, Set detallePedidos) {
        this.categoria = categoria;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precioCompra = precioCompra;
        this.precioVenta = precioVenta;
        this.imagenUrl = imagenUrl;
        this.detallePedidos = detallePedidos;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Categoria getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
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

    public Double getPrecioCompra() {
        return this.precioCompra;
    }
    
    public void setPrecioCompra(Double precioCompra) {
        this.precioCompra = precioCompra;
    }

    public Double getPrecioVenta() {
        return this.precioVenta;
    }
    
    public void setPrecioVenta(Double precioVenta) {
        this.precioVenta = precioVenta;
    }

    public String getImagenUrl() {
        return this.imagenUrl;
    }
    
    public void setImagenUrl(String imagenUrl) {
        this.imagenUrl = imagenUrl;
    }

    @SuppressWarnings("unchecked")
	public Set getDetallePedidos() {
        return this.detallePedidos;
    }
    
    @SuppressWarnings("unchecked")
	public void setDetallePedidos(Set detallePedidos) {
        this.detallePedidos = detallePedidos;
    }
   








}