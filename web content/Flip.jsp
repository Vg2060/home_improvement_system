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
background-attachment:fixed;
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
* {
  box-sizing: border-box;
}
.card{
background-image:url('image111.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
background-position-center;
background-size:cover;
margin-top:40px;
}
/* Float four columns side by side */
.column {
  float: left;
  width: 50%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.6);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}       
.flip-card {
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #2980b9;
  color: white;
  transform: rotateY(180deg);
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

  <%
  int i=0;
  while(rs.next()) 
  {%>
 <div class="column">
    <div class="card">
      <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="image112.png" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>ID:<%=rs.getString(1)%></h1> 
      <h1><%=rs.getString(2)%></h1> 
      <p><%=rs.getString(3)%></p> 
      <p><%=rs.getString(4)%></p>
      <p><%=rs.getString(6)%></p>
  </div>
</div>
</div>
</div>
</div>
  <% if(rs.next())
  {%>
  <div class="column">
    <div class="card">
      <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="image112.png" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h1>ID:<%=rs.getString(1)%></h1> 
      <h1><%=rs.getString(2)%></h1> 
      <p><%=rs.getString(3)%></p> 
      <p><%=rs.getString(4)%></p>
      <p><%=rs.getString(6)%></p>
  </div>
</div>
    </div>
  </div>
  </div>
  <%
  }%>
  <%
  } %>
</table>
</form>
</body>
</html>