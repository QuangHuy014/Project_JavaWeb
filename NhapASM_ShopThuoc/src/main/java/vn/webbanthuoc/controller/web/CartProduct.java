package vn.webbanthuoc.controller.web;

import java.io.IOException;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vn.webbanthuoc.dao.ThuocDao;
import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuoc.util.JpaUtil;


/**
 * Servlet implementation class CartCellPhoneServletSolution1
 */
@WebServlet({ "/PhoneList1", "/addToCart1", "/cartPlus","/cartMinus"})
public class CartProduct extends HttpServlet {
	Map<String, Thuoc> cartThuoc = new HashMap<String, Thuoc>();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ThuocDao thuocDao = new ThuocDao();
			String idThuoc = req.getParameter("id");
			System.out.println("thuocId: " + idThuoc);
			
			String action=req.getParameter("action");
			if (action != null && action.equals("minus")) {
			    // Xử lý giảm số lượng sản phẩm
			    if (cartThuoc.containsKey(idThuoc) && cartThuoc.get(idThuoc) != null) {
			        // Kiểm tra nếu sản phẩm tồn tại trong giỏ hàng và số lượng > 1, thì giảm số lượng đi 1
			        if (cartThuoc.get(idThuoc).getQuantity() > 1) {
			            cartThuoc.get(idThuoc).setQuantity(cartThuoc.get(idThuoc).getQuantity() - 1);
			        } else {
			            // Nếu số lượng sản phẩm là 1, thì loại bỏ sản phẩm khỏi giỏ hàng
			            cartThuoc.remove(idThuoc);
			        }
			    }
			}else {
				if (cartThuoc.containsKey(idThuoc) && cartThuoc.get(idThuoc) != null) {
				    cartThuoc.get(idThuoc).setQuantity(cartThuoc.get(idThuoc).getQuantity() + 1);
			
				} else {
				    // Nếu sản phẩm chưa tồn tại trong giỏ hàng, thêm sản phẩm vào giỏ hàng với số lượng là 1
				    EntityManager em = JpaUtil.getEntityManager();
				    Thuoc thuoc = em.find(Thuoc.class, idThuoc);
				    if (thuoc != null) {
				        cartThuoc.put(idThuoc, thuoc);
				    }
				}
			}
				
		
		req.getSession().setAttribute("cartThuocss", cartThuoc);
		req.setAttribute("countCellPhones", cartThuoc.size());
		req.setAttribute("cartProductsList", thuocDao.findAll());
		if(req.getRequestURI().contains("PhoneList1") || req.getRequestURI().contains("addToCart1"))
			req.getRequestDispatcher("/client/addToCart").forward(req, resp);
		else
			req.getRequestDispatcher("/client/addToCart").forward(req, resp);
		   String uric=req.getRequestURI();
		if(uric.equals("removeFromCart")) {
			removeProductFromCart(idThuoc);
		}
	}
	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String productId = request.getParameter("id");
	        // Xử lý logic xóa sản phẩm ở đây, sau đó cập nhật giỏ hàng
	        // Ví dụ: cartThuocss.remove(productId);
	        // Sau đó, chuyển hướng hoặc trả về phản hồi xác nhận thành công
	    }

	   private void removeProductFromCart(String idThuoc) {
	        Thuoc thuoc = cartThuoc.get(idThuoc);
	        if (thuoc != null) {
	            if (thuoc.getQuantity() > 1) {
	                thuoc.setQuantity(thuoc.getQuantity() - 1);
	            } else {
	                cartThuoc.remove(idThuoc);
	            }
	        }
	   }
}
