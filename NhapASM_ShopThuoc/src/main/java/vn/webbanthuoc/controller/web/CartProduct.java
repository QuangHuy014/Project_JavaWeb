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
@WebServlet({ "/PhoneList1", "/addToCart1", "/cartPlus","/cartMinus","/removeFromCart"})
public class CartProduct extends HttpServlet {
	Map<String, Thuoc> cartThuoc = new HashMap<String, Thuoc>();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    ThuocDao thuocDao = new ThuocDao();
	    String idThuoc = req.getParameter("id");
	    System.out.println("thuocId: " + idThuoc);

	    String action = req.getParameter("action");
	    if (action != null && action.equals("minus")) {
	        // Decrease the quantity of the product
	        if (cartThuoc.containsKey(idThuoc) && cartThuoc.get(idThuoc) != null) {
	            if (cartThuoc.get(idThuoc).getQuantity() > 1) {
	                cartThuoc.get(idThuoc).setQuantity(cartThuoc.get(idThuoc).getQuantity() - 1);
	            } else {	
	                cartThuoc.remove(idThuoc);
	            }
	        }
	    } else {
	        if (idThuoc != null) {
	            if (cartThuoc.containsKey(idThuoc) && cartThuoc.get(idThuoc) != null) {
	                cartThuoc.get(idThuoc).setQuantity(cartThuoc.get(idThuoc).getQuantity() + 1);
	            } else {
	                // Add the product to the cart
	                EntityManager em = JpaUtil.getEntityManager();
	                Thuoc thuoc = em.find(Thuoc.class, idThuoc);
	                if (thuoc != null) {
	                    cartThuoc.put(idThuoc, thuoc);
	                }
	            }
	        }
	    }

	    req.getSession().setAttribute("cartThuocss", cartThuoc);
	    req.setAttribute("countCellPhones", cartThuoc.size());
	    req.setAttribute("cartProductsList", thuocDao.findAll());

	    if (idThuoc == null || req.getRequestURI().contains("addToCart1")) {
	        req.getRequestDispatcher("/views/web/cart.jsp").forward(req, resp);
	    } else {
	        req.getRequestDispatcher("/views/web/cart.jsp").forward(req, resp);
	    }
	}

	   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String productId = request.getParameter("id");
	        String url=request.getRequestURI();
//			if(url.equals("removeFromCart")) {
//				removeProductFromCart(productId);
//			}
	        // Xử lý logic xóa sản phẩm ở đây, sau đó cập nhật giỏ hàng
	        // Ví dụ: cartThuocss.remove(productId);
	        // Sau đó, chuyển hướng hoặc trả về phản hồi xác nhận thành công
	    }

	   private void removeProductFromCart(String idThuoc) {
	        Thuoc thuoc = cartThuoc.get(idThuoc);
	        
	                cartThuoc.remove(idThuoc);
	            
	        
	   }
}
