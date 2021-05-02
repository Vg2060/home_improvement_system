package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBfeedback {

	public String insert(int c1,String q1,String q2,String q3,String q4,String service) {
		
		 try{

			 Connection con= DBConnect.getConnect();
				String query="insert into feedback(Cus_id,q1,q2,q3,q4,service) values(?,?,?,?,?,?)";
			    PreparedStatement pstmt=con.prepareStatement(query);
			    pstmt.setInt(1,c1);
			    pstmt.setString(2,q1);
			    pstmt.setString(3,q2);
			    pstmt.setString(4,q3);
			    pstmt.setString(5,q4);
			    pstmt.setString(6,service);

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
