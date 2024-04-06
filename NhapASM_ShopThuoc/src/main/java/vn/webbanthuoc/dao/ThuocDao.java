package vn.webbanthuoc.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;


import javax.persistence.TypedQuery;

import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.util.JpaUtil;


public class ThuocDao {

	public List<Thuoc> findByFullname(String fullname) {
		EntityManager em = JpaUtil.getEntityManager();
		String jpaQuery = "SELECT u FROM Thuoc u WHERE u.ten LIKE :ten";
		TypedQuery<Thuoc> query = em.createQuery(jpaQuery, Thuoc.class);
		query.setParameter("ten", "%" + fullname + "%");
		return query.getResultList();
	}

	public List<Thuoc> findAll() {
		EntityManager em = JpaUtil.getEntityManager();
		String jpql = "SELECT s FROM Thuoc s order by s.idThuoc";
		TypedQuery<Thuoc> query = em.createQuery(jpql, Thuoc.class);
		return query.getResultList();
	}

	public List<Thuoc> findAll(int page, int pageSize) {
		EntityManager em = JpaUtil.getEntityManager();
		String jpaQuery = "SELECT s FROM Thuoc s order by s.idThuoc";
		TypedQuery<Thuoc> query = em.createQuery(jpaQuery, Thuoc.class);
		query.setFirstResult(page * pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}

	public List<Thuoc> findThuocNew() {
		EntityManager em = JpaUtil.getEntityManager();
		// Sử dụng SimpleDateFormat để chuyển đổi chuỗi thành đối tượng Date
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date ngaySanXuat = null;
		try {
			ngaySanXuat = dateFormat.parse("2024-04-03");
		} catch (ParseException e) {
			// Xử lý ngoại lệ nếu có lỗi xảy ra trong quá trình chuyển đổi
			e.printStackTrace();
		}

		String jpql = "SELECT s FROM Thuoc s WHERE s.ngaySanXuat >= :ngay";
		TypedQuery<Thuoc> query = em.createQuery(jpql, Thuoc.class);
		query.setParameter("ngay", ngaySanXuat);

		return query.getResultList();
	}

	public List<Thuoc> findPriceHigh() {
	    EntityManager em = JpaUtil.getEntityManager();
	    String jpql = "SELECT s FROM Thuoc s ORDER BY s.gia DESC";
	    TypedQuery<Thuoc> query = em.createQuery(jpql, Thuoc.class);
	    return query.getResultList();
	}

	public long countAll() {
		EntityManager em = JpaUtil.getEntityManager();
		TypedQuery<Long> query = em.createQuery("SELECT COUNT(u) FROM Thuoc u", Long.class);
		return query.getSingleResult();
	}

	public Thuoc findById(String id) {
		EntityManager em = JpaUtil.getEntityManager();
		Thuoc entity = em.find(Thuoc.class, id);
		return entity;
	}

}

