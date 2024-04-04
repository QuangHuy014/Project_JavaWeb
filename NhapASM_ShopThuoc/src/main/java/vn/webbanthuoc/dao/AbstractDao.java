package vn.webbanthuoc.dao;

import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import vn.webbanthuoc.util.JpaUtil;


//tương tác với cơ sở dữ liệu 
public class AbstractDao<T,K> {
	
//	EntityManager là một đối tượng quan trọng trong JPA (Java Persistence API). Nó đại diện cho một giao diện giữa ứng dụng Java và cơ sở dữ liệu. 
//	EntityManager cho phép bạn thực hiện các thao tác như thêm, sửa, xóa và truy vấn dữ liệu vào cơ sở dữ liệu.	
	//Sẽ trả về một EntityManager, do đó bạn có thể dùng nó để tương tác với cơ sở dữ liệu.
	public static final EntityManager entityManager = JpaUtil.getEntityManager();

	//@SuppressWarnings("deprecation") là một annotation trong Java được sử dụng để tắt các cảnh báo liên quan đến việc sử dụng các phần của API đã bị loại bỏ (deprecated).
	@SuppressWarnings("deprecation")
	
	// Mục đích của hàm này là để thực hiện các tác vụ dọn dẹp hoặc giải phóng tài nguyên trước khi đối tượng bị thu gom rác
	@Override
	protected void finalize() throws Throwable {
	    try {
	        entityManager.close();
	    } finally {
	        super.finalize();
	    }
	}

	// tìm kiếm một đối tượng cụ thể
	//Integer id: Đây là giá trị của thuộc tính định danh (primary key) mà bạn muốn tìm. Trong hầu hết các trường hợp, id sẽ là một số nguyên (integer).
	public T findById(Class<T> clazz, K id) {
		return entityManager.find(clazz, id);
	}
//	Hàm này cho phép bạn lấy ra các đối tượng từ cơ sở dữ liệu dưới dạng một danh sách, giúp quản lý và sử dụng dữ liệu một cách dễ dàng trong ứng dụng của bạn.
	public List<T> findAll(Class<T> clazz, boolean existIsActive) {
        //Dòng code String entityName = clazz.getSimpleName(); trong phương thức findAll của bạn được sử dụng để lấy tên của lớp đối tượng (entity) dưới dạng một chuỗi.
		String entityName = clazz.getSimpleName();
//		Tạo chuỗi JPQL ban đầu: "select o from " + entityName + " o". Đây là cách tiếp cận thông qua JPQL để lấy tất cả các đối tượng từ một bảng.
		StringBuilder sql = new StringBuilder("select o from ").append(entityName).append(" o");
//		Nếu existIsActive được đặt thành true, câu truy vấn sẽ được mở rộng: " Where isActive = 1". Điều này đảm bảo rằng chỉ các đối tượng có isActive bằng 1 sẽ được lấy ra.
		if (existIsActive) {
            sql.append(" Where isActive = 1");
          
        }
		 //sql.toString() là chuỗi truy vấn JPQL (Java Persistence Query Language) đã được xây dựng trước đó.
        //clazz là lớp của đối tượng kết quả mà truy vấn sẽ trả về.
        TypedQuery<T> query = entityManager.createQuery(sql.toString(), clazz);
        return query.getResultList();
    }

    public List<T> findAll(Class<T> clazz, boolean existIsActive, int pageNumber, int pageSize) {
        String entityName = clazz.getSimpleName();
        StringBuilder sql = new StringBuilder("select o from ").append(entityName).append(" o");
        if (existIsActive) {
            sql.append(" where isActive = 1");
        }
       
        TypedQuery<T> query = entityManager.createQuery(sql.toString(), clazz);
        query.setFirstResult((pageNumber - 1) * pageSize); // lấy phần tử của trang 
        query.setMaxResults(pageSize);
        return query.getResultList();
    }
	
    // trả về 1 phần tử
	public T findOne(Class<T>clazz,String sql,Object...params) {// tham số có độ dài biến đổi params có cx đc mà không có cx đc
		TypedQuery<T>query=entityManager.createQuery(sql,clazz);
		for(int i=0;i<params.length;i++) {
			query.setParameter(i, params[i]);
		}
//		Ở đây, List<T> result = query.getResultList() là để lấy danh sách các đối tượng kết quả từ truy vấn. 
//				Sau đó, trong đoạn mã, bạn kiểm tra xem danh sách này có rỗng không.
		List<T>result=query.getResultList();// getResult tránh trg hợp null 
		if(result.isEmpty()) {
			return null;
		}
		return result.get(0);
		
		
	}
	//trả về nhiều phần tử
	//JPQL (Java Persistence Query Language)
	// nó đã trả về list ban đầu rồi nên không cần phải tạo lại list
	public List<T> findMany(Class<T>clazz,String sql,Object...params) {
		TypedQuery<T>query=entityManager.createQuery(sql,clazz);
		for(int i=0;i<params.length;i++) {
			query.setParameter(i, params[i]);
		}
		return query.getResultList();
		
	}
	 // trả về 1 mã object để chúng ta có thể tự map
	@SuppressWarnings("unchecked")
	public List<Object[]> findManyByNativeQuery(Class<T>clazz,String sql,Object...params) {
		Query query=entityManager.createNativeQuery(sql);
		for(int i=0;i<params.length;i++) {
			query.setParameter(i, params[i]);
		}
		return query.getResultList();		
	}
	
	// call storage
	@SuppressWarnings("unchecked")
	public List<T>callStored(String namedStored,Map<String, Object>params){
		final StoredProcedureQuery query=entityManager.createNamedStoredProcedureQuery(namedStored);
		params.forEach(new BiConsumer<String, Object>() {
			@Override
			public void accept(String key, Object value) {
				query.setParameter(key, value);
			}
		} );
		return (List<T>) query.getResultList();
		
	}
	
	public T create (T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.persist(entity);
			entityManager.getTransaction().commit();
			System.out.println("create succeed");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("cannot insert enitty "+entity.getClass().getSimpleName()+" to DB");
			throw new RuntimeException(e);
		}
	}
	
	public T update (T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.merge(entity);
			entityManager.getTransaction().commit();
			System.out.println("update succeed");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("cannot update enitty "+entity.getClass().getSimpleName());
			throw new RuntimeException(e);
		}
	}
	public T delete (T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.remove(entity);
			entityManager.getTransaction().commit();
			System.out.println("delete succeed");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("cannot delete enitty "+entity.getClass().getSimpleName());
			throw new RuntimeException(e);
		}
	}

	
	
	
	
}
