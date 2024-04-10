package vn.webbanthuoc.dao;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import vn.webbanthuoc.entity.hoaDonChiTiet;
import vn.webbanthuoc.util.JpaUtil;

public class HoaDonChiTietDao {

    public void save(hoaDonChiTiet hoaDonChiTiet) {
        EntityManager em = JpaUtil.getEntityManager();
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.persist(hoaDonChiTiet);
            transaction.commit();
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            em.close();
        }
    }

    public hoaDonChiTiet findById(int id) {
        EntityManager em = JpaUtil.getEntityManager();
        try {
            return em.find(hoaDonChiTiet.class, id);
        } finally {
            em.close();
        }
    }

    public void update(hoaDonChiTiet hoaDonChiTiet) {
        EntityManager em = JpaUtil.getEntityManager();
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.merge(hoaDonChiTiet);
            transaction.commit();
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            em.close();
        }
    }

    public void delete(int id) {
        EntityManager em = JpaUtil.getEntityManager();
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            hoaDonChiTiet hoaDonChiTiet = em.find(hoaDonChiTiet.class, id);
            em.remove(hoaDonChiTiet);
            transaction.commit();
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            em.close();
        }
    }

}