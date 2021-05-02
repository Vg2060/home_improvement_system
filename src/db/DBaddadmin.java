package db;
import java.sql.Connection;
import java.sql.PreparedStatement;
public class DBaddadmin {

	public String insert(String fname,String lname,String gender,String age,String dob,int ac,String ph_no,String email,String user_name,String pass) {
		
		 try{

            
			 Connection con= DBConnect.getConnect();
				String query="insert into add_admin(first_name,last_name,gender,age,dob,area_code,phone_no,email,user_name,password) values(?,?,?,?,?,?,?,?,?,?)";
			    PreparedStatement pstmt=con.prepareStatement(query);

			    pstmt.setString(1,fname);
			    pstmt.setString(2,lname);
			    pstmt.setString(3,gender);
			    pstmt.setString(4,age);
			    pstmt.setString(5,dob);
			    pstmt.setInt(6,ac);
			    pstmt.setString(7,ph_no);
			    pstmt.setString(8,email);
			    pstmt.setString(9,user_name);
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
