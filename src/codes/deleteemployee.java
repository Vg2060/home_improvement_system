package codes;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import db.DBConnect;
import java.util.ArrayList;
@WebServlet("/deleteemployee")
public class deleteemployee extends HttpServlet
{
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
    	//String ss=(String) request.getAttribute("1.name");
        int name1=Integer.parseInt(request.getParameter("age"));
        System.out.println(name1);
        try{
        Connection con=DBConnect.getConnect();
        Statement statement = con.createStatement();
        String sql = "delete from add_employee where employee_id=?";
        PreparedStatement st=con.prepareStatement(sql);
        st.setInt(1, name1);
        st.executeUpdate();
        con.close();
        response.sendRedirect("RemoveEmployeeid.jsp");
        }
        catch(Exception e)
        {
        	System.out.println(e.toString());
        }
    }
}
