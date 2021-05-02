package servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DBaddemployee;

/**
 * Servlet implementation class addemployee
 */
@WebServlet("/addemployee")
public class addemployee extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		String dob = request.getParameter("dob");
		String email = request.getParameter("email");
		String area_code = request.getParameter("area_code");
		String ph_no = request.getParameter("phone");
		String fieldofwork=request.getParameter("fow");
		String user_name = request.getParameter("usr");
		String pass = request.getParameter("pwd");
		int ac = Integer.parseInt(area_code);
		
		DBaddemployee aa = new DBaddemployee();
		String res = aa.insert(fname,lname,gender,age,dob,email,ac,ph_no,fieldofwork,user_name,pass);
		
//		
		if(res.equals("Inserted")) {
			System.out.println("Done!!!! You can go to sleep.....");
			response.sendRedirect("AddEmployee.jsp");
		}
		else {
			System.out.println(res);
			System.out.println("DO NOT SLEEP!!");
		}
	}

}
