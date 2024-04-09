	package vn.webbanthuoc.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.webbanthuoc.dao.ThuocDao;
import vn.webbanthuoc.entity.Thuoc;

@WebServlet({ "/sanPhamController", "/sanPhamChiTietController" })
public class SanPhamController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	ThuocDao thuocDao = new ThuocDao();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		switch (action) {
		case "/sanPhamController":
			SanPham(request, response);
			break;

		case "/sanPhamChiTietController":
			SanPhamChitiet(request, response);
			break;

		}
	}

	private void SanPhamChitiet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getMethod();
		if (method.equalsIgnoreCase("GET")) {
			String id = request.getParameter("id");
			Thuoc thuoc = thuocDao.findById(id);
			List<Thuoc> thuocList = thuocDao.Filter3Product(); // Lấy danh sách các sản phẩm
			request.setAttribute("thuoc2", thuocList); // Truyền danh sách vào thuộc tính
			request.setAttribute("thuoc", thuoc);
			request.getRequestDispatcher("/views/web/productDetail.jsp").forward(request, response);
		}
	} 


	private void SanPham(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("aplication/json");
		String fullname = request.getParameter("fullname");
		int page = 0; // Trang mặc định là 0 (trang đầu tiên)
		int pageSize = 4; // Số lượng mục trên mỗi trang

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		ThuocDao thuocDao = new ThuocDao();
		List<Thuoc> listUsers;

		if (fullname != null && !fullname.isEmpty()) {
			listUsers = thuocDao.findByFullname(fullname);
		}
		else if (request.getParameter("chkHangMoiConnect") != null) {
			listUsers = thuocDao.findThuocNew();
		} else if (request.getParameter("chkHightoLow") != null) {
			listUsers = thuocDao.findPriceHigh();
		}else if (request.getParameter("chkLowtoHigh") != null) {
			listUsers = thuocDao.findPriceLow();
		} else if (request.getParameter("chkNhonHon100") != null) {
			listUsers = thuocDao.findPriceToQuality100();
		}else if (request.getParameter("chkLonHon100NhoHon200") != null) {
			listUsers = thuocDao.findPriceInRange100To200();
		}
		
		else {
			listUsers = thuocDao.findAll(page, pageSize);
		}
		long sum = thuocDao.countAll(); // Tính tang số lượng user
		long totalPages = (long) Math.ceil((double) sum / pageSize); // Tính tổng số trang

		request.setAttribute("ListUser", listUsers);
		request.setAttribute("TotalPages", totalPages);
		request.setAttribute("CurrentPage", page);
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/sanpham.jsp");
		rd.forward(request, response);
	}

}
