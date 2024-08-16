package com.doctor.servlet;

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

@WebServlet("/loginDoctor")
public class DoctorLogin extends HttpServlet {
	
	         
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

                 String email = req.getParameter("email");
                 String pws = req.getParameter("password") ;
                 
                 HttpSession session = req.getSession() ;
                   DoctorDao  dao = new DoctorDao(DBConnect.getConn());
                   
                  
                   Doctor d = dao.loginDoctor(email, pws);
                   
                   
                   
                   
                   
                                if( d != null) {
                	   
                	          
                	        	       session.setAttribute("docObj",  d);
                	        	       
                	        	       resp.sendRedirect("doctor/index.jsp");
                	        	       
                	        	       //System.out.println("loki");
                	        	       
                	          } else {
                	        	  

                	        	  
                	        	  session.setAttribute("errorMsg", " invalid email & password ");
           	        	       
           	        	       resp.sendRedirect("doctor.jsp");
           	        	       
           	        	    
                	        
                	        	   
                	   
                	     
                   
                	          }
                   
                   
                 
                 
                 
	}

}
