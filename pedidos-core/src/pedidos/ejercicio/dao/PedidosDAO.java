package pedidos.ejercicio.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import pedidos.ejercicio.model.Item;


public class PedidosDAO extends BaseDAO {

	public PedidosDAO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Item> listarVuelos(){		
		List<Object> lista =
			executeNamedQuery("listAllItems", null);
		return (ArrayList<Item>)((List<?>)lista);		
	}
	
	@SuppressWarnings("unchecked")
	public ArrayList<Item> listarVuelosByHora(String nombre){
		HashMap<String,Object> params = new HashMap<String,Object>();
		params.put("nombre", nombre);
		List<Object> lista =
			executeNamedQuery("listAllVuelosByNombre", params);
		return (ArrayList<Item>)((List<?>)lista);
	}
	
	

}
