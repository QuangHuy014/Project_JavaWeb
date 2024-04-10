package vn.webbanthuoc.controller.web;

import java.io.IOException;

import java.lang.reflect.InvocationTargetException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vn.webbanthuoc.dao.KhachHangDao;
import vn.webbanthuoc.dao.NhanVienDao;
import vn.webbanthuoc.entity.KhachHang;
import vn.webbanthuoc.entity.NhanVien;

@WebServlet({ "/quenMK", "/xacThuc" })
public class quenMKController extends HttpServlet {
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
		case "/quenMK":
			try {
				quenMK(request, response);
			} catch (IllegalAccessException | InvocationTargetException | MessagingException e) {
				e.printStackTrace();
			}
			break;
		case "/xacThuc":
			try {
				xacthuc(request, response);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
			break;
		}
	}

	private void quenMK(HttpServletRequest request, HttpServletResponse response) throws IllegalAccessException,
			InvocationTargetException, ServletException, IOException, MessagingException {
		if (request.getMethod().equalsIgnoreCase("POST")) {
			// Kiểm tra nếu nút "Tiếp tục" được nhấn
			if (request.getParameter("buttonquenmk") != null) {
				String username = "dnhan.a7.c3tqcap@gmail.com"; // Địa chỉ email chung
				String password = "r m a l b q e b u f w v f u c l";
				String to = request.getParameter("to"); // địa chỉ người nhận

				String tendangnhap = request.getParameter("tendangnhap");
				request.setAttribute("tendangnhap", tendangnhap); // Lưu tendangnhap vào request attribute

				// Tạo đối tượng KhachHangDao và NhanVienDao
				KhachHang khachHang = khDao.findById(tendangnhap);
				NhanVien nhanVien = nvDao.findById(tendangnhap);

				if (khachHang != null || nhanVien != null) {
					// Lưu tên đăng nhập vào session
					HttpSession session = request.getSession();
					session.setAttribute("tendangnhap", tendangnhap);

					// Tạo mã xác thực
					String maXacThuc = generateRandomString(6); // Tạo mã xác thực 6 ký tự

					// Lưu mã xác thực vào session
					session.setAttribute("maXacThuc", maXacThuc);

					// Gửi email chứa mã xác thực đến địa chỉ người nhận
					sendEmail(username, password, to, maXacThuc); // Gửi email đến địa chỉ người nhận

					// Forward đến trang xác thực
					request.getRequestDispatcher("/views/web/xacthuc.jsp").forward(request, response);
				} else {
					// Nếu không tìm thấy người dùng
					request.setAttribute("errorMessage", "Tên đăng nhập không tồn tại.");
					request.getRequestDispatcher("/views/web/quenmk.jsp").forward(request, response);
				}
			}
		} else {
			// Nếu không phải là method POST
			request.getRequestDispatcher("/views/web/quenmk.jsp").forward(request, response);
		}
	}

	private void sendEmail(String username, String password, String to, String maXacThuc) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		// Tạo phiên làm việc để gửi email
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {
			// Tạo tin nhắn email
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username)); // Địa chỉ người gửi
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to)); // Địa chỉ người nhận
			message.setSubject("Mã Xác Thực Quên Mật Khẩu"); // Tiêu đề
			message.setText("Chào bạn,\n\nĐây là mã xác thực để thay đổi mật khẩu của bạn:\n" + maXacThuc); // Nội dung

			// Gửi email
			Transport.send(message);

			// Gửi thành công
			System.out.println("Email sent successfully.");
		} catch (MessagingException e) {
			e.printStackTrace();
			System.out.println("Failed to send email. Error: " + e.getMessage());
		}
	}

	private String generateRandomString(int length) {
		String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		StringBuilder sb = new StringBuilder(length);
		Random random = new Random();
		for (int i = 0; i < length; i++) {
			sb.append(characters.charAt(random.nextInt(characters.length())));
		}
		return sb.toString();
	}

	private void xacthuc(HttpServletRequest request, HttpServletResponse response)
			throws IllegalAccessException, InvocationTargetException, ServletException, IOException {
		if (request.getMethod().equalsIgnoreCase("POST")) {
			if (request.getParameter("buttonxacthuc") != null) {
				String maXacThuc = request.getParameter("maXacThuc");
				HttpSession session = request.getSession();
				String sessionMaXacThuc = (String) session.getAttribute("maXacThuc");

				if (sessionMaXacThuc != null && sessionMaXacThuc.equals(maXacThuc)) {
					String matKhauMoi = request.getParameter("matKhauMoi");
					String tendangnhap = (String) session.getAttribute("tendangnhap"); // Lấy tendangnhap từ session

					if (isValidPassword(matKhauMoi)) {
						// Xác thực thành công, đổi mật khẩu cho khách hàng hoặc nhân viên
						KhachHang khachHang = khDao.findById(tendangnhap); // Sử dụng tendangnhap
						NhanVien nhanVien = nvDao.findById(tendangnhap); // Sử dụng tendangnhap
						boolean success = false;

						if (khachHang != null) {
							khachHang.setMatkhau(matKhauMoi);
							try {
								khDao.update(khachHang);
								success = true;
								request.setAttribute("success", "Đổi mật khẩu Khách Hàng thành công.");
							} catch (Exception e) {
								request.setAttribute("error",
										"Lỗi khi cập nhật mật khẩu Khách Hàng: " + e.getMessage());
							}
						} else if (nhanVien != null) {
							nhanVien.setMatkhau(matKhauMoi);
							try {
								nvDao.update(nhanVien);
								success = true;
								request.setAttribute("success", "Đổi mật khẩu Nhân Viên thành công.");
							} catch (Exception e) {
								request.setAttribute("error", "Lỗi khi cập nhật mật khẩu Nhân Viên: " + e.getMessage());
							}
						} else {
							request.setAttribute("error", "Không tìm thấy thông tin Khách Hàng hoặc Nhân Viên.");
						}

						// Cập nhật mật khẩu xong, hãy xóa mã xác thực khỏi session
						session.removeAttribute("maXacThuc");

						// Chuyển hướng đến trang đăng nhập sau khi cập nhật thành công
						response.sendRedirect(request.getContextPath() + "/Login");
						return;
					} else {
						request.setAttribute("error", "Mật khẩu không hợp lệ. Vui lòng kiểm tra lại.");
					}
				} else {
					request.setAttribute("error",
							"Mã xác thực không đúng hoặc đã hết hạn. Vui lòng kiểm tra lại hoặc yêu cầu lại mã.");
				}
			}
		}
		request.getRequestDispatcher("/views/web/xacthuc.jsp").forward(request, response);
	}

	// Phương thức kiểm tra tính hợp lệ của mật khẩu
	private boolean isValidPassword(String password) {
		// Thực hiện kiểm tra độ dài, ký tự hợp lệ, v.v.
		// Trong ví dụ này, kiểm tra mật khẩu ít nhất 6 ký tự
		boolean isValid = password != null && password.length() >= 6;
		if (!isValid) {
			System.out.println("Mật khẩu không hợp lệ. Mật khẩu phải có ít nhất 6 ký tự.");
		}
		return isValid;
	}

}
