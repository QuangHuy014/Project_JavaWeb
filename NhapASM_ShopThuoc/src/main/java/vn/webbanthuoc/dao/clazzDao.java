package vn.webbanthuoc.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;


import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.util.JpaUtil;

public class clazzDao {

//	SELECT u FROM User u order by u.id
//	public List<User> findAll() {
//		EntityManager em = JpaUtils.getEntityManager();
//		TypedQuery<User> query = em.createNamedQuery("User.findAll", User.class);
//		return query.getResultList();
//	}
//	
	public List<Thuoc> findAll() {
	    EntityManager em = JpaUtil.getEntityManager();
	    String jpql = "SELECT s FROM Thuoc s order by s.idThuoc";
	    TypedQuery<Thuoc> query = em.createQuery(jpql, Thuoc.class);
	    return query.getResultList();
	}

	
	
	
	
	
}