package db;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnect {
	public static Connection con;
	public static Connection getConnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home_improvement","root","");
		    System.out.println("Success");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
}