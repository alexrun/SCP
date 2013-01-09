package pedidos.ejercicio.model;



/**
 * TarjetaCredito entity. @author MyEclipse Persistence Tools
 */

public class TarjetaCredito extends FormaPago implements java.io.Serializable {


    // Fields    

     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idPagoTarjeta;
     private FormaPago formaPago;
     private Integer numeroTarjeta;
     private Integer mesVence;
     private Integer anyoVence;
     private String banco;


    // Constructors

    /** default constructor */
    public TarjetaCredito() {
    }

	/** minimal constructor */
    public TarjetaCredito(FormaPago formaPago, Integer numeroTarjeta, Integer mesVence, Integer anyoVence) {
        this.formaPago = formaPago;
        this.numeroTarjeta = numeroTarjeta;
        this.mesVence = mesVence;
        this.anyoVence = anyoVence;
    }
    
    /** full constructor */
    public TarjetaCredito(FormaPago formaPago, Integer numeroTarjeta, Integer mesVence, Integer anyoVence, String banco) {
        this.formaPago = formaPago;
        this.numeroTarjeta = numeroTarjeta;
        this.mesVence = mesVence;
        this.anyoVence = anyoVence;
        this.banco = banco;
    }

    public TarjetaCredito(Integer numeroTarjeta, Integer mesVence, Integer anyoVence, String banco) {
        this.numeroTarjeta = numeroTarjeta;
        this.mesVence = mesVence;
        this.anyoVence = anyoVence;
        this.banco = banco;
    }
   
    // Property accessors

    public Integer getIdPagoTarjeta() {
        return this.idPagoTarjeta;
    }
    
    public void setIdPagoTarjeta(Integer idPagoTarjeta) {
        this.idPagoTarjeta = idPagoTarjeta;
    }

    public FormaPago getFormaPago() {
        return this.formaPago;
    }
    
    public void setFormaPago(FormaPago formaPago) {
        this.formaPago = formaPago;
    }

    public Integer getNumeroTarjeta() {
        return this.numeroTarjeta;
    }
    
    public void setNumeroTarjeta(Integer numeroTarjeta) {
        this.numeroTarjeta = numeroTarjeta;
    }

    public Integer getMesVence() {
        return this.mesVence;
    }
    
    public void setMesVence(Integer mesVence) {
        this.mesVence = mesVence;
    }

    public Integer getAnyoVence() {
        return this.anyoVence;
    }
    
    public void setAnyoVence(Integer anyoVence) {
        this.anyoVence = anyoVence;
    }

    public String getBanco() {
        return this.banco;
    }
    
    public void setBanco(String banco) {
        this.banco = banco;
    }
   








}