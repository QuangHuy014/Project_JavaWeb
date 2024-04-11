package vn.webbanthuoc.controller.web;

import java.io.IOException;
import java.util.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.webbanthuoc.dao.HoaDonChiTietDao;
import vn.webbanthuoc.dao.HoaDonDao;
import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.entity.hoaDon;
import vn.webbanthuoc.entity.hoaDonChiTiet;

/**
 * Servlet implementation class CheckoutSevlet
 */
@WebServlet({ "", "/checkout" })
public class CheckoutSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HoaDonDao hoaDonDao = new HoaDonDao();
	HoaDonChiTietDao HoaDonChiTietDao = new HoaDonChiTietDao();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckoutSevlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/views/web/order_confirm.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Lấy thông tin từ form
		String tenKhachHang = request.getParameter("tenKhachHang");
		String diaChi = request.getParameter("diaChi");
		String email = request.getParameter("email");
		String soDienThoai = request.getParameter("soDienThoai");


	        // Lấy giỏ hàng từ session
	        Map<String, Thuoc> cartThuoc = (Map<String, Thuoc>) request.getSession().getAttribute("cartThuocss");
try {
	 hoaDon hoaDon = new hoaDon();
		int idnv= (int) request.getSession().getAttribute("NhanVienID");

      hoaDon.setIDMaNV(idnv);
      hoaDon.setIDKhachHang(5);
      hoaDon.setIDHoaDon(14);
      hoaDon.setTenKhachHang(tenKhachHang);
      hoaDon.setDiaChiKhachHang(diaChi);
      hoaDon.setEmail(email);
      hoaDon.setSoDienThoaiKhachHang(soDienThoai);
      hoaDon.setNgayDH(new Date());
      hoaDonDao.create(hoaDon);
      //

	        // Lưu từng sản phẩm trong giỏ hàng vào cơ sở dữ liệu
	        for (Thuoc thuoc : cartThuoc.values()) {
	        	Thuoc thuocc=new Thuoc();
	        	
	            hoaDonChiTiet hoaDonChiTiet = new hoaDonChiTiet();
	            hoaDonChiTiet.setHoaDon(hoaDon);
	            
	            hoaDonChiTiet.setTenThuoc(thuoc.getTen());
	            hoaDonChiTiet.setIDThuoc(thuoc.getIdThuoc());
	            hoaDonChiTiet.setSoLuong(thuoc.getQuantity());
	           
	            hoaDonChiTiet.setGia(thuoc.getGia());
	            hoaDonChiTiet.setDonVi(thuoc.getDonVi());
	            HoaDonChiTietDao.save(hoaDonChiTiet);
	        }
} catch (Exception e) {
	System.out.println("loi khi them chi tiet hoa don");
	e.printStackTrace();
}

	        // Sau khi lưu thành công, xóa giỏ hàng khỏi session
	        request.getSession().removeAttribute("cartThuocss");

//	        // Chuyển hướng đến trang thanh toán thành công hoặc trang khác
//	        response.sendRedirect("checkout-success.jsp");
	    }
	    
	
	    


}
