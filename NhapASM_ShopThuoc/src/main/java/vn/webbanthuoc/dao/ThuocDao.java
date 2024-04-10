package vn.webbanthuoc.dao;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import vn.webbanthuoc.entity.KhachHang;
import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.util.JpaUtil;

public class ThuocDao {
	
	public void delete(String id) throws Exception {
		EntityManager em = JpaUtil.getEntityManager();
		try {
			em.getTransaction().begin();
			Thuoc user = em.find(Thuoc.class, id);
			em.remove(user);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
	
	public void createProduct(Thuoc thuoc) {
		EntityManager em = JpaUtil.getEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(thuoc);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
			throw e;
		} finally {
			em.close();
		}
	}
	public List<KhachHang>FindAllCustomer(){
		EntityManager em=JpaUtil.getEntityManager();
		String jpql="SELECT t from KhachHang t ";
		TypedQuery<KhachHang> query=em.createQuery(jpql, KhachHang.class);
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

	public List<Thuoc> findPriceToQuality100() {
		EntityManager em = JpaUtil.getEntityManager();
		String jpql = "SELECT s FROM Thuoc s WHERE s.gia <= :gia ORDER BY s.gia";
		TypedQuery<Thuoc> query = em.createQuery(jpql, Thuoc.class);
		query.setParameter("gia", 100000f);
		return query.getResultList();

	}

	public List<Thuoc> findPriceInRange100To200() {
		EntityManager em = JpaUtil.getEntityManager();
		String jpql = "SELECT s FROM Thuoc s WHERE s.gia > :giaMin AND s.gia < :giaMax ORDER BY s.gia";

		TypedQuery<Thuoc> query = em.createQuery(jpql, Thuoc.class);
		query.setParameter("giaMin", 100000f);
		query.setParameter("giaMax", 200000f);
		return query.getResultList();
	}

	public List<Thuoc> findPriceHigh() {
		EntityManager em = JpaUtil.getEntityManager();
		String jpql = "SELECT s FROM Thuoc s ORDER BY s.gia DESC";
		TypedQuery<Thuoc> query = em.createQuery(jpql, Thuoc.class);
		return query.getResultList();
	}

	

	public List<Thuoc> findPriceLow() {
		EntityManager em = JpaUtil.getEntityManager();
		String jpql = "SELECT s FROM Thuoc s ORDER BY s.gia ASC";
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
	    TypedQuery<Thuoc> query = em.createQuery("SELECT t FROM Thuoc t WHERE t.id = :id", Thuoc.class);
	    query.setParameter("id", id);
	    Thuoc entity = query.getSingleResult();
	    return entity;
	}
	
	




	
	public List<Thuoc> Filter3Product() {
	    EntityManager em = JpaUtil.getEntityManager();
	    String jpql = "SELECT t FROM Thuoc t ORDER BY t.gia DESC";
	    TypedQuery<Thuoc> query = em.createQuery(jpql, Thuoc.class);
	    query.setMaxResults(3); // Chỉ lấy 3 kết quả đầu tiên
	    return query.getResultList();
	}
	public List<Thuoc> findByFullname(String fullname) {
		EntityManager em = JpaUtil.getEntityManager();
		String jpaQuery = "SELECT u FROM Thuoc u WHERE u.ten LIKE :ten";
		TypedQuery<Thuoc> query = em.createQuery(jpaQuery, Thuoc.class);
		query.setParameter("ten", "%" + fullname + "%");
		return query.getResultList();
	}
	public List<Thuoc>Filter6Product(){
		EntityManager em=JpaUtil.getEntityManager();
		String jpql="SELECT t from Thuoc t ";
		TypedQuery<Thuoc> query=em.createQuery(jpql,Thuoc.class);
		query.setMaxResults(6);
		return query.getResultList();
	}
	public List<Thuoc>Fillter4Productlike1(){
		EntityManager em=JpaUtil.getEntityManager();
		String jpql="Select t from Thuoc t ORDER BY t.gia ASC";
		TypedQuery<Thuoc> query=em.createQuery(jpql,Thuoc.class);
		query.setMaxResults(4);
		return query.getResultList();
		
	}




}