package com.doctor.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/docLogout")
public class DoctorLogout extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		          HttpSession session = req.getSession() ;
		          System.out.println("loki");
		          
		           session.removeAttribute("docObj");
		           
		           session.setAttribute("sucMsg" ,"Doctor Logout Successfully");
		           
		           resp.sendRedirect("doctor.jsp");
		
		        
	}

}
