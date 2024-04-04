package vn.webbanthuoc.util;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
//JPA (Java Persistence API)
//Thực hiện các hoạt động tương tác với cơ sở dữ liệu.

//Nếu bạn không sử dụng JpaUtil, bạn sẽ phải tự thiết lập và quản lý kết nối đến cơ sở dữ liệu một cách thủ công.
//Điều này bao gồm việc cung cấp thông tin đăng nhập cơ sở dữ liệu, tạo kết nối, thực hiện các truy vấn SQL, và quản lý kết nối đến cơ sở dữ liệu.

public class JpaUtil {	
	private static EntityManagerFactory factory;
	public static EntityManager getEntityManager() {
		if(factory ==null|| factory.isOpen()) {
			factory=Persistence.createEntityManagerFactory("DuAnJava4");
			
		}
		return factory.createEntityManager();

	
	}
	public static void shotDown() {
		if(factory != null &&factory.isOpen()) {
			factory.close();
		}
		factory=null;
	}
	
}
