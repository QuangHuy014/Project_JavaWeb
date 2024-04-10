package vn.webbanthuoc.controller.web;

/**
 * Servlet implementation class homeController
 */
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.webbanthuoc.dao.ThuocDao;
import vn.webbanthuoc.entity.Thuoc;


@WebServlet({"/homeController", "/product-Detail", "/client/addToCart"})
public class homeController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ThuocDao thuocDao = new ThuocDao();
  
    public homeController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
        try {
            switch (action) {
                case "/homeController":
                    HomeController(request, response);
                    break;
                case "/product-Detail":
                    RequestDispatcher rd = request.getRequestDispatcher("/views/web/sanpham.jsp");
                    rd.forward(request, response);
                    break;
                case "/client/addToCart":
                    addToCart(request, response);
                    break;
                default:
                    throw new IllegalArgumentException("Unexpected value: " + action);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void HomeController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getMethod().equalsIgnoreCase("get")) {
            List<Thuoc> ListSp1 = thuocDao.Filter6Product();
            request.setAttribute("ListSP", ListSp1);
            List<Thuoc> ListSp2 = thuocDao.Fillter4Productlike1();
            request.setAttribute("ListSP2", ListSp2);
            
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/trangchu.jsp");
            rd.forward(request, response);
        }
    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        // Kiểm tra xem người dùng đã đăng nhập chưa
        if (session.getAttribute("KhachHangID") != null || session.getAttribute("NhanVienID") != null) {
            String productId = request.getParameter("id");
            if (productId != null && !productId.isEmpty()) {
                Thuoc product = thuocDao.findById(productId);
                if (product != null) {
                    // Lấy hoặc tạo giỏ hàng của người dùng từ session
                    List<Thuoc> cart = (List<Thuoc>) session.getAttribute("cart");
                    if (cart == null) {
                        cart = new ArrayList<>();
                    }
                    // Thêm sản phẩm vào giỏ hàng
                    cart.add(product);
                    // Lưu lại giỏ hàng vào session
                    session.setAttribute("cart", cart);
                    // Chuyển hướng đến trang hiển thị giỏ hàng
                    response.sendRedirect(request.getContextPath() + "/cartPhoneView1");
                    return;
                }
            }
        } else {
            // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập và lưu lại URL hiện tại
            String currentURL = request.getRequestURI();
            session.setAttribute("redirectURL", currentURL);
            response.sendRedirect(request.getContextPath() + "/views/web/tranglogin.jsp");
            return;
        }
        // Nếu không có sản phẩm, chuyển hướng về trang chủ
        response.sendRedirect(request.getContextPath() + "/homeController");
    }
}



