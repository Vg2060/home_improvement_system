package servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import db.checkAdmin;
import db.checkemployee;
import db.checkcustomer;

@WebServlet("/Login1")
public class Login1 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String role=request.getParameter("ty1");
		String user=request.getParameter("usr");
		String pass=request.getParameter("pwd");
		System.out.println(role);
		if(role.equals("admin"))
		{
			checkAdmin a=new checkAdmin();
			int id=a.check(user, pass);
			System.out.println(id);
			if(id>0)
			{ 
			HttpSession session=request.getSession();
			session.setAttribute("idadmin", id);
			response.sendRedirect("http://localhost:8082/Home_improvement_system/Dashboard2.jsp");
			}
			else
			{
				response.sendRedirect("Login.jsp");
			}
		}
		if(role.equals("employee"))
		{
			checkemployee a=new checkemployee();
			int id=a.check(user, pass);
			System.out.println(id);
			if(id>0)
			{ 
			HttpSession session=request.getSession();
			session.setAttribute("idemployee", id);
			response.sendRedirect("http://localhost:8082/Home_improvement_system/Dashboard3.jsp");
			}
			else
			{
				response.sendRedirect("Login.jsp");
			}
		}
		if(role.equals("customer"))
		{
			checkcustomer a=new checkcustomer();
			int id=a.check(user, pass);
			System.out.println(id);
			if(id>0)
			{ 
			HttpSession session=request.getSession();
			session.setAttribute("idcustomer", id);
			response.sendRedirect("http://localhost:8082/Home_improvement_system/Dashboard1.jsp");
			}
			else
			{
				response.sendRedirect("Login.jsp");
			}
		}
	}

	
}
