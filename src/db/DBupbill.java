package db;

import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class DBupbill {

	public void insert(int ap) {
		try{
		Connection con= (Connection) DBConnect.getConnect();
		String sql1 = "update add_application set Bill_status=? where Application_id=?";
        PreparedStatement sp1= (PreparedStatement) con.prepareStatement(sql1);
        sp1.setString(1,"completed");
        sp1.setInt(2, ap);
        ResultSet rs=sp1.executeQuery();
        con.close();
		}
		catch(Exception ex)
		{
			System.out.println(ex.toString());
		}
	}

}
