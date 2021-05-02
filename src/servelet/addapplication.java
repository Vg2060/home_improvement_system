package servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import db.DBaddapplication;

/**
 * Servlet implementation class addapplication
 */
@WebServlet("/addapplication")
public class addapplication extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			HttpSession session=request.getSession();
			int cus1=(Integer)session.getAttribute("idcustomer");

			String type = request.getParameter("ty1");
			String pro = request.getParameter("cp1");
			String ad = request.getParameter("ad1");
			String sta="onprocess";
			
			DBaddapplication aa = new DBaddapplication();
			String res = aa.insert(cus1,type,pro,ad,sta);
			
//			
			if(res.equals("Inserted")) {
				System.out.println("Done!!!! You can go to sleep.....");
				response.sendRedirect("AddApplication.jsp");
			}
			else {
				System.out.println(res);
				System.out.println("DO NOT SLEEP!!");
			}
	}
}
