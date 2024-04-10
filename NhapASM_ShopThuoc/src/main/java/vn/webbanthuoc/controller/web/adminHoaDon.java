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

import vn.webbanthuoc.dao.HoaDonDao;
import vn.webbanthuoc.dao.ThuocDao;
import vn.webbanthuoc.entity.NhomThuoc;
import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.entity.hoaDon;

@WebServlet({ "/showHoaDon" })
public class adminHoaDon extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/showHoaDon": {
				showHoaDon(request, response);
//				RequestDispatcher rd = request.getRequestDispatcher("/views/web/AdminHoaDon.jsp");
//				rd.forward(request, response);
				break;
			}

			default:
				throw new IllegalArgumentException("Unexpected value: " + action);
			}
		} catch (Exception e) {
		}
	}

//	private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		String idThuoc = request.getParameter("id");
//		if (idThuoc != null) {
//			thuocDao.delete(idThuoc);
//			 List<Thuoc> ListSP = thuocDao.findAll();
//             request.setAttribute("ListSP", ListSP);
//             request.setAttribute("notice", "Delete success " + ListSP);
//             request.getRequestDispatcher("/showProduct").forward(request, response);
//
//		}
//
//	}

	private void showHoaDon(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getMethod().equalsIgnoreCase("get")) {
			HoaDonDao hoadon = new HoaDonDao();
			List<hoaDon> ListSp1 = hoadon.findAll();
			request.setAttribute("ListSP", ListSp1);
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/AdminHoaDon.jsp");
			rd.forward(request, response);
		}
	}

}
