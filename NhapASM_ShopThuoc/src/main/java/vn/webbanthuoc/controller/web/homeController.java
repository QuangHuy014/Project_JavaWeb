//package vn.webbanthuoc.controller.web;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import vn.webbanthuoc.dao.ThuocDao;
//import vn.webbanthuoc.entity.Thuoc;
//
///**
// * Servlet implementation class homeController
// */
//@WebServlet({"/homeController","/product-Detail","/client/addToCart"})
//public class homeController extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//    ThuocDao thuocDao = new ThuocDao();
//  
//    public homeController() {
//        super();
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getServletPath();
//        try {
//            switch (action) {
//                case "/homeController": {
//                    HomeController(request, response);
//                    break;
//                }
//                case "/product-Detail": {
//                    RequestDispatcher rd = request.getRequestDispatcher("/views/web/sanpham.jsp");
//                    rd.forward(request, response);
//                    break;
//                }
//                case "/client/addToCart": {
//                    AddToCart(request, response);
//                    break;
//                }
//                default:
//                    throw new IllegalArgumentException("Unexpected value: " + action);
//            }
//        } catch (Exception e) {
//            // Xử lý ngoại lệ
//        }
//    }
//
//    private void HomeController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getMethod().equalsIgnoreCase("GET")) {
//            List<Thuoc> ListSp = thuocDao.Filter6Product();
//            request.setAttribute("ListSP", ListSp);
//            RequestDispatcher rd = request.getRequestDispatcher("/views/web/trangchu.jsp");
//            rd.forward(request, response);
//        }
//    }
//
//    private void AddToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // Kiểm tra session có thông tin đăng nhập KhachHang hoặc NhanVien không
//        HttpSession session = request.getSession(false);
//        if (session == null || session.getAttribute("KhachHangID") == null) {
//            // Nếu không có, chuyển hướng đến trang đăng nhập
//            response.sendRedirect(request.getContextPath() + "/Login");
//            return;
//        }
//
//        // Lấy id sản phẩm từ request
//        int productId = Integer.parseInt(request.getParameter("id"));
//        
//        // Thêm logic xử lý thêm sản phẩm vào giỏ hàng ở đây
//        List<Integer> cartItems = (List<Integer>) session.getAttribute("cartItems");
//        if (cartItems == null) {
//            cartItems = new ArrayList<>();
//        }
//        cartItems.add(productId);
//        session.setAttribute("cartItems", cartItems);
//
//        // Chuyển hướng về trang chủ hoặc trang giỏ hàng
//        response.sendRedirect(request.getContextPath() + "/cartPhoneView1");
//    }
//
//}
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
		
		}
	}

	private void HomeController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getMethod().equalsIgnoreCase("get")) {
			List<Thuoc>ListSp1=thuocDao.Filter6Product();
			request.setAttribute("ListSP",ListSp1);
			List<Thuoc>ListSp2=thuocDao.Fillter4Productlike1();
			request.setAttribute("ListSP2", ListSp2);
			
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
