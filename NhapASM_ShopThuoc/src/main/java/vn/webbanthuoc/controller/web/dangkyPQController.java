package vn.webbanthuoc.controller.web;

import java.io.IOException;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.webbanthuoc.dao.NhanVienDao;
import vn.webbanthuoc.entity.NhanVien;



/**
 * Servlet implementation class dangkyPQController
 */
@WebServlet({"/dangkyPQ","/DangNhapPQ"})
public class dangkyPQController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private NhanVienDao nvDao;
    
    public void init() {
        nvDao = new NhanVienDao();
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/dangkyPQ": 
                try {
                    DangKyPQ(request, response);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    e.printStackTrace();
                }
                break;
            case "/DangNhap":
                try {
                    DangNhap(request, response);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    e.printStackTrace();
                }
                break;
        }
    }
   
    private void DangKyPQ(HttpServletRequest request, HttpServletResponse response)
            throws IllegalAccessException, InvocationTargetException, ServletException, IOException {
        if (request.getMethod().equalsIgnoreCase("POST")) {
            if (request.getParameter("buttonDangKyPQ") != null) {
                // Lấy thông tin từ form
                int idmanv = Integer.parseInt(request.getParameter("idmanv"));
                String ten = request.getParameter("ten");
                int age = Integer.parseInt(request.getParameter("age"));
                String birthdayStr = request.getParameter("birthday");
                // Xử lý chuyển đổi từ String sang Date
                java.sql.Date birthday = java.sql.Date.valueOf(birthdayStr);
                boolean vaitro = "admin".equals(request.getParameter("vaitro")); // Nếu "admin" thì true, ngược lại false
                String diachi = request.getParameter("diachi");
                boolean gioitinh = "nam".equals(request.getParameter("gioitinh")); // Nếu "nam" thì true, ngược lại false
                boolean trangthai = "danglam".equals(request.getParameter("trangthai")); // Nếu "danglam" thì true, ngược lại false
                String tendangnhap = request.getParameter("tendangnhap");
                String matkhau = request.getParameter("matkhau");
                
                // Tạo đối tượng NhanVien từ thông tin lấy từ form
                NhanVien newNhanVien = new NhanVien(idmanv, ten, age, birthday, vaitro, diachi, gioitinh, trangthai, matkhau, tendangnhap);
                
                // Gọi hàm create để thêm User vào database
                nvDao.create(newNhanVien);
                
                // Chuyển hướng sau khi thêm thành công
                response.sendRedirect(request.getContextPath() + "/DangNhap");
                
                return; // Đảm bảo không tiếp tục thực thi sau khi chuyển hướng
            } else {
                request.setAttribute("message", "Đăng ký thất bại");
            }
        }
        request.getRequestDispatcher("/views/web/dangkyChinh.jsp").forward(request, response);
    }
  
    private void DangNhap(HttpServletRequest request, HttpServletResponse response)
            throws IllegalAccessException, InvocationTargetException, ServletException, IOException {
        request.getRequestDispatcher("/views/web/tranglogin.jsp").forward(request, response);
    }
}

