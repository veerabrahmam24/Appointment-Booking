package com.appointment.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Appointment
 */
@WebServlet("/appointment")
public class Appointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String umobile = request.getParameter("mobile");
		String udate = request.getParameter("date");
		String utime = request.getParameter("time");
		String ucity = request.getParameter("city");
		String upincode = request.getParameter("pincode");
		
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/company?useSSL=false","root","Veerab@24");
			PreparedStatement pst = con.prepareStatement("insert into appointment(uname,uemail,umobile,udate,utime,ucity,upincode) values(?,?,?,?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, umobile);
			pst.setString(4, udate);
			pst.setString(5, utime);
			pst.setString(6, ucity);
			pst.setString(7, upincode);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("appointment.jsp");		
			if(rowCount > 0) {
				request.setAttribute("status", "success");
				
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();	
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}

}
