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

/**
 * Servlet implementation class homeController
 */
@WebServlet({"/homeController","/product-Detail","/client/addToCart"})
public class homeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ThuocDao thuocDao = new ThuocDao();
  
    public homeController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action=request.getServletPath();
		try {
			switch (action) {
			case "/homeController": {
				HomeController(request, response);
				break;

			}
			case "/product-Detail": {
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/sanpham.jsp");
				rd.forward(request, response);
				break;
			}
			
//			case "/cart": {
//				RequestDispatcher rd = request.getRequestDispatcher("/views/web/cart.jsp");
//				rd.forward(request, response);
//				break;
//			}
			case "/client/addToCart": {
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/cart.jsp");
				rd.forward(request, response);
				break;
			}
			default:
				throw new IllegalArgumentException("Unexpected value: " + action);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	private void HomeController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getMethod().equalsIgnoreCase("get")) {
			List<Thuoc>ListSp=thuocDao.Filter6Product();
			request.setAttribute("ListSP",ListSp);
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/trangchu.jsp");
			rd.forward(request, response);
		}
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}
//	protected void doAddToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int quantity=1;
//		int id;
//		if(request.getParameter("productId")!=null) {
//			id=Integer.parseInt(request.getParameter("productId"));
////			Product pr=
//		}
//	}
	

}

