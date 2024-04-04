package vn.webbanthuoc.dao;

import java.util.List;

import vn.webbanthuoc.entity.Thuoc;

public interface ThuocDao {
	Thuoc findById(String id);

	List<Thuoc> findAll();

	List<Thuoc> findAll(int pageNumber, int pageSize);

	Thuoc create(Thuoc entity);

	Thuoc update(Thuoc entity);

	Thuoc delete(Thuoc entity);
}
