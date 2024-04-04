package vn.webbanthuoc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.util.JpaUtil;

public class ThuocDao  implements IDao<Thuoc>{

	@Override
	public void create(Thuoc entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Thuoc entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Thuoc delete(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Thuoc findById(String id) {
		 EntityManager em = JpaUtil.getEntityManager();
		    String jpql = "SELECT s FROM Thuoc s WHERE s.idThuoc = :id";
		    TypedQuery<Thuoc> query = em.createQuery(jpql, Thuoc.class);
		    query.setParameter("id", id);
		    return (Thuoc) query.getResultList();
	
	}

	@Override
	public List<Thuoc> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
