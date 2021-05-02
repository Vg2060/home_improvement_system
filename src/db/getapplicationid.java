package db;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class getapplicationid {

	public int insert(int j)
	{
		System.out.println(j);
		int app=0;
		try{
                Connection con= DBConnect.getConnect();
				String query="Select * from add_application where Application_id=?";
			    PreparedStatement pstmt=con.prepareStatement(query);
			    pstmt.setInt(1,j);
			    ResultSet rs=pstmt.executeQuery();
			    rs.next();
			    con.setAutoCommit(true);
			    app=rs.getInt(2);
			    con.close();
                return app;
  }
  catch(Exception ex){
       System.out.println(ex.toString());
  }
		return app;
}
}
