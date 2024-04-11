package vn.webbanthuoc.controller.web;

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



@WebServlet({"/homeController","/product-Detail", "/client/addToCart"})

public class homeController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ThuocDao thuocDao = new ThuocDao();
  
    public homeController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getServletPath();
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
                case "/client/addToCart": {
                    addToCart(request, response);
                    break;
                }
                default:
                    throw new IllegalArgumentException("Unexpected value: " + action);
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ
        }
    }

    private void HomeController(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getMethod().equalsIgnoreCase("get")) {
            List<Thuoc> ListSp = thuocDao.Filter6Product();
            request.setAttribute("ListSP", ListSp);
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/trangchu.jsp");
            rd.forward(request, response);
        }
    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // Kiểm tra session có thông tin đăng nhập KhachHang hoặc NhanVien không
//        HttpSession session = request.getSession(false);
//        if (session == null || session.getAttribute("KhachHang") == null) {
//            // Nếu không có, chuyển hướng đến trang đăng nhập
//            response.sendRedirect(request.getContextPath() + "/Login");
//            return;
//        }
    }}
        // Nếu có, tiếp tục thêm vào giỏ hàng