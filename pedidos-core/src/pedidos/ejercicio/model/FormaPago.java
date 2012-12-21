package pedidos.ejercicio.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * FormaPago entity. @author MyEclipse Persistence Tools
 */

public class FormaPago  implements java.io.Serializable {


    // Fields    

     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
    private Pedidos pedidos;
    private String propietario;
    private Date fechaPago;
    private Double monto;
     @SuppressWarnings("unchecked")
	private Set pagoCheques = new HashSet(0);
     @SuppressWarnings("unchecked")
	private Set tarjetaCreditos = new HashSet(0);


    // Constructors

    /** default constructor */
    public FormaPago() {
    }

	/** minimal constructor */
    public FormaPago(Pedidos pedidos, String propietario, Double monto) {
        this.pedidos = pedidos;
        this.propietario = propietario;
        this.monto = monto;
    }
    
    /** full constructor */
    @SuppressWarnings("unchecked")
	public FormaPago(Pedidos pedidos, String propietario, Date fechaPago, Double monto, Set pagoCheques, Set tarjetaCreditos) {
        this.pedidos = pedidos;
        this.propietario = propietario;
        this.fechaPago = fechaPago;
        this.monto = monto;
        this.pagoCheques = pagoCheques;
        this.tarjetaCreditos = tarjetaCreditos;
    }

   
    // Property accessors

    public FormaPago(Pedidos pedidos, String propietario, Double monto, Date fechaPago) {
    	 this.pedidos = pedidos;
         this.propietario = propietario;
         this.fechaPago = fechaPago;
         this.monto = monto;
	}

	public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Pedidos getPedidos() {
        return this.pedidos;
    }
    
    public void setPedidos(Pedidos pedidos) {
        this.pedidos = pedidos;
    }

    public String getPropietario() {
        return this.propietario;
    }
    
    public void setPropietario(String propietario) {
        this.propietario = propietario;
    }

    public Date getFechaPago() {
        return this.fechaPago;
    }
    
    public void setFechaPago(Date fechaPago) {
        this.fechaPago = fechaPago;
    }

    public Double getMonto() {
        return this.monto;
    }
    
    public void setMonto(Double monto) {
        this.monto = monto;
    }

    @SuppressWarnings("unchecked")
	public Set getPagoCheques() {
        return this.pagoCheques;
    }
    
    @SuppressWarnings("unchecked")
	public void setPagoCheques(Set pagoCheques) {
        this.pagoCheques = pagoCheques;
    }

    @SuppressWarnings("unchecked")
	public Set getTarjetaCreditos() {
        return this.tarjetaCreditos;
    }
    
    @SuppressWarnings("unchecked")
	public void setTarjetaCreditos(Set tarjetaCreditos) {
        this.tarjetaCreditos = tarjetaCreditos;
    }
   








}