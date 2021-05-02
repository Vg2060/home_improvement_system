package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBapplicationreport {
	public String insert(int emp)
	{
		try{
	Connection con1=DBConnect.getConnect();
	String query1="select * from add_employee where employee_id=?";
	PreparedStatement pstmt1=con1.prepareStatement(query1);
	pstmt1.setInt(1,emp);
	ResultSet rs=pstmt1.executeQuery();
    rs.next();
    int id=rs.getInt(13);
	Connection con= DBConnect.getConnect();
	String query="UPDATE add_application SET Status=?  WHERE application_id=?;";
    PreparedStatement pstmt=con.prepareStatement(query);

    pstmt.setString(1,"completed");
    pstmt.setInt(2,id);
    pstmt.executeUpdate();
    con.setAutoCommit(true);
    con.close();
    con1.close();
return "Inserted";
		}
		catch(Exception e)
		{
			return "Exception----->"+e.toString();
		}
	}
}
