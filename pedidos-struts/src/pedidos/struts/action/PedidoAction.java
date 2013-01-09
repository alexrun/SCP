/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package pedidos.struts.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import pedidos.ejercicio.model.Cliente;
import pedidos.ejercicio.model.DetallePedido;
import pedidos.ejercicio.model.Item;
import pedidos.ejercicio.model.Pedidos;
import pedidos.services.PedidosServer;
import pedidos.struts.form.PedidoForm;

/** 
 * MyEclipse Struts
 * Creation date: 12-19-2012
 * 
 * XDoclet definition:
 * @struts.action parameter="newPedido" validate="true"
 */
public class PedidoAction extends MappingDispatchAction {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward newPedido(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		String fwd = "goNew";
		PedidosServer pserver = new PedidosServer();
		request.setAttribute("clientes", pserver.listarClientes());
		request.setAttribute("items", pserver.listarItems());
		System.out.println("newPedido");	
		return mapping.findForward(fwd);
	}
	
	public ActionForward showPedido(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();
		request.setAttribute("pedidos", pserver.listarPedidos());
		
		
		if (request.getParameter("cbCliente")!=null){
			Integer id = new Integer(request.getParameter("cbCliente"));			
			request.setAttribute("pedidos", pserver.listarPedidosByCliente(id));	
			System.out.println("ID CLIENTE showPedido : " + id);
		}else if (request.getParameter("cbEstatus")!=null){
			String status = request.getParameter("cbEstatus");			
			request.setAttribute("pedidos", pserver.listarPedidosByEstatus(status));	
			System.out.println("ID ESTATUS showPedido : " + status);
		}else{
			request.setAttribute("pedidos", pserver.listarPedidos());
		}
		
		System.out.println("showPedido");
		return mapping.findForward(fwd);
	}
	
	public ActionForward guardarPedido(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		PedidoForm newPedidoForm = (PedidoForm) form;
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();	
		
		
		
		SimpleDateFormat formatoDelTexto = new SimpleDateFormat("MM/dd/yyyy");
		
		Date fecha = null;
		
		try {
			fecha = formatoDelTexto.parse(newPedidoForm.getFecha());
			
			} catch (ParseException ex) {
			ex.printStackTrace();
			}
		
		Cliente cli = pserver.buscarCliente(newPedidoForm.getCliente());
						
		Pedidos ped = new Pedidos(cli,fecha,newPedidoForm.getEstatus());

		pserver.crearPedido(ped);	
		
		
		request.setAttribute("pedido", ped);
		
		
			

		
		String articuloId =newPedidoForm.getListaItems();
		
		String cantidad = request.getParameter("tbCantidad");
		
	
		
		/*
		List<String> listSe  =(List<String>) request.getAttribute("listSe");
		if(listSe!=null){
		for(int i=0;i<listSe.size()-1;i++){
			System.out.println(listSe.get(i));
		}
		}
		*/
		
		//Guardar los detalles del pedido
		//Cliente, Fecha, Items y Cantidad
				
		//Cual es la lista de items?
		
		//inicio Cliclo FALTA -----------------------------------------------
				
		int cant = new Integer(cantidad);	
		int idItem = new Integer(articuloId); 		
		
		Item it = pserver.buscarItem(idItem);
		double precio = cant*it.getPrecioVenta();		
		DetallePedido detPed = new DetallePedido(it, ped, cant, precio);
		
		pserver.crearDetallePedido(detPed);
				
		//fin Ciclo FALTA ---------------------------------------------------
						
		
		System.out.println("guardarPedido");
		return mapping.findForward(fwd);
	}
	
	public ActionForward deletePedido(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();
		
		int idPedido = new Integer(request.getParameter("id"));
		
		ArrayList<DetallePedido> detPed = pserver.buscarDetallePedido(idPedido);
		
		for(int i=0;i<detPed.size()-1;i++){
			pserver.deleteDetallePedido(detPed.get(i));
		}
		
		
		
		Pedidos ped = pserver.buscarPedido(idPedido);
		pserver.deletePedido(ped);
		System.out.println("deletePedido");
		return mapping.findForward(fwd);
	}
	
	public ActionForward showDetalle(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();
		int idPedido = new Integer(request.getParameter("id"));
		request.setAttribute("detalles", pserver.listarDetallePedidosByIdPedido(idPedido));
		System.out.println("showDetalle");	
		return mapping.findForward(fwd);
	}
	
}