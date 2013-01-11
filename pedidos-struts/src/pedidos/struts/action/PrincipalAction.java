/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package pedidos.struts.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.MappingDispatchAction;

import pedidos.services.PedidosServer;

/** 
 * MyEclipse Struts
 * Creation date: 12-19-2012
 * 
 * XDoclet definition:
 * @struts.action validate="true"
 * @struts.action-forward name="goMenu" path="/index.jsp"
 */
public class PrincipalAction extends MappingDispatchAction {
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
	public ActionForward goMenu(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String fwd = "goMenu";		
		PedidosServer pserver = new PedidosServer();
		request.setAttribute("categorias", pserver.listarCategorias());
		request.setAttribute("clientes", pserver.listarClientes());
		request.setAttribute("pedidos", pserver.listarPedidos());
		request.setAttribute("pedidosActivos", pserver.listarPedidosByEstatus("Activo"));
		request.setAttribute("ciudades", pserver.listarCiudades());
		request.setAttribute("estatus", pserver.listarEstatus());
		return mapping.findForward(fwd);
	}
	
		
	
}