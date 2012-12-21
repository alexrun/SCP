/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package pedidos.struts.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import pedidos.ejercicio.model.FormaPago;
import pedidos.ejercicio.model.Pedidos;
import pedidos.services.PedidosServer;
import pedidos.struts.form.PagoForm;

/** 
 * MyEclipse Struts
 * Creation date: 12-21-2012
 * 
 * XDoclet definition:
 * @struts.action parameter="showPago" validate="true"
 */
public class PagoAction extends MappingDispatchAction {
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
	public ActionForward newPago(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		
		String fwd = "goNew";
		PedidosServer pserver = new PedidosServer();
		request.setAttribute("pedidos", pserver.listarPedidos());
		System.out.println("newPago");
		return mapping.findForward(fwd);
	}
	
	public ActionForward showPago(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		//CategoriaForm newCategoriaForm = (CategoriaForm) form;// TODO Auto-generated method stub
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();		
		
		request.setAttribute("pagos", pserver.listarPagos());		
		
		System.out.println("showPago");
		return mapping.findForward(fwd);
	}
	
	public ActionForward guardarPago(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		PagoForm newPagoForm = (PagoForm) form;
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();	
		SimpleDateFormat formatoDelTexto = new SimpleDateFormat("dd/MM/yyyy");
		
		Date fecha = null;
		
		try {
			fecha = formatoDelTexto.parse(newPagoForm.getFechaPago());
			} catch (ParseException ex) {
			ex.printStackTrace();
			}
		
			Integer pedId = newPagoForm.getPedido();
			
		Pedidos ped = pserver.buscarPedido(pedId);
		
		System.out.println(ped);
		
		FormaPago pag = new FormaPago(ped,
									newPagoForm.getPropietario(),
									newPagoForm.getMonto(),
									fecha);

		pserver.crearPago(pag);	
		request.setAttribute("pago", pag);
		System.out.println("guardarPago Pedido ID: " + pedId );
		return mapping.findForward(fwd);
	}
	
	public ActionForward deletePago(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();
		FormaPago pag = pserver.buscarPago(new Integer(request.getParameter("id")));
		pserver.deletePago(pag);
		System.out.println("deletePago");
		return mapping.findForward(fwd);
	}
	
}