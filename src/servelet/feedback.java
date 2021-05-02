package servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.DBfeedback;

/**
 * Servlet implementation class feedback
 */
@WebServlet("/feedback")
public class feedback extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session=request.getSession();
		int cus1=(Integer)session.getAttribute("idcustomer");
		
		String q1 = request.getParameter("1.feedback");
		String q2= request.getParameter("2.feedback");
		String q3 = request.getParameter("3.feedback");
		String q4 = request.getParameter("4.feedback");
		String service = request.getParameter("gender");
		
		DBfeedback aa = new DBfeedback();
		String res = aa.insert(cus1,q1,q2,q3,q4,service);
		
//		
		if(res.equals("Inserted")) {
			System.out.println("Done!!!! You can go to sleep.....");
			response.sendRedirect("Feedback.jsp");
		}
		else {
			System.out.println(res);
			System.out.println("DO NOT SLEEP!!");
		}
}
}


