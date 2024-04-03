package vn.webbanthuoc.dao;

import java.util.List;

public interface IDao <T>{
	public void create(T entity);
	public void  update(T entity);
	public T delete(String id);
	public T findById(String id);
	public List<T> findAll();
	public int count();
}
