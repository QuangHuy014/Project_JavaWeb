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
@WebServlet({ "/addToCart1", "/cartPlus","/cartMinus"})
public class CartProduct extends HttpServlet {
	Map<String, Thuoc> cartThuoc = new HashMap<String, Thuoc>();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ThuocDao thuocDao = new ThuocDao();

		
			String idThuoc = req.getParameter("id");
			System.out.println("thuocId: " + idThuoc);
			if (cartThuoc.containsKey(idThuoc) && cartThuoc.get(idThuoc) != null) {
                // Nếu đã tồn tại, tăng số lần xuất hiện lên 1
				System.out.println(cartThuoc.get(idThuoc));
				
				cartThuoc.get(idThuoc).setQuantity( cartThuoc.get(idThuoc).getQuantity() + 1);
				
            } else {
                EntityManager em = JpaUtil.getEntityManager();
                Thuoc thuoc=em.find(Thuoc.class, idThuoc);
                // Nếu chưa tồn tại, thêm từ vào Map với số lần xuất hiện là 1
            	cartThuoc.put(idThuoc, thuoc);
            	
            }
			
			
			String uri = req.getRequestURI();
			String thuocId = req.getParameter("id");
			if(uri.contains("cartPlus")) {
				cartThuoc.get(thuocId).setQuantity( cartThuoc.get(thuocId).getQuantity() + 1);
			}else if(uri.contains("cartMinus")) {
				if(cartThuoc.get(thuocId).getQuantity() == 1) {
					cartThuoc.remove(thuocId);
				}else
					cartThuoc.get(thuocId).setQuantity( cartThuoc.get(thuocId).getQuantity() - 1);
			}
			
				
		
		req.getSession().setAttribute("cartThuocss", cartThuoc);
		req.setAttribute("countCellPhones", cartThuoc.size());
		req.setAttribute("cartProductsList", thuocDao.findAll());
		if(req.getRequestURI().contains("PhoneList1") || req.getRequestURI().contains("addToCart1"))
			req.getRequestDispatcher("/client/addToCart").forward(req, resp);
		else
			req.getRequestDispatcher("/cartPhoneView1").forward(req, resp);
	}
}
