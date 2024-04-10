package vn.webbanthuoc.controller.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/cartPhoneView1","/checkOut"})
public class CartSellProduct extends HttpServlet{
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String uri = req.getRequestURI();
	if (uri.contains("cartPhoneView")) {
		req.getRequestDispatcher("/views/web/cart.jsp").forward(req, resp);
	}
	else if (uri.contains("checkOut")){
		req.getRequestDispatcher("/views/phone/checkOut.jsp").forward(req, resp);
	}
}
}
