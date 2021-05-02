package db;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Connection;

public class checkAdmin {

	public int check(String user,String pass)
	{
		try{
			 Connection con= (Connection) DBConnect.getConnect();
			 String sql="Select * from add_admin where user_name=? and password=?";
			 PreparedStatement pstmt=con.prepareStatement(sql);
			 pstmt.setString(1, user);
			 pstmt.setString(2, pass);
			 ResultSet rs=pstmt.executeQuery();
			 if(rs.next())
			 {
				 return rs.getInt(1);
			 }
			 else
			 {
				 return 0;
			 }
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString());
		}
		return 0;
	}
	

}
