package com.admin.servlet;

import java.io.IOException;

import com.dao.SpecialistDao;
import com.db.DBConnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/addSpecialist")
public class addSpecialist extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String speciName =req.getParameter("specName");
		
		SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
		boolean f = dao.addSpecialist(speciName);
		
		HttpSession session = req.getSession();		
		if(f) {
			
			session.setAttribute("sucMsg", "Specialist add");
			
			resp.sendRedirect("admin/index.jsp");
		}
		else {
			
        session.setAttribute("errorMsg", "Something Wrong on Server ");
			
			resp.sendRedirect("admin/index.jsp");
		}
		
		
	}
}
