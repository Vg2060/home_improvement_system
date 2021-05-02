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
  border: 1px solid black;
  
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
.flname{
               margin-left:450px;
               margin-top:30px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
              
             .firstname{
                        position:relative;
                        left:610px;
                        top:-47px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                       }
                       .eid{
	              margin-left:528px;
	              margin-top:-20px;
				  width:300px;
				  color:white;
				  font-size:22px;
				  font-weight:700;
               }
       #tyl{
                        position:relative;
                        left:610px;
                        top:-42px;
                        line-height:30px;
                        padding:0 22px;
                        border-radius:3px;
                        padding:0 22px;
                        font-size:16px;
                        
                       } 
button{
		                 background-color:#623412;
		                 display:block;
		                 line-height:10px;
		                 margin:2px 0px 0px 2px;
		                 text-align:center;
		                 border-radius:12px;
		                 margin-left:550px;
		                 margin-bottom:50px;
		                 padding:10px 100px;
		                 outline:none;
		                 color:white;
		                 cursor:pointer;
		                 transition:0.25px;
                         
		               }     
		        
		         button:hover{
		                       background-color:#362204;
		                     }      
		                    
</style>
<%
     try{
         Connection con= DBConnect.getConnect();
         String sql = "select * from add_application where Status!=?";
         PreparedStatement pstmt=con.prepareStatement(sql);
         pstmt.setString(1,"completed");
         rs=pstmt.executeQuery();
         }
     catch(SQLException e)
     {
         System.out.println("Error!!!!!!" + e);
     }
    %>
</head>
<body>

<div class="name"><h2>Application Report</h2></div>
<form>
<table>
  <tr>
    <th>Application ID</th>
    <th>Customer ID</th>
    <th>Category</th>
    <th>Problem</th>
    <th>Status</th>
  </tr>
  <%while(rs.next()) 
  {%>
  <tr>
    <td name="gender"  value="<%=rs.getString(1)%>"><%=rs.getString(1)%></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getString(6) %></td>
  </tr>
  <%
  } %>
</table>
</form>
</body>
</html>