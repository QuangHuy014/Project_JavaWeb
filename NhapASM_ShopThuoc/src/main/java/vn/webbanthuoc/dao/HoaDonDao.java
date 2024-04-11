package vn.webbanthuoc.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.entity.hoaDon;
import vn.webbanthuoc.util.JpaUtil;

public class HoaDonDao {
	
    @Override
    protected void finalize() throws Throwable {
        EntityManager em = JpaUtil.getEntityManager();
        em.close();
        super.finalize();
    }
    public List<hoaDon> findAllHoaDon() {
		EntityManager em = JpaUtil.getEntityManager();
		String jpql = "SELECT s FROM hoaDon s order by s.IDHoaDon";
		TypedQuery<hoaDon> query = em.createQuery(jpql, hoaDon.class);
		return query.getResultList();
	}
    
    
    public void create(hoaDon hoaDon) {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(hoaDon);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    public void update(hoaDon hoaDon) {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(hoaDon);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    public void delete(int idhoaDon) throws Exception {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            hoaDon hoaDon = em.find(hoaDon.class, idhoaDon);
            em.remove(hoaDon);
            em.getTransaction().commit();
        } catch (Exception e) {
            em.getTransaction().rollback();
            e.printStackTrace();
            throw e;
        } finally {
            em.close();
        }
    }

    public hoaDon findById(int idhoaDon) {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            return em.find(hoaDon.class, idhoaDon);
        } finally {
            em.close();
        }
    }
    

    public List<hoaDon> findAll() {
        EntityManager em = JpaUtil.getEntityManager();
        TypedQuery<hoaDon> query = em.createQuery("SELECT hd FROM hoaDon hd", hoaDon.class);
        return query.getResultList();
    }

    public long countAll() {
        EntityManager em = JpaUtil.getEntityManager();
        TypedQuery<Long> query = em.createQuery("SELECT COUNT(hd) FROM hoaDon hd", Long.class);
        return query.getSingleResult();
    }

    public int count() {
        EntityManager em = JpaUtil.getEntityManager();
        TypedQuery<Long> query = em.createQuery("SELECT COUNT(hd) FROM hoaDon hd", Long.class);
        return query.getSingleResult().intValue();
    }
}
