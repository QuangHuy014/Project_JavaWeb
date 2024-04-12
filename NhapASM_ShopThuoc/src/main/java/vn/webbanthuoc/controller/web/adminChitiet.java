package vn.webbanthuoc.controller.web;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.webbanthuoc.dao.HoaDonChiTietDao;
import vn.webbanthuoc.dao.ThuocDao;
import vn.webbanthuoc.entity.NhomThuoc;
import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.entity.hoaDonChiTiet;
@WebServlet({"/showHoaDonChiTiet"})
public class adminChitiet extends HttpServlet{

	private static final long serialVersionUID = 1L;
		HoaDonChiTietDao chitietDao = new HoaDonChiTietDao();

		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			doGet(request, response);
		}

		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			String action = request.getServletPath();
			try {
				switch (action) {
				case "/showHoaDonChiTiet": {
					showHoaDonTiet(request, response);
					break;
				}

				default:
					throw new IllegalArgumentException("Unexpected value: " + action);
				}
			} catch (Exception e) {
			}
		}

		private void showHoaDonTiet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			if (request.getMethod().equalsIgnoreCase("get")) {
				
				List<hoaDonChiTiet> ListSp1 = chitietDao.findHoadonAll();
				request.setAttribute("ListSP", ListSp1);
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/AdminHoaDonChiTiet.jsp");
				rd.forward(request, response);
			}
		}

}
