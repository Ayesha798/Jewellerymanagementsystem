package com.controller;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.JewelleryDAO;
import com.model.Jewellery;
@WebServlet("/find")
public class Find extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JewelleryDAO dao = new JewelleryDAO();
		try {
			List<Jewellery> jewelleryList = dao.findAll();
			request.setAttribute("jewelleryList", jewelleryList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewitems.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		}
	}

