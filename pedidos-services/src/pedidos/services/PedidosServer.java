package pedidos.services;

//import java.text.ParseException;
//import java.text.SimpleDateFormat;
import java.util.ArrayList;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.List;

import pedidos.ejercicio.dao.PedidosDAO;
import pedidos.ejercicio.model.Categoria;
import pedidos.ejercicio.model.DetallePedido;
import pedidos.ejercicio.model.FormaPago;
import pedidos.ejercicio.model.Item;
import pedidos.ejercicio.model.PagoCheque;
import pedidos.ejercicio.model.Pedidos;
import pedidos.ejercicio.model.Cliente;
import pedidos.ejercicio.model.TarjetaCredito;


public class PedidosServer {
	
	private PedidosDAO dao;

	public PedidosServer() {
		// TODO Auto-generated constructor stub
		dao= new PedidosDAO();
	}
	
	public ArrayList<Pedidos> listarPedidos(){				
		return dao.listarPedidos();		
	}
	
	public ArrayList<Item> listarItemByCategoria(Integer idCategoria){
		System.out.println("Pedidos SERVER listarItemByCategoria ID=" + idCategoria);
		return dao.listarItemByCategoria(idCategoria);	
	}
	
	public ArrayList<Cliente> listarClientes(){		
		return dao.listarClientes();
	}
	
	public ArrayList<Categoria> listarCategorias(){		
		return dao.listarCategorias();
	}
	
	public ArrayList<Item> listarItems(){		
		return dao.listarItems();
	}

	public Categoria crearCategoria(Categoria ca) {
		// TODO Auto-generated method stub
		dao.save(ca);
		return ca;
	}
	
	public Categoria buscarCategoria(Integer idCat) {
		// TODO Auto-generated method stub
		return (Categoria)dao.getObject(idCat, Categoria.class);
	}

	public Item crearItem(Item it) {
		// TODO Auto-generated method stub
		dao.save(it);
		return it;
	}

	public Cliente crearCliente(Cliente cl) {
		// TODO Auto-generated method stub
		dao.save(cl);
		return cl;
	}

	public void deleteCategoria(Categoria ca) {
		// TODO Auto-generated method stub
		dao.delete(ca);
	}

	public Item buscarItem(Integer idItem) {
		// TODO Auto-generated method stub
		return (Item)dao.getObject(idItem, Item.class);
	}

	public void deleteItem(Item it) {
		// TODO Auto-generated method stub
		dao.delete(it);
	}

	public Cliente buscarCliente(Integer idCli) {
		// TODO Auto-generated method stub
		return (Cliente)dao.getObject(idCli, Cliente.class);
	}

	public void deleteCliente(Cliente cl) {
		// TODO Auto-generated method stub
		dao.delete(cl);
	}

	public Pedidos crearPedido(Pedidos ped) {
		// TODO Auto-generated method stub
		dao.save(ped);
		return ped;
	}

	public Pedidos buscarPedido(Integer idPedido) {
		// TODO Auto-generated method stub
		return (Pedidos)dao.getObject(idPedido, Pedidos.class);
	}

	public void deletePedido(Pedidos ped) {
		// TODO Auto-generated method stub
		dao.delete(ped);
	}

	public ArrayList<Cliente> listarClientesByCedula(String ced) {
		// TODO Auto-generated method stub
		return dao.listarClientesByCedula(ced);
	}

	public ArrayList<Cliente> listarClientesByCiudad(String ciu) {
		// TODO Auto-generated method stub
		return dao.listarClientesByCiudad(ciu);
	}

	public ArrayList<FormaPago> listarPagos() {
		// TODO Auto-generated method stub
		return dao.listarPagos();
	}

	public ArrayList<Pedidos> listarPedidosByCliente(Integer id) {
		// TODO Auto-generated method stub
		return dao.listarPedidosByCliente(id);
	}

	public ArrayList<Pedidos> listarPedidosByEstatus(String status) {
		// TODO Auto-generated method stub
		return dao.listarPedidosByEstatus(status);
	}

	public FormaPago crearPago(FormaPago pag) {
		// TODO Auto-generated method stub
		dao.save(pag);
		return pag;
	}

	public FormaPago crearPagoCheque(PagoCheque pc) {
		// TODO Auto-generated method stub
		dao.save(pc);
		return pc;
	}
	
	public FormaPago crearPagoTarjetaCredito(TarjetaCredito tc) {
		// TODO Auto-generated method stub
		dao.save(tc);
		return tc;
	}
	
	public FormaPago buscarPago(Integer idPago) {
		// TODO Auto-generated method stub
		return (FormaPago)dao.getObject(idPago, FormaPago.class);
	}

	public void deletePago(FormaPago pag) {
		// TODO Auto-generated method stub
		dao.delete(pag);
	}

	public DetallePedido crearDetallePedido(DetallePedido detPed) {
		// TODO Auto-generated method stub
		dao.save(detPed);
		return detPed;
	}

	public ArrayList<DetallePedido> buscarDetallePedido(int idPedido) {
		// TODO Auto-generated method stub
		return dao.listarDetallePedidosByIdPedido(idPedido);
	}

	public void deleteDetallePedido(DetallePedido detPed) {
		// TODO Auto-generated method stub
		dao.delete(detPed);
	}

	public ArrayList<DetallePedido> listarDetallePedidosByIdPedido(Integer idPedido) {
		// TODO Auto-generated method stub
		return dao.listarDetallePedidosByIdPedido(idPedido);
	}
	
	

}
