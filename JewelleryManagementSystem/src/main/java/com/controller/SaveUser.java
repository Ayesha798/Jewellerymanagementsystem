package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.JewelleryDAO;
import com.model.Customer;
@WebServlet("/saveuser")
public class SaveUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer customer = new Customer();
		customer.setName(request.getParameter("name"));
		customer.setEmail(request.getParameter("email"));
		customer.setPassword(request.getParameter("password"));
		customer.setMobile(request.getParameter("mobile"));
		customer.setAddress(request.getParameter("address"));
		JewelleryDAO dao = new JewelleryDAO();
		try {
			boolean status = dao.save(customer);
			if(status) {
				dao.commit();
				request.setAttribute("status", "Registered Successfully.....");
			}
			else {
				dao.rollback();
				request.setAttribute("status", "Registration Failed.....");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
	}