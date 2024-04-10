package vn.webbanthuoc.controller.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import vn.webbanthuoc.dao.ThuocDao;
import vn.webbanthuoc.entity.KhachHang;
import vn.webbanthuoc.entity.NhomThuoc;
import vn.webbanthuoc.entity.Thuoc;

/**
 * Servlet implementation class adminController
 */
@WebServlet({ "/showProduct", "/addProduct", "/deleteProduct" })
public class adminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ThuocDao thuocDao = new ThuocDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/showProduct": {
				showNhanVien(request, response);
				break;
			}

			case "/deleteProduct": {
				deleteProduct(request, response);
				break;
			}
			case "/addProduct": {
				addProduct(request, response);
				break;
			}

			default:
				throw new IllegalArgumentException("Unexpected value: " + action);
			}
		} catch (Exception e) {
		}
	}

	private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String idThuoc = request.getParameter("id");
		if (idThuoc != null) {
			thuocDao.delete(idThuoc);
			 List<Thuoc> ListSP = thuocDao.findAll();
             request.setAttribute("ListSP", ListSP);
             request.setAttribute("notice", "Delete success " + ListSP);
             request.getRequestDispatcher("/showProduct").forward(request, response);

		}

	}

	private void addProduct(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getMethod().equalsIgnoreCase("post")) {
			if (request.getParameter("buttonAdd") != null) {
				Thuoc entity = new Thuoc();
				NhomThuoc nhomThuoc = new NhomThuoc();

				// Lấy giá trị idNhomThuoc từ trường nhập liệu "nhomThuoc"
				nhomThuoc.setIdNhomThuoc(request.getParameter("nhomThuoc"));

				entity.setIdThuoc(request.getParameter("idThuoc"));
				entity.setTen(request.getParameter("ten"));
				entity.setNhomThuoc(nhomThuoc); // Gán đối tượng NhomThuoc đã có giá trị idNhomThuoc
				entity.setSoLuong(Integer.parseInt(request.getParameter("soLuong")));
				entity.setGia(Float.parseFloat(request.getParameter("gia")));
				entity.setNguonGoc(request.getParameter("nguonGoc"));
				entity.setCongDung(request.getParameter("congDung"));
				entity.setNgaySanXuat(new Date()); // Cần xác định ngày sản xuất, có thể sử dụng new Date() hoặc giá trị
													// từ trường nhập liệu
				entity.setHinh(request.getParameter("hinh"));
				entity.setActive(Boolean.parseBoolean(request.getParameter("isActive")));
				entity.setBaoQuan(request.getParameter("baoQuan"));
				entity.setDonVi(request.getParameter("donVi"));

				// Tiếp theo, bạn có thể gọi phương thức từ DAO để lưu đối tượng 'Thuoc' vào cơ
				// sở dữ liệu
				thuocDao.createProduct(entity);

				// Sau khi thêm thành công, bạn có thể chuyển hướng đến trang hiển thị sản phẩm
				response.sendRedirect(request.getContextPath() + "/showProduct");
			}

		} else {
			// Xử lý cho phương thức GET nếu cần
			request.getRequestDispatcher("/views/web/UpgradeVi.jsp").forward(request, response);
		}
	}

	private void showNhanVien(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getMethod().equalsIgnoreCase("get")) {
			
			List<Thuoc> ListSp1 = thuocDao.findAll();
			String fullname = request.getParameter("fullname");
			if (fullname != null && !fullname.isEmpty()) {
				ListSp1 = thuocDao.findByFullname(fullname);
			}
			request.setAttribute("ListSP", ListSp1);
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/vi.jsp");
			rd.forward(request, response);
		}
	}

}
