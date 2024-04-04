package vn.webbanthuoc.controller.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import vn.webbanthuoc.entity.Thuoc;
import vn.webbanthuocdao.dao.implement.thuocDao;

/**
 * Servlet implementation class Cart_Product
 */
@WebServlet("/Cart_Product")
public class Cart_Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cart_Product() {
        super();
        // TODO Auto-generated constructor stub
    }
	Map<String, Thuoc> cart_Product = new HashMap<String, Thuoc>();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		thuocDao thuocDao = new thuocDao();

		if (req.getMethod().equals("POST")) {
			String product_Id = req.getParameter("productId");
			System.out.println("productId: " + product_Id);
			if (cart_Product.containsKey(product_Id) && cart_Product.get(product_Id) != null) {
                // Nếu đã tồn tại, tăng số lần xuất hiện lên 1
				System.out.println(cart_Product.get(product_Id));
				
				cart_Product.get(product_Id).setQuantity( cart_Product.get(product_Id).getQuantity() + 1);
				
            } else {
                // Nếu chưa tồn tại, thêm từ vào Map với số lần xuất hiện là 1
            	cart_Product.put(product_Id, thuocDao.findById(product_Id));
            }
			
			
		}else
		{
			String uri = req.getRequestURI();
			String productId = req.getParameter("id");
			if(uri.contains("cartPlus")) {
				cart_Product.get(productId).setQuantity( cart_Product.get(productId).getQuantity() + 1);
			}else if(uri.contains("cartMinus")) {
				if(cart_Product.get(productId).getQuantity() == 1) {
					cart_Product.remove(productId);
				}else
					cart_Product.get(productId).setQuantity( cart_Product.get(productId).getQuantity() - 1);

			}
			
			
		}
		req.getSession().setAttribute("cartProduct", cart_Product);
		req.setAttribute("countProduct", cart_Product.size());
		req.setAttribute("productsList", thuocDao.findAll());
		if(req.getRequestURI().contains("productList1") || req.getRequestURI().contains("addToCart1"))
			req.getRequestDispatcher("/homeController").forward(req, resp);
		else
			req.getRequestDispatcher("/cartPhoneView1").forward(req, resp);
	}

}
