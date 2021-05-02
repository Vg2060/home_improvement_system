package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBaddapplication {

	public String insert(int cus1,String type,String pro,String ad,String sta) {

		 try{
                Connection con= DBConnect.getConnect();
			    String query="insert into add_application(customer_id,Category,problem,address,Status,Bill_status) values(?,?,?,?,?,?)";
			    PreparedStatement pstmt=con.prepareStatement(query);
			    pstmt.setInt(1,cus1);
			    pstmt.setString(2,type);
			    pstmt.setString(3,pro);
			    pstmt.setString(4,ad);
			    pstmt.setString(5,sta);
			    pstmt.setString(6,"onprocess");
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
