package servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBSignup;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String area_code = request.getParameter("area_code");
		String ad = request.getParameter("ad");
		String ph_no = request.getParameter("phone");
		String user_name = request.getParameter("usr");
		String pass = request.getParameter("pwd");
		String cpass = request.getParameter("cpwd");
		DBSignup aa = new DBSignup();
		String res = aa.insert(fname, lname, gender, email,area_code, ph_no, ad, user_name, pass);
		
//		
		if(res.equals("Inserted")) {
			System.out.println("Done!!!! You can go to sleep.....");
			response.sendRedirect("SignUp.jsp");
		}
		else {
			System.out.println(res);
			System.out.println("DO NOT SLEEP!!");
		}
	}

}
