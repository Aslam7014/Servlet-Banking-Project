package com.jsp.Servlet_Bank;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.x.protobuf.MysqlxConnection.Close;

@WebServlet("/add")
public class AddAcc extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int accountNo = Integer.parseInt(req.getParameter("accountNo"));
		String accountName = req.getParameter("accountName");
		String address = req.getParameter("address");
		long contactNo = Long.parseLong(req.getParameter("contactNo"));

		
		
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet_bankingdb?user=root&password=root");
			
			PreparedStatement ps = conn.prepareStatement("INSERT INTO account VALUES(?,?,?,?)");
			ps.setInt(1, accountNo);
			ps.setString(2, accountName);
			ps.setString(3, address);
			ps.setLong(4, contactNo);
			
			ps.execute();
			
			resp.sendRedirect("Index.jsp");
			
			
		} catch (ClassNotFoundException e ) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		
	}

}
