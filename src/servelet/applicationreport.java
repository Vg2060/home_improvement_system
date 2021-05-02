package servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBapplicationreport;

@WebServlet("/applicationreport")
public class applicationreport extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		 
		int id= Integer.parseInt(request.getParameter("fname"));
		//String stat=request.getParameter("ty1");
		//System.out.println(id+" "+stat);
	    DBapplicationreport aa = new DBapplicationreport();
	    String res  = aa.insert(id);
		if(res.equals("Inserted")) {
			System.out.println("Done!!!! You can go to sleep.....");
			response.sendRedirect("ApllicationReport.jsp");
		}
		else {
			System.out.println(res);
			System.out.println("DO NOT SLEEP!!");
		}
		
	}

	

}
