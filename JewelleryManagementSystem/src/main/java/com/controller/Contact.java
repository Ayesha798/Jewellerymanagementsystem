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
import com.model.ContactForm;
@WebServlet("/contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			ContactForm contact = new ContactForm();
			contact.setName(request.getParameter("name"));
			contact.setEmail(request.getParameter("email"));
			contact.setMobile(request.getParameter("mobile"));
			contact.setSubject(request.getParameter("subject"));
			contact.setMessage(request.getParameter("message"));
		JewelleryDAO dao = new JewelleryDAO();
		try {
			boolean status = dao.save(contact);
			if(status) {
				dao.commit();
				request.setAttribute("status", "Submitted Successfully.....");
			}
			else {
				dao.rollback();
				request.setAttribute("status", "Submission Failed.....");
			}
			RequestDispatcher dispatcher = request.getRequestDispatcher("contact.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
	}
