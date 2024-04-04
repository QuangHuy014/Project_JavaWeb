package vn.webbanthuoc.controller.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.webbanthuoc.dao.clazzDao;
import vn.webbanthuoc.entity.Thuoc;




@WebServlet("/sanPhamController")
public class SanPhamController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		clazzDao thuocDao = new clazzDao();
		List<Thuoc> listThuoc = thuocDao.findAll();
		request.setAttribute("ListUser", listThuoc);
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/sanpham.jsp");
		rd.forward(request, response);
	}
	
}
