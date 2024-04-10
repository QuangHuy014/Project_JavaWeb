package vn.webbanthuoc.controller.web;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminController
 */
@WebServlet({"/adminController","/caidatController","/chitietController","/hosoController","/trogiupController","/viController"})
public class adminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getServletPath();
		try {
			switch (action) {
			case "/adminController": {
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/admin.jsp");
				rd.forward(request, response);
				break;
			}
			case "/caidatController": {
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/caidat.jsp");
				rd.forward(request, response);
				break;
			}
			case "/chitietController": {
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/chitietgiaodich.jsp");
				rd.forward(request, response);
				break;
			}
			case "/hosoController": {
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/hoso.jsp");
				rd.forward(request, response);
				break;
			}
			case "/trogiupController": {
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/trogiup.jsp");
				rd.forward(request, response);
				break;
			}
			case "/viController": {
				RequestDispatcher rd = request.getRequestDispatcher("/views/web/vi.jsp");
				rd.forward(request, response);
				break;
			}
			
			default:
				throw new IllegalArgumentException("Unexpected value: " + action);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
