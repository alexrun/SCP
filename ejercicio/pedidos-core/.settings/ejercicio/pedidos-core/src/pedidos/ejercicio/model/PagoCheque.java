package pedidos.ejercicio.model;

import java.util.Date;


/**
 * PagoCheque entity. @author MyEclipse Persistence Tools
 */

public class PagoCheque  implements java.io.Serializable {


    // Fields    

     private Integer idPagoCheque;
     private FormaPago formaPago;
     private Integer numeroCheque;
     private String banco;
     private String numeroCuenta;
     private Date fechaCheque;


    // Constructors

    /** default constructor */
    public PagoCheque() {
    }

	/** minimal constructor */
    public PagoCheque(FormaPago formaPago, Integer numeroCheque, String banco, String numeroCuenta) {
        this.formaPago = formaPago;
        this.numeroCheque = numeroCheque;
        this.banco = banco;
        this.numeroCuenta = numeroCuenta;
    }
    
    /** full constructor */
    public PagoCheque(FormaPago formaPago, Integer numeroCheque, String banco, String numeroCuenta, Date fechaCheque) {
        this.formaPago = formaPago;
        this.numeroCheque = numeroCheque;
        this.banco = banco;
        this.numeroCuenta = numeroCuenta;
        this.fechaCheque = fechaCheque;
    }

   
    // Property accessors

    public Integer getIdPagoCheque() {
        return this.idPagoCheque;
    }
    
    public void setIdPagoCheque(Integer idPagoCheque) {
        this.idPagoCheque = idPagoCheque;
    }

    public FormaPago getFormaPago() {
        return this.formaPago;
    }
    
    public void setFormaPago(FormaPago formaPago) {
        this.formaPago = formaPago;
    }

    public Integer getNumeroCheque() {
        return this.numeroCheque;
    }
    
    public void setNumeroCheque(Integer numeroCheque) {
        this.numeroCheque = numeroCheque;
    }

    public String getBanco() {
        return this.banco;
    }
    
    public void setBanco(String banco) {
        this.banco = banco;
    }

    public String getNumeroCuenta() {
        return this.numeroCuenta;
    }
    
    public void setNumeroCuenta(String numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public Date getFechaCheque() {
        return this.fechaCheque;
    }
    
    public void setFechaCheque(Date fechaCheque) {
        this.fechaCheque = fechaCheque;
    }
   








}