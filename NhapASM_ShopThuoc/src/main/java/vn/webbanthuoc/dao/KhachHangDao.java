package vn.webbanthuoc.dao;
import java.util.List;




import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import vn.webbanthuoc.entity.KhachHang;
import vn.webbanthuoc.util.JpaUtil;




public class KhachHangDao{
	@Override
	protected void finalize() throws Throwable {
		EntityManager em = JpaUtil.getEntityManager();
		em.close();
		super.finalize();
	}

	public void create(KhachHang kh) {
	    EntityManager em = JpaUtil.getEntityManager();
	    try {
	        em.getTransaction().begin();
	        em.persist(kh);
	        em.getTransaction().commit();
	    } catch (Exception e) {
	        e.printStackTrace();
	        em.getTransaction().rollback();
	        throw e;
	    } finally {
	        em.close();
	    }
	}


	public void update(KhachHang kh) {
	    EntityManager em = JpaUtil.getEntityManager();
	    try {
	        em.getTransaction().begin();
	        em.merge(kh);
	        em.getTransaction().commit();
	    } catch (Exception e) {
	        e.printStackTrace();
	        em.getTransaction().rollback();
	        throw e;
	    } finally {
	        em.close();
	    }
	}



	


	public void delete(String id) throws Exception {
		EntityManager em = JpaUtil.getEntityManager();
		try {
			em.getTransaction().begin();
			KhachHang kh = em.find(KhachHang.class, id);
			em.remove(kh);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
		} finally {
			em.close();
		}
	}


	public KhachHang findById(String tendangnhap) {
	    EntityManager em = JpaUtil.getEntityManager();
	    try {
	        String jpaQuery = "SELECT u FROM KhachHang u WHERE u.tendangnhap = :tendangnhap";
	        TypedQuery<KhachHang> query = em.createQuery(jpaQuery, KhachHang.class);
	        query.setParameter("tendangnhap", tendangnhap);
	        return query.getSingleResult();
	    } catch (NoResultException e) {
	        return null; // Trả về null nếu không tìm thấy user
	    } finally {
	        em.close();
	    }
	}

	


	public KhachHang checkLogin(String tendangnhap, String matkhau) {
	    EntityManager em = JpaUtil.getEntityManager();
	    try {
	        String jpaQuery = "SELECT u FROM KhachHang u WHERE u.tendangnhap = :tendangnhap AND u.matkhau = :matkhau";
	        TypedQuery<KhachHang> query = em.createQuery(jpaQuery, KhachHang.class);
	        query.setParameter("tendangnhap", tendangnhap);
	        query.setParameter("matkhau", matkhau);
	        return query.getSingleResult();
	    } catch (NoResultException e) {
	        return null; // Trả về null nếu không tìm thấy user
	    } finally {
	        em.close();
	    }
	}



	public List<KhachHang> findAll() {
		EntityManager em = JpaUtil.getEntityManager();
		TypedQuery<KhachHang> query = em.createNamedQuery("KhachHang.findAll", KhachHang.class);
		return query.getResultList();
	}
	public List<KhachHang> findByFullname(String fullname) {
	    EntityManager em = JpaUtil.getEntityManager();
	    String jpaQuery = "SELECT u FROM KhachHang u WHERE u.Fullname LIKE :fullname";
	    TypedQuery<KhachHang> query = em.createQuery(jpaQuery, KhachHang.class);
	    query.setParameter("fullname", "%" + fullname + "%");
	    return query.getResultList();
	}


	public List<KhachHang> findAll(int page, int pageSize) {
	    EntityManager em = JpaUtil.getEntityManager();
	    TypedQuery<KhachHang> query = em.createNamedQuery("KhachHang.findAll", KhachHang.class);
	    query.setFirstResult(page * pageSize);
	    query.setMaxResults(pageSize);
	    return query.getResultList();
	}



	public long countAll() {
	    EntityManager em = JpaUtil.getEntityManager();
	    TypedQuery<Long> query = em.createQuery("SELECT COUNT(u) FROM KhachHang u", Long.class);
	    return query.getSingleResult();
	}


	

	public int count() {
		EntityManager em = JpaUtil.getEntityManager();
		String japl = "select count( u) from KhachHang u ";
		Query query = em.createQuery(japl);
		return ((Long) query.getSingleResult()).intValue();
	}
	
}
