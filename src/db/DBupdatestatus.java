package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBupdatestatus {

	public String insert(String emp,String per) {
		
		 try{
                int emp1=Integer.parseInt(emp);
			    Connection con= DBConnect.getConnect();
				String query="update add_employee set percentage=? where application_id=?";
			    PreparedStatement pstmt=con.prepareStatement(query);
			    pstmt.setString(1,per);
			    pstmt.setInt(2,emp1);
			    pstmt.executeUpdate();
			    con.setAutoCommit(true);
			    con.close();
			    return "Inserted";
 }
 catch(Exception ex){
      return  "Exception------------------------>  "+ex;
 }

}
}
