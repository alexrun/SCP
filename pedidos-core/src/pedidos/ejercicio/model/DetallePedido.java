package pedidos.ejercicio.model;



/**
 * DetallePedido entity. @author MyEclipse Persistence Tools
 */

public class DetallePedido  implements java.io.Serializable {


    // Fields    

     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
     private Item item;
     private Pedidos pedidos;
     private Integer cantidad;
     private Double precio;


    // Constructors

    /** default constructor */
    public DetallePedido() {
    }

    
    /** full constructor */
    public DetallePedido(Item item, Pedidos pedidos, Integer cantidad, Double precio) {
        this.item = item;
        this.pedidos = pedidos;
        this.cantidad = cantidad;
        this.precio = precio;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Item getItem() {
        return this.item;
    }
    
    public void setItem(Item item) {
        this.item = item;
    }

    public Pedidos getPedidos() {
        return this.pedidos;
    }
    
    public void setPedidos(Pedidos pedidos) {
        this.pedidos = pedidos;
    }

    public Integer getCantidad() {
        return this.cantidad;
    }
    
    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public Double getPrecio() {
        return this.precio;
    }
    
    public void setPrecio(Double precio) {
        this.precio = precio;
    }
   








}