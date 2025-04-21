package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.dao.JewelleryDAO;
import com.model.Jewellery;
@WebServlet("/customersearch")
public class CustomerSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idStr = request.getParameter("id");

		if (idStr == null || idStr.isEmpty()) {
			request.setAttribute("status", "Please enter a valid ID.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("customersearch.jsp");
			dispatcher.forward(request, response);
			return;
		}

		int id = Integer.parseInt(idStr);
		JewelleryDAO dao = new JewelleryDAO();

		try {
			Jewellery jewellery = dao.getJewellery(id);
			if (jewellery == null) {
				request.setAttribute("status", "Item Not Found");
				RequestDispatcher dispatcher = request.getRequestDispatcher("customersearch.jsp");
				dispatcher.forward(request, response);
			} else {
				request.setAttribute("jewellery", jewellery);
				RequestDispatcher dispatcher = request.getRequestDispatcher("viewitem.jsp");
				dispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			request.setAttribute("status", "Server Error: " + e.getMessage());
			request.getRequestDispatcher("customersearch.jsp").forward(request, response);
		}
	}
}
