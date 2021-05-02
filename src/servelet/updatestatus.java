package servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBupdatestatus;

/**
 * Servlet implementation class updatestatus
 */
@WebServlet("/updatestatus")
public class updatestatus extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String fname = request.getParameter("ad1");
		String lname = request.getParameter("ty1");
		
		DBupdatestatus aa = new DBupdatestatus();
		String res = aa.insert(fname, lname);
		
//		
		if(res.equals("Inserted")) {
			System.out.println("Done!!!! You can go to sleep.....");
			response.sendRedirect("UpdateStatus.jsp");
		}
		else {
			System.out.println(res);
			System.out.println("DO NOT SLEEP!!");
		}
	}

	
	}

