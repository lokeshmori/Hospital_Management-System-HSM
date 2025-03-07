package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection conn = null ;
	
	public static Connection getConn() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_1","root","W@2915djkq#");
			
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return conn ;
		
	}
	
	
}
