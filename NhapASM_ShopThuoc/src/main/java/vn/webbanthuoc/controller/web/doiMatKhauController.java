package vn.webbanthuoc.controller.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.webbanthuoc.dao.KhachHangDao;
import vn.webbanthuoc.dao.NhanVienDao;
import vn.webbanthuoc.entity.KhachHang;
import vn.webbanthuoc.entity.NhanVien;

@WebServlet({"/doiMatKhau", "/DangNhapchinh"})
public class doiMatKhauController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private NhanVienDao nvDao;
    private KhachHangDao khDao;
    
    public void init() {
        nvDao = new NhanVienDao();
        khDao = new KhachHangDao();
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getServletPath();
        switch (action) {
            case "/doiMatKhau":
                try {
                    DoiMatKhau(request, response);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    e.printStackTrace();
                }
                break;
            case "/DangNhapchinh":
                try {
                    DangNhap(request, response);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    e.printStackTrace();
                }
                break;
        }
    }   
    
    private void DoiMatKhau(HttpServletRequest request, HttpServletResponse response)
            throws IllegalAccessException, InvocationTargetException, ServletException, IOException {
        if (request.getMethod().equalsIgnoreCase("POST")) {
            // Kiểm tra xem nút "Đổi mật khẩu" đã được nhấn chưa
            if (request.getParameter("buttonQuenMk") != null) {
                String tenTaiKhoan = request.getParameter("tenTaiKhoan");
                String matKhauCu = request.getParameter("matKhauCu");
                String matKhauMoi = request.getParameter("matKhauMoi");
                String xacNhanMatKhauMoi = request.getParameter("xacNhanMatKhauMoi");
                
                boolean success = false;
                String message = "";
                
                // Kiểm tra xem đây là Nhân viên hay Khách hàng
                NhanVien nhanVien = nvDao.findById(tenTaiKhoan);
                KhachHang khachHang = khDao.findById(tenTaiKhoan);
                
                if (nhanVien != null && nhanVien.getMatkhau().equals(matKhauCu)) {
                    nhanVien.setMatkhau(matKhauMoi);
                    nvDao.update(nhanVien);
                    success = true;
                    message = "Đổi mật khẩu nhân viên thành công.";
                } else if (khachHang != null && khachHang.getMatkhau().equals(matKhauCu)) {
                    khachHang.setMatkhau(matKhauMoi);
                    khDao.update(khachHang);
                    success = true;
                    message = "Đổi mật khẩu khách hàng thành công.";
                } else {
                    message = "Tên đăng nhập hoặc mật khẩu cũ không chính xác.";
                    request.setAttribute("error", message); // Báo lỗi
                    request.getRequestDispatcher("/views/web/doimatkhau.jsp").forward(request, response);
                    return; // Dừng việc thực thi để không chuyển hướng đi đâu
                }
                
                // In ra log để kiểm tra
                System.out.println("tenTaiKhoan: " + tenTaiKhoan);
                System.out.println("matKhauCu: " + matKhauCu);
                System.out.println("matKhauMoi: " + matKhauMoi);
                System.out.println("xacNhanMatKhauMoi: " + xacNhanMatKhauMoi);
                System.out.println("success: " + success);
                System.out.println("message: " + message);
                
                // Chuyển hướng sau khi thêm thành công
                response.sendRedirect(request.getContextPath() + "/DangNhap");
                
                return; // Đảm bảo không tiếp tục thực thi sau khi chuyển hướng
            } else {
                request.setAttribute("message", "Đổi mật khẩu thất bại");
            }
        }
        request.getRequestDispatcher("/views/web/doimatkhau.jsp").forward(request, response);
    }
    
    
    
   
    
    private void DangNhap(HttpServletRequest request, HttpServletResponse response)
            throws IllegalAccessException, InvocationTargetException, ServletException, IOException {
        request.getRequestDispatcher("/views/web/tranglogin.jsp").forward(request, response);
    }
}
