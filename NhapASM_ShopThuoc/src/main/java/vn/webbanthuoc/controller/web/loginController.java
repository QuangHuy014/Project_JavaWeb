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




@WebServlet( { "/Login", "/Home"})
public class loginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		switch (action) {
		case "/Home":
			try {
				trangchu(request, response);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
			break;
		case "/Login":
			try {
				Login(request, response);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
			break;
		}
	}

    private void trangchu(HttpServletRequest request, HttpServletResponse response)
			throws IllegalAccessException, InvocationTargetException, ServletException, IOException {
		request.getRequestDispatcher("/views/web/trangchu.jsp").forward(request, response);
	}

//    private void Login(HttpServletRequest request, HttpServletResponse response)
//            throws IllegalAccessException, InvocationTargetException, ServletException, IOException {
//        KhachHangDao khDao = new KhachHangDao();
//        NhanVienDao nvDao = new NhanVienDao();
//        if (request.getMethod().equalsIgnoreCase("POST")) {
//            if (request.getParameter("buttonLogin") != null) {
//                String tenDN = request.getParameter("tendangnhap");
//                String pass = request.getParameter("matkhau");
//                
//                KhachHang kh = khDao.findById(tenDN);
//                NhanVien nv = nvDao.findById(tenDN);
//
//                if (kh != null && kh.getMatkhau().equals(pass)) {
//                    request.setAttribute("message", "Login succeed as KhachHang");
//                    request.getSession().setAttribute("KhachHang", kh);
//                    // Nếu đăng nhập thành công, chuyển hướng đến trang Home
//                    response.sendRedirect(request.getContextPath() + "/homeController");
//                    return; // Chấm dứt xử lý ở đây để không chuyển hướng đến trang login nữa
//                } else if (nv != null && nv.getMatkhau().equals(pass)) {
//                    request.setAttribute("message", "Login succeed as NhanVien");
//                    request.getSession().setAttribute("NhanVien", nv);
//                    // Nếu đăng nhập thành công, chuyển hướng đến trang Home
//                    response.sendRedirect(request.getContextPath() + "/homeController");
//                    return; // Chấm dứt xử lý ở đây để không chuyển hướng đến trang login nữa
//                } else {
//                    request.setAttribute("message", "Invalid username or password");
//                    // Đặt lại các giá trị form để người dùng không phải nhập lại
//                    request.setAttribute("tendangnhap", tenDN);
//                    // Forward (chuyển tiếp) lại đến trang login để hiển thị thông báo lỗi
//                    request.getRequestDispatcher("/views/web/tranglogin.jsp").forward(request, response);
//                    return; // Chấm dứt xử lý ở đây để không chuyển hướng đến trang Home
//                }
//            }
//        }
//        request.getRequestDispatcher("/views/web/tranglogin.jsp").forward(request, response);
//    }
    
    
    
    private void Login(HttpServletRequest request, HttpServletResponse response)
            throws IllegalAccessException, InvocationTargetException, ServletException, IOException {
        KhachHangDao khDao = new KhachHangDao();
        NhanVienDao nvDao = new NhanVienDao();
        if (request.getMethod().equalsIgnoreCase("POST")) {
            if (request.getParameter("buttonLogin") != null) {
                String tenDN = request.getParameter("tendangnhap");
                String pass = request.getParameter("matkhau");

                KhachHang kh = khDao.checkLogin(tenDN, pass);
                NhanVien nv = nvDao.checkLogin(tenDN, pass);

                if (kh != null) {
                    request.setAttribute("message", "Login succeed as KhachHang");
                    request.getSession().setAttribute("KhachHangID", kh.getIdkhachhang());
                    request.getSession().setAttribute("KhachHangTen", kh.getTen());
                    request.getSession().setAttribute("KhachHang", kh);
                    // Nếu đăng nhập thành công, chuyển hướng đến trang Home
                     response.sendRedirect(request.getContextPath() + "/homeController");
                    return; // Chấm dứt xử lý ở đây để không chuyển hướng đến trang login nữa
                } else if (nv != null) {
                    request.setAttribute("message", "Login succeed as NhanVien");
                    request.getSession().setAttribute("NhanVienID", nv.getIdmanv());
                    request.getSession().setAttribute("NhanVienTen", nv.getTen());
                    request.getSession().setAttribute("NhanVien", nv);
                    // Nếu đăng nhập thành công, chuyển hướng đến trang Home
                    response.sendRedirect(request.getContextPath() + "/homeController");
                    return; // Chấm dứt xử lý ở đây để không chuyển hướng đến trang login nữa
                } else {
                    request.setAttribute("message", "Invalid username or password");
                    // Đặt lại các giá trị form để người dùng không phải nhập lại
                    request.setAttribute("tendangnhap", tenDN);
                    // Forward (chuyển tiếp) lại đến trang login để hiển thị thông báo lỗi
                    request.getRequestDispatcher("/views/web/tranglogin.jsp").forward(request, response);
                    return; // Chấm dứt xử lý ở đây để không chuyển hướng đến trang Home
                }
            }
        }
        request.getRequestDispatcher("/views/web/tranglogin.jsp").forward(request, response);
    }
}

