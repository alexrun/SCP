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
import pedidos.ejercicio.model.Categoria;
import pedidos.services.PedidosServer;
import pedidos.struts.form.CategoriaForm;

/** 
 * MyEclipse Struts
 * Creation date: 12-19-2012
 * 
 * XDoclet definition:
 * @struts.action path="/Categoria" name="CategoriaForm" input="/form/newCategoria.jsp" parameter="goNew" scope="request" validate="true"
 */
public class CategoriaAction extends MappingDispatchAction {
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
	public ActionForward newCategoria(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		String fwd = "goNew";
		System.out.println("newCategoria");
		return mapping.findForward(fwd);
	}
	
	public ActionForward showCategoria(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		//CategoriaForm newCategoriaForm = (CategoriaForm) form;// TODO Auto-generated method stub
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();
		request.setAttribute("categorias", pserver.listarCategorias());
		System.out.println("showCategoria");
		return mapping.findForward(fwd);
	}
	
	
	public ActionForward guardarCategoria(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		CategoriaForm newCategoriaForm = (CategoriaForm) form;// TODO Auto-generated method stub
		String fwd = "goShow";
		PedidosServer pserver = new PedidosServer();	
		Categoria ca = new Categoria(newCategoriaForm.getNombre(),
									newCategoriaForm.getDescripcion());
		pserver.crearCategoria(ca);	
		request.setAttribute("categoria", ca);
		System.out.println("guardarCategoria");
		return mapping.findForward(fwd);
	}
	
	
}