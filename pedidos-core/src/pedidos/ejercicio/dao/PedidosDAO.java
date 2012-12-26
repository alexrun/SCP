package pedidos.ejercicio.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import pedidos.ejercicio.model.Categoria;
import pedidos.ejercicio.model.Cliente;
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
	
	

}
