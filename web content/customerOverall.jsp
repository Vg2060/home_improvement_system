<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnect"%>
<% ResultSet rs = null; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('salvatores.jpg');
background-repeat:no-repeat;
background-attachment:fixed
background-position-center;
background-size:cover;
margin-top:40px;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%
  
}
 .name{
 
    width:1000px;
    background-color:rgb(0,0,0,0.69);
    color:#FFFFFF;
    padding:10px 0px 10px 0px;
    text-align:center;
    border-radius:0px 0px 0px 0px;
    width:100%
   
}

td, th {
   width:1000px;
    background-color:rgb(0,0,0,0.5);
    color:#FFFFFF;
    padding:10px 0px 10px 0px;
    text-align:center;
    border-radius:0px 0px 0px 0px;
}


</style>
<%
  if(session.getAttribute("idcustomer")==null)
 {
  response.sendRedirect("MainDashboard.jsp");
  }

   int c=(Integer)session.getAttribute("idcustomer");
     try{
         Connection con= DBConnect.getConnect();
         String sql = "select * from add_application where customer_id=? and Status=?";
         PreparedStatement pstmt=con.prepareStatement(sql);
         pstmt.setInt(1,c);
         pstmt.setString(2,"completed");
         rs=pstmt.executeQuery();
         }
     catch(SQLException e)
     {
         System.out.println("Error!!!!!!" + e);
     }
    %>
</head>
<body>

<div class="name"><h2>Overall Status</h2></div>

<table>
  <tr>
    <th>Application ID</th>
    <th>Category</th>
    <th>Problem</th>
    <th>Status</th>
    <th>Feedback</th>
    <th>Bill</th>
  </tr>
  <%while(rs.next()) 
  {%>
  <tr>
    <td><%=rs.getString(1)%></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(6) %></td>
    <td><%=rs.getString(6) %></td>
    <td><%=rs.getString(7) %></td>
  </tr>
  <%
  } %>
  
</table>

</body>
</html>