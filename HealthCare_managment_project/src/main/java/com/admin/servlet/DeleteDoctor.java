package com.admin.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/delete_doctor")
public class DeleteDoctor extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		                  
		            try {
		            	
		            	
		            	int id =Integer.parseInt(req.getParameter("id").trim());
						
						
							
						DoctorDao dao = new DoctorDao(DBConnect.getConn());
						
						HttpSession session =req.getSession();
						
						if( dao.deleteDoctor(id)) {
							 session.setAttribute("sucMsg", "Doctor Delete Sucessfuly");
							 resp.sendRedirect("admin/view_doctor.jsp");
							 
						}else {
							session.setAttribute("errorMsg", " Sothing wrong on server...");
							resp.sendRedirect("admin/view_doctor.jsp");
							
						}
						
						
						
						
					} catch (Exception e) {
						e.printStackTrace();
					}
	
	}

}
