package servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBprojectstatus;
import db.DBapplicationreport;

@WebServlet("/projectstatus")
public class projectstatus extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		int type = Integer.parseInt(request.getParameter("fname"));
		DBapplicationreport aa=new DBapplicationreport();
		String res1=aa.insert(type);
		DBprojectstatus a=new DBprojectstatus();
		String res = a.insert(type);
		
//		
		if(res.equals("Inserted")) {
			System.out.println("Done!!!! You can go to sleep.....");
			response.sendRedirect("ProjectStstus.jsp");
		}
		else {
			System.out.println(res);
			System.out.println("DO NOT SLEEP!!");
		}
	}

	
}
