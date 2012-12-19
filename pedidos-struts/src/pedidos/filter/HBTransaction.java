package pedidos.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


import pedidos.ejercicio.dao.*;

public class HBTransaction implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		BaseDAO dao = null;
		dao = new PedidosDAO();
		
		
		try{
			dao.initTransaction();
			chain.doFilter(req,resp);
			dao.commit();
				
		}catch (Exception e){
			e.printStackTrace();
			dao.rollback();
		}finally{
			dao.closeSession();
		}
			
		

	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
