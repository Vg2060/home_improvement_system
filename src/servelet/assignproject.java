package servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBassignproject;




@WebServlet("/assignproject")
public class assignproject extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		int fname =Integer.parseInt( request.getParameter("appid1"));
		int lname = Integer.parseInt(request.getParameter("category1"));
		
		DBassignproject aa = new DBassignproject();
		String res = aa.insert(fname, lname);	
		if(res.equals("Inserted")) {
			System.out.println("Done!!!! You can go to sleep.....");
			response.sendRedirect("AssignProject.jsp");
		}
		else {
			System.out.println(res);
			System.out.println("DO NOT SLEEP!!");
		}
	}

	

}
