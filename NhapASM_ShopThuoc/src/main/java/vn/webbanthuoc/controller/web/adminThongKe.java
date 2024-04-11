package vn.webbanthuoc.controller.web;

import java.io.IOException;
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

import vn.webbanthuoc.dao.HoaDonChiTietDao;
import vn.webbanthuoc.dao.HoaDonDao;
import vn.webbanthuoc.entity.NhomThuoc;
import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.entity.hoaDon;
import vn.webbanthuoc.entity.hoaDonChiTiet;

/**
 * Servlet implementation class adminThongKe
 */
@WebServlet({"/adminThongKe"})
public class adminThongKe extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HoaDonChiTietDao hoadonChiTietdao=new HoaDonChiTietDao();
	HoaDonDao hoadondao=new HoaDonDao();
	public adminThongKe() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/adminThongKe": {
				ShowThongKe(request, response);
				break;
			}
			default:
				throw new IllegalArgumentException("Unexpected value: " + action);
			}
		} catch (Exception e) {
		}
	}


	private void ShowThongKe(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    if (request.getMethod().equalsIgnoreCase("get")) {
	        List<hoaDon> listall = hoadondao.findAllHoaDon();
	        request.setAttribute("ListSP", listall);
	        RequestDispatcher rd = request.getRequestDispatcher("/views/web/AdminThongKe.jsp");
	        rd.forward(request, response);
	    }
	}


}
