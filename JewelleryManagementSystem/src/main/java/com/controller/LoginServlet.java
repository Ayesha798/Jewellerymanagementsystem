package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.dao.JewelleryDAO;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password =request.getParameter("password");
		
		HttpSession session = request.getSession();
		if(email.equals("manager@jewellery.com") && password.equals("manager@jms")) {
			session.setAttribute("email", email);
			response.sendRedirect("manager.jsp");
		}
		else {
			JewelleryDAO dao = new JewelleryDAO();
			try {
				boolean status = dao.checkLogin(email,password);
				if(status) {
					session.setAttribute("email", email);
//					 System.out.println("Redirecting to customer.jsp");
					response.sendRedirect("customer.jsp");
				}
				else {
					request.setAttribute("status", "Incorrect email/password");
					RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
					dispatcher.forward(request, response);
				}
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
