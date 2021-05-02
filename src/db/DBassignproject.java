package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBassignproject {

	public String insert(int fname,int lname) {
		
		 try{

           
			 Connection con= DBConnect.getConnect();
				String query="update add_employee set application_id=?,status=? where employee_id=?";
			    PreparedStatement pstmt=con.prepareStatement(query);
			    pstmt.setInt(1,fname);
			    pstmt.setString(2,"assigned");
			    pstmt.setInt(3,lname);
			    pstmt.executeUpdate();
			    con.setAutoCommit(true);
				String query1="insert into status_employee(Employee_id,Application_id,Status,Bill_status)values(?,?,?,?)";
			    PreparedStatement pstmt1=con.prepareStatement(query1);
			    pstmt1.setInt(1,lname);
			    pstmt1.setInt(2,fname);
			    pstmt1.setString(3,"assigned");
			    pstmt1.setString(4,"onprocess");
			    pstmt1.executeUpdate();
			    con.setAutoCommit(true);
			    String query2="update add_application set Status=? where Application_id=?";
			    PreparedStatement pstmt2=con.prepareStatement(query2);
			    pstmt2.setString(1,"assigned");
			    pstmt2.setInt(2,fname);
			    pstmt2.executeUpdate();
			    con.setAutoCommit(true);
			    con.close();
           return "Inserted";
   }
   catch(Exception ex){
        return  "Exception------------------------>  "+ex;
   }
	}

}
