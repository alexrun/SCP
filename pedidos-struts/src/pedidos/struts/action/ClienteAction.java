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

import pedidos.ejercicio.model.Cliente;
import pedidos.services.PedidosServer;
import pedidos.struts.form.ClienteForm;

/** 
 * MyEclipse Struts
 * Creation date: 12-19-2012
 * 
 * XDoclet definition:
 * @struts.action path="/guardarCliente" name="guardarClienteForm" input="/form/newCliente.jsp" scope="request" validate="true"
 */
public class ClienteAction extends MappingDispatchAction {
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
		
	public ActionForward newCliente(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String fwd = "goNew";
		System.out.println("newCliente");
		return mapping.findForward(fwd);
	}
	
	public ActionForward showCliente(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		//CategoriaForm newCategoriaForm = (CategoriaForm) form;// TODO Auto-generated method stub
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();
		
		
		if (request.getParameter("cbCedula")!=null){
			String ced = request.getParameter("cbCedula");			
			request.setAttribute("clientes", pserver.listarClientesByCedula(ced));	
			System.out.println("ID CEDULA showCliente : " + ced);
		}else if (request.getParameter("cbCiudad")!=null){
			String ciu = request.getParameter("cbCiudad");			
			request.setAttribute("clientes", pserver.listarClientesByCiudad(ciu));	
			System.out.println("ID CIUDAD showCliente : " + ciu);
		}else{
			request.setAttribute("clientes", pserver.listarClientes());
		}
		
		
		System.out.println("showCliente");
		return mapping.findForward(fwd);
	}
	
	
	public ActionForward guardarCliente(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ClienteForm newClienteForm = (ClienteForm) form;// TODO Auto-generated method stub
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();	
		Cliente cl = new Cliente(newClienteForm.getNombre(),
									newClienteForm.getApellido(),
									newClienteForm.getDireccion(),
									newClienteForm.getCedula());
		
		cl.setTelefonos(newClienteForm.getTelefono());
		cl.setCiudad(newClienteForm.getCiudad());
		
		pserver.crearCliente(cl);	
		request.setAttribute("cliente", cl);
		System.out.println("guardarCliente");
		return mapping.findForward(fwd);
	}
	
	public ActionForward deleteCliente(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();
		Cliente cl = pserver.buscarCliente(new Integer(request.getParameter("id")));
		pserver.deleteCliente(cl);
		System.out.println("deleteCliente");
		return mapping.findForward(fwd);
	}
}