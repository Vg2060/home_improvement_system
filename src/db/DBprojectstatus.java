package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBprojectstatus {

	public String insert(int c1) {
		
		 try{

			    Connection con= DBConnect.getConnect();
				String query="update add_employee set application_id=?,status=?,percentage=? where employee_id=?";
			    PreparedStatement pstmt=con.prepareStatement(query);
			    pstmt.setInt(4,c1);
			    pstmt.setInt(1,0);
			    pstmt.setString(2,"completed");
			    pstmt.setString(3,"0");
                pstmt.executeUpdate();
			    con.setAutoCommit(true);
			    Connection con1= DBConnect.getConnect();
			    String query1="update status_employee set Status=? where employee_id=?";
			    System.out.println("");
			    PreparedStatement pstmt1=con1.prepareStatement(query1);
			    pstmt1.setString(1,"completed");
			    pstmt1.setInt(2,c1);
			    pstmt1.executeUpdate();
			    con1.setAutoCommit(true);
			    con1.close();
			    con.close();
			    return "Inserted";
 }
 catch(Exception ex){
      return  "Exception------------------------>  "+ex;
 }

}
}
