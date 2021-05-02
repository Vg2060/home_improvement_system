<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String customer_id=request.getParameter("cid1");
String Category=request.getParameter("ty1");
String problem=request.getParameter("cp1");
String address=request.getParameter("ad1");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/home_improvement", "root", "");
System.out.println("Data is successfully inserted!");
Statement st=conn.createStatement();

String qry="insert into add_application values("+null+",'"+customer_id+"','"+Category+"','"+problem+"','"+address+"')";
st.executeUpdate(qry);

}
catch (ClassNotFoundException e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>