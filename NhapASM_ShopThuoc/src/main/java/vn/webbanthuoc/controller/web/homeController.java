//package vn.webbanthuoc.controller.web;
//
//import java.io.IOException;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
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
//
//@WebServlet({"/homeController","/product-Detail","/addToCart"})
//public class homeController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	ThuocDao thuocDao = new ThuocDao();
//  
//    public homeController() {
//        super();
//    }
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		String action=request.getServletPath();
//		try {
//			switch (action) {
//			case "/homeController": {
//				HomeController(request, response);
//				break;
//
//			}
//			case "/product-Detail": {
//				RequestDispatcher rd = request.getRequestDispatcher("/views/web/sanpham.jsp");
//				rd.forward(request, response);
//				break;
//			}
//
//			case "/addToCart": {
//				RequestDispatcher rd = request.getRequestDispatcher("/views/web/cart.jsp");
//				rd.forward(request, response);
//				break;
//			}
//			default:
//				throw new IllegalArgumentException("Unexpected value: " + action);
//			}
//		} catch (Exception e) {
//		
//		}
//	}
//
////	private void HomeController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
////		if(request.getMethod().equalsIgnoreCase("get")) {
////			List<Thuoc>ListSp1=thuocDao.Filter6Product();
////			request.setAttribute("ListSP",ListSp1);
////			List<Thuoc>ListSp2=thuocDao.Fillter4Productlike1();
////			request.setAttribute("ListSP2", ListSp2);
////			
////			RequestDispatcher rd = request.getRequestDispatcher("/views/web/trangchu.jsp");
////			rd.forward(request, response);
////		}
////	}
//	// Trong phương thức HomeController
//	private void HomeController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	    if (request.getMethod().equalsIgnoreCase("get")) {
//	        // Kiểm tra xem người dùng đã đăng nhập chưa
//	        HttpSession session = request.getSession(false);
//	        if (session != null && session.getAttribute("KhachHangID") != null) {
//	            // Nếu có session của KhachHang, chứng tỏ đã đăng nhập
//	            String productId = request.getParameter("id"); // Lấy ID sản phẩm được chọn
//	            if (productId != null && !productId.isEmpty()) {
//	                // Thêm sản phẩm vào giỏ hàng
//	                addToCart(productId, session, request, response);
//	                return;
//	            }
//	        } else {
//	            // Nếu không có session của KhachHang, chuyển hướng đến trang đăng nhập
//	            response.sendRedirect(request.getContextPath() + "/Login");
//	            return;
//	        }
//
//	        // Nếu không có sản phẩm được chọn, hiển thị trang chính
//	        List<Thuoc> ListSp1 = thuocDao.Filter6Product();
//	        request.setAttribute("ListSP", ListSp1);
//	        List<Thuoc> ListSp2 = thuocDao.Fillter4Productlike1();
//	        request.setAttribute("ListSP2", ListSp2);
//
//	        RequestDispatcher rd = request.getRequestDispatcher("/views/web/trangchu.jsp");
//	        rd.forward(request, response);
//	    }
//	}
//
//	// Phương thức thêm sản phẩm vào giỏ hàng
//	private void addToCart(String productId, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	    // Lấy giỏ hàng từ session
//	    Map<String, Thuoc> cartThuoc = (Map<String, Thuoc>) session.getAttribute("cartThuocss");
//	    if (cartThuoc == null) {
//	        cartThuoc = new HashMap<>();
//	    }
//
//	    // Thêm sản phẩm vào giỏ hàng
//	    Thuoc product = thuocDao.findById(productId);
//	    if (product != null) {
//	        if (cartThuoc.containsKey(productId)) {
//	            // Nếu sản phẩm đã tồn tại trong giỏ hàng, tăng số lượng
//	            Thuoc existingProduct = cartThuoc.get(productId);
//	            existingProduct.setQuantity(existingProduct.getQuantity() + 1);
//	        } else {
//	            // Nếu sản phẩm chưa tồn tại trong giỏ hàng, thêm mới
//	            product.setQuantity(1);
//	            cartThuoc.put(productId, product);
//	        }
//
//	        // Lưu giỏ hàng vào session
//	        session.setAttribute("cartThuocss", cartThuoc);
//	        
//	        // Chuyển hướng đến trang giỏ hàng
//	        response.sendRedirect(request.getContextPath() + "/CartProduct");
//	    } else {
//	        // Nếu không tìm thấy sản phẩm, có thể chuyển hướng đến trang lỗi hoặc trang chính
//	        response.sendRedirect(request.getContextPath() + "/errorPage.jsp");
//	    }
//	}
//
//}
package vn.webbanthuoc.controller.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.webbanthuoc.dao.ThuocDao;
import vn.webbanthuoc.entity.Thuoc;


@WebServlet({"/homeController","/product-Detail","/addToCart"})
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
                case "/addToCart": {
                    HttpSession session = request.getSession(false);
                    if (session != null && session.getAttribute("KhachHangID") != null) {
                        String productId = request.getParameter("id"); // Lấy ID sản phẩm được chọn
                        if (productId != null && !productId.isEmpty()) {
                            // Thêm sản phẩm vào giỏ hàng
                            addToCart(productId, session, request, response);
                            return;
                        }
                    } else {
                        // Nếu chưa đăng nhập, lưu URL hiện tại vào session và chuyển hướng đến trang đăng nhập
                        session.setAttribute("returnUrl", request.getRequestURI());
                        response.sendRedirect(request.getContextPath() + "/Login");
                        return;
                    }
                    break;
                }

                default:
                    throw new IllegalArgumentException("Unexpected value: " + action);
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ
        }
    }

    // Trong phương thức HomeController
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


    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("KhachHangID") != null) {
            // Nếu có session của KhachHang, chứng tỏ đã đăng nhập
            String productId = request.getParameter("id"); // Lấy ID sản phẩm được chọn
            if (productId != null && !productId.isEmpty()) {
                // Thêm sản phẩm vào giỏ hàng
                addToCart(productId, session, request, response);
                return;
            }
        }

        // Nếu không có sản phẩm được chọn hoặc chưa đăng nhập, hiển thị trang chính
        List<Thuoc> ListSp1 = thuocDao.Filter6Product();
        request.setAttribute("ListSP", ListSp1);
        List<Thuoc> ListSp2 = thuocDao.Fillter4Productlike1();
        request.setAttribute("ListSP2", ListSp2);

        RequestDispatcher rd = request.getRequestDispatcher("/views/web/trangchu.jsp");
        rd.forward(request, response);
    }

    // Phương thức thêm sản phẩm vào giỏ hàng
    private void addToCart(String productId, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy giỏ hàng từ session
        Map<String, Thuoc> cartThuoc = (Map<String, Thuoc>) session.getAttribute("cartThuocss");
        if (cartThuoc == null) {
            cartThuoc = new HashMap<>();
        }

        // Thêm sản phẩm vào giỏ hàng
        Thuoc product = thuocDao.findById(productId);
        if (product != null) {
            if (cartThuoc.containsKey(productId)) {
                // Nếu sản phẩm đã tồn tại trong giỏ hàng, tăng số lượng
                Thuoc existingProduct = cartThuoc.get(productId);
                existingProduct.setQuantity(existingProduct.getQuantity() + 1);
            } else {
                // Nếu sản phẩm chưa tồn tại trong giỏ hàng, thêm mới
                product.setQuantity(1);
                cartThuoc.put(productId, product);
            }

            // Lưu giỏ hàng vào session
            session.setAttribute("cartThuocss", cartThuoc);

            // Chuyển hướng đến trang giỏ hàng
           
            response.sendRedirect(request.getContextPath() + "/addToCart1");
           
     
            


        } else {
            // Nếu không tìm thấy sản phẩm, có thể chuyển hướng đến trang lỗi hoặc trang chính
            response.sendRedirect(request.getContextPath() + "/errorPage.jsp");
        }
    }

}

