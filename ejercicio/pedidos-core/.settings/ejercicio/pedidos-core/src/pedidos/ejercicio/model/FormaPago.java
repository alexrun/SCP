package pedidos.ejercicio.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * FormaPago entity. @author MyEclipse Persistence Tools
 */

public class FormaPago  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Pedidos pedidos;
     private String propietario;
     private Date fechaPago;
     private Double monto;
     private Set pagoCheques = new HashSet(0);
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
    public FormaPago(Pedidos pedidos, String propietario, Date fechaPago, Double monto, Set pagoCheques, Set tarjetaCreditos) {
        this.pedidos = pedidos;
        this.propietario = propietario;
        this.fechaPago = fechaPago;
        this.monto = monto;
        this.pagoCheques = pagoCheques;
        this.tarjetaCreditos = tarjetaCreditos;
    }

   
    // Property accessors

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

    public Set getPagoCheques() {
        return this.pagoCheques;
    }
    
    public void setPagoCheques(Set pagoCheques) {
        this.pagoCheques = pagoCheques;
    }

    public Set getTarjetaCreditos() {
        return this.tarjetaCreditos;
    }
    
    public void setTarjetaCreditos(Set tarjetaCreditos) {
        this.tarjetaCreditos = tarjetaCreditos;
    }
   








}