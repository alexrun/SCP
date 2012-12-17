package pedidos.ejercicio.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pedidos.ejercicio.model.HibernateSessionFactory;

public abstract class BaseDAO {
	
	Session sess = null;
	Transaction tx = null;
	
	public BaseDAO() {
		// TODO Auto-generated constructor stub
		sess =HibernateSessionFactory.getSession(); 
	}
	
	public Serializable save(Object obj){
		return sess.save(obj);
	}
	
	public Object getObject(Serializable id, Class<?> clase){
		return sess.get(clase,id);
	}
	
	public void delete(Object obj){
		sess.delete(obj);
	}
		
	public void initTransaction(){
		tx = sess.beginTransaction();
	}
	
	public void commit(){
		if(tx!=null){
			tx.commit();			
		}
	}
	
	public void rollback(){
		if(tx!=null){
			tx.rollback();		
		}		
	}
	
	@SuppressWarnings("unchecked")
	public List<Object> executeNamedQuery(String queryName, HashMap<String, Object> params){
		List<Object> lista = new ArrayList<Object>();
		Query query = sess.getNamedQuery(queryName);
		if(params!=null){
			Set<String> keys = params.keySet();
			for(String key : keys){
				Object myParam = params.get(key);
				query.setParameter(key, myParam);
			}			
		}
		if(query!=null){
			lista = (List<Object>) query.list();			
		}
		return lista;
	}
	
	public void closeSession(){
		if (sess!=null){
			sess.close();
		}
	}
	

}
