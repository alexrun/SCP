package pedidos.ejercicio.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import pedidos.ejercicio.model.Categoria;
import pedidos.ejercicio.model.Cliente;
import pedidos.ejercicio.model.DetallePedido;
import pedidos.ejercicio.model.FormaPago;
import pedidos.ejercicio.model.Item;
import pedidos.ejercicio.model.Pedidos;


public class PedidosDAO extends BaseDAO {

	public PedidosDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Item> listarItems(){		
		List<Object> lista =
			executeNamedQuery("listAllItems", null);
		return (ArrayList<Item>)((List<?>)lista);		
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Pedidos> listarPedidos(){		
		List<Object> lista =
			executeNamedQuery("listAllPedidos", null);
		return (ArrayList<Pedidos>)((List<?>)lista);		
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Cliente> listarClientes(){		
		List<Object> lista =
			executeNamedQuery("listAllClientes", null);
		return (ArrayList<Cliente>)((List<?>)lista);		
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Categoria> listarCategorias(){		
		List<Object> lista =
			executeNamedQuery("listAllCategorias", null);
		return (ArrayList<Categoria>)((List<?>)lista);		
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Item> listarItemByCategoria(Integer idCategoria){
		HashMap<String,Object> params = new HashMap<String,Object>();
		params.put("idCategoria", idCategoria);
		List<Object> lista =
			executeNamedQuery("listAllItemsByCategoria", params);
		return (ArrayList<Item>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<Cliente> listarClientesByCedula(String ced) {
		// TODO Auto-generated method stub
		HashMap<String,Object> params = new HashMap<String,Object>();
		params.put("cedula", ced);
		List<Object> lista =
			executeNamedQuery("listAllClientesByCedula", params);
		return (ArrayList<Cliente>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<Cliente> listarClientesByCiudad(String ciu) {
		// TODO Auto-generated method stub
		HashMap<String,Object> params = new HashMap<String,Object>();
		params.put("ciudad", ciu);
		List<Object> lista =
			executeNamedQuery("listAllClientesByCiudad", params);
		return (ArrayList<Cliente>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<FormaPago> listarPagos() {
		// TODO Auto-generated method stub
		List<Object> lista =
			executeNamedQuery("listAllFormaPago", null);
		return (ArrayList<FormaPago>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<Pedidos> listarPedidosByCliente(Integer id) {
		// TODO Auto-generated method stub
		HashMap<String,Object> params = new HashMap<String,Object>();
		params.put("cliente", id);
		List<Object> lista =
			executeNamedQuery("listAllPedidosByCliente", params);
		return (ArrayList<Pedidos>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<Pedidos> listarPedidosByEstatus(String status) {
		// TODO Auto-generated method stub
		HashMap<String,Object> params = new HashMap<String,Object>();
		params.put("estatus", status);
		List<Object> lista =
			executeNamedQuery("listAllPedidosByEstatus", params);
		return (ArrayList<Pedidos>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<DetallePedido> listarDetallePedidosByIdPedido(int idPedido) {
		// TODO Auto-generated method stub
		HashMap<String,Object> params = new HashMap<String,Object>();
		params.put("idPedido", idPedido);
		List<Object> lista =
			executeNamedQuery("listAllDetallePedidosByIdPedido", params);
		return (ArrayList<DetallePedido>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<Pedidos> listarPedidosByRangoFechasAndCiudad(
			String ciudad, Date fechaIni, Date fechaFin) {
		// TODO Auto-generated method stub
		HashMap<String,Object> params = new HashMap<String,Object>();
		params.put("ciudad", ciudad);
		params.put("fechaIni", fechaIni);
		params.put("fechaFin", fechaFin);
		List<Object> lista =
			executeNamedQuery("listAllPedidosByRangoFechasAndCiudad", params);
		return (ArrayList<Pedidos>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<Pedidos> listarPedidosByTarjeta() {
		List<Object> lista =
			executeNamedQuery("listarPedidosByTarjeta", null);
		return (ArrayList<Pedidos>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<Pedidos> listarPedidosByCheque() {
		List<Object> lista =
			executeNamedQuery("listarPedidosByCheque", null);
		return (ArrayList<Pedidos>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<String> listarCiudades() {
		List<Object> lista =
			executeNamedQuery("listAllCiudades", null);
		return (ArrayList<String>)((List<?>)lista);
	}

	@SuppressWarnings("unchecked")
	public ArrayList<String> listarEstatus() {
		List<Object> lista =
			executeNamedQuery("listAllEstatus", null);
		return (ArrayList<String>)((List<?>)lista);
	}


}
