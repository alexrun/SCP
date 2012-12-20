package pedidos.ejercicio.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Pedidos entity. @author MyEclipse Persistence Tools
 */

public class Pedidos  implements java.io.Serializable {


    // Fields    

     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
     private Cliente cliente;
     private Date fecha;
     private String estatus;
     @SuppressWarnings("unchecked")
	private Set formaPagos = new HashSet(0);
     @SuppressWarnings("unchecked")
	private Set detallePedidos = new HashSet(0);


    // Constructors

    /** default constructor 
     * @param string 
     * @param date 
     * @param integer */
    public Pedidos(Cliente cliente, Date fecha, String estatus) {
    	this.cliente = cliente;
        this.fecha = fecha;
        this.estatus = estatus;
    }

	public Pedidos() {
		super();
		// TODO Auto-generated constructor stub
	}

	/** minimal constructor */
    public Pedidos(Cliente cliente, Date fecha) {
        this.cliente = cliente;
        this.fecha = fecha;
    }
    
    /** full constructor */
    @SuppressWarnings("unchecked")
	public Pedidos(Cliente cliente, Date fecha, String estatus, Set formaPagos, Set detallePedidos) {
        this.cliente = cliente;
        this.fecha = fecha;
        this.estatus = estatus;
        this.formaPagos = formaPagos;
        this.detallePedidos = detallePedidos;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Cliente getCliente() {
        return this.cliente;
    }
    
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getEstatus() {
        return this.estatus;
    }
    
    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    @SuppressWarnings("unchecked")
	public Set getFormaPagos() {
        return this.formaPagos;
    }
    
    @SuppressWarnings("unchecked")
	public void setFormaPagos(Set formaPagos) {
        this.formaPagos = formaPagos;
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