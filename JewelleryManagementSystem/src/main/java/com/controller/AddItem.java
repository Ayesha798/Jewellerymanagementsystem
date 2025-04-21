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
import com.model.Jewellery;
@WebServlet("/add")
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			Jewellery jewellery = new Jewellery();
        
        try {
            jewellery.setId(Integer.parseInt(request.getParameter("id")));
            jewellery.setName(request.getParameter("name"));
            jewellery.setType(request.getParameter("type"));
            jewellery.setPrice(Double.parseDouble(request.getParameter("price")));
            jewellery.setDescription(request.getParameter("description"));

            JewelleryDAO dao = new JewelleryDAO();
            boolean status = dao.add(jewellery);

            if(status) {
                request.setAttribute("status", "Item Added Successfully!");
            } else {
                request.setAttribute("status", "Adding Item Failed");
            }

        } catch (NumberFormatException e) {
            request.setAttribute("status", "Invalid input format.");
            e.printStackTrace();
        } catch (Exception e) {
            request.setAttribute("status", "An error occurred: " + e.getMessage());
            e.printStackTrace();
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("additems.jsp");
        dispatcher.forward(request, response);
    }

	
	}
