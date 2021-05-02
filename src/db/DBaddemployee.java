package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBaddemployee {
	public String insert(String fname,String lname,String gender,int age,String dob,String email,int ac,String ph_no,String fieldofwork,String user_name,String pass) {
		
		 try{

			 Connection con= DBConnect.getConnect();
				String query="insert into add_employee(first_name,last_name,gender,age,dob,email,area_code,phone_no,field_of_work,user_name,password,application_id,status,percentage) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			    PreparedStatement pstmt=con.prepareStatement(query);

			    pstmt.setString(1,fname);
			    pstmt.setString(2,lname);
			    pstmt.setString(3,gender);
			    pstmt.setInt(4,age);
			    pstmt.setString(5,dob);  
			    pstmt.setString(6,email);
			    pstmt.setInt(7,ac);
			    pstmt.setString(8,ph_no);
			   
			    pstmt.setString(9, fieldofwork);
			    pstmt.setString(10,user_name);
			    pstmt.setString(11, pass);
			    pstmt.setInt(12,0);
			    pstmt.setString(13, "completed");
			    pstmt.setString(14,"0");
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
