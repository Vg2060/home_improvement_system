package codes;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import db.DBConnect;

@WebServlet("/DBinsertbill")
public class DBinsertbill extends HttpServlet {
	
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			String id1=request.getParameter("fname");
			String d1 = request.getParameter("des1");
			String q1 = request.getParameter("qty1");
			String a1 = request.getParameter("amt1");
			String d2 = request.getParameter("des2");
			String q2 = request.getParameter("qty2");
			String a2 = request.getParameter("amt2");
			String d3 = request.getParameter("des3");
			String q3 = request.getParameter("qty3");
			String a3 = request.getParameter("amt3");
			int aa1=Integer.parseInt(a1);
			int aa2=Integer.parseInt(a2);
			int aa3=Integer.parseInt(a3);
			int tot=aa1+aa2+aa3+550;
			
			try{
			    Connection con = DBConnect.getConnect();
			    String query="insert into update_bill(App_id,description1,quantity1,amount1,description2,quantity2,amount2,description3,quantity3,amount3,total)values(?,?,?,?,?,?,?,?,?,?,?)";
         	   PreparedStatement pstmt=con.prepareStatement(query);
               pstmt.setString(1,id1);
               pstmt.setString(2,d1);
               pstmt.setString(3,q1);
               pstmt.setInt(4,aa1);
               pstmt.setString(5,d2);
               pstmt.setString(6,q2);
               pstmt.setInt(7,aa2);
               pstmt.setString(8,d3);
               pstmt.setString(9,q3);
               pstmt.setInt(10,aa3);
               pstmt.setInt(11,tot);
               pstmt.executeUpdate();
               con.setAutoCommit(true);
               String query1="update add_application set Bill_status=? where Application_id=?";
         	   PreparedStatement pstmt1=con.prepareStatement(query1);
         	   pstmt1.setString(1,"completed");
               pstmt1.setString(2,id1);
               pstmt1.executeUpdate();
               String query2="update status_employee set Bill_status=? where Application_id=?";
         	   PreparedStatement pstmt2=con.prepareStatement(query2);
         	   pstmt2.setString(1,"Sent");
               pstmt2.setString(2,id1);
               pstmt2.executeUpdate();
               con.close();
               
			
			  }
			catch(Exception e)
			{
				System.out.println(e.toString());
			}
			response.sendRedirect("updateBill.jsp");
			
	}

}