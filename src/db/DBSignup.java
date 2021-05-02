package db;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBSignup {

	public String insert(String fname,String lname,String gender,String email,String ac,String ph_no,String address,String user_name,String pass) {
		
		 try{

           
			 Connection con= DBConnect.getConnect();
				String query="insert into add_cus(first_name,last_name,gender,email,area_code,phone_no,address,user_name,password,conform_password) values(?,?,?,?,?,?,?,?,?,?)";
			    PreparedStatement pstmt=con.prepareStatement(query);

			    pstmt.setString(1,fname);
			    pstmt.setString(2,lname);
			    pstmt.setString(3,gender);
			    pstmt.setString(4,email);
			    pstmt.setString(5,ac);
			    pstmt.setString(6,ph_no);
			    pstmt.setString(7,address);
			    pstmt.setString(8,user_name);
			    pstmt.setString(9, pass);
			    pstmt.setString(10, pass);
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
