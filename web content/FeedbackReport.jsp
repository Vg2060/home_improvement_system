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
*{
  margin:0;
  padding:0;
}
body{
background-image:url('salvatores.jpg');
background-repeat:no-repeat;
background-attachment:fixed
background-position-center;
background-size:cover;
margin-top:40px;
}
.name
  {
    width:800px;
    background-color:rgb(0,0,0,0.69);
    margin:auto;
    color:#FFFFFF;
    padding:10px 0px 10px 0px;
    text-align:center;
    border-radius:15px 15px 0px 0px;
  }
  .main{
         background-color:rgb(0,0,0,.5);
         width:800px;
         margin:auto;
       }
       form
       {
         padding:10px;
       }
      
       .app{
               margin-left:50px;
               margin-top:10px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
              
                     table {
						  font-family: arial, sans-serif;
						  border-collapse: collapse;
						  margin-top:50px;
						  margin-left:50px;
						  width: 90%
                            }


					td, th {
					   width:900px;
					    background-color:rgb(0,0,0,0.5);
					    color:#FFFFFF;
					    padding:10px 0px 10px 0px;
					    text-align:center;
					    border-radius:0px 0px 0px 0px;
					}
                    		        
</style>
</head>
<body>
<%
try
{
	String c = request.getParameter("ty1");
	int cus=Integer.parseInt(c);
	Connection con= DBConnect.getConnect();
    String sql = "select * from feedback where feedback_id=?";
    PreparedStatement st=con.prepareStatement(sql);
    st.setInt(1,cus);
    rs = st.executeQuery();
    rs.next();
}
catch (Exception e)
{
System.out.print(e);
e.printStackTrace();
} 
%>
<div class="name"><h1>Feedback Report</h1></div>
<div class="main">
<form action="FeedbackReport.jsp" method="post">

<h2 class="app">Customer ID:   <%=rs.getString(2)%></h2>
</div>
<table>
  <tr>
    <th>Questions</th>
    <th>Feedback</th>
    
  </tr>
  <tr>
    <td>Did the price of our service is affordable?</td>
    <td><%=rs.getString(3)%></td>
   
  </tr>
  <tr>
    <td>Did you find our staff helpful and courteous?</td>
    <td><%=rs.getString(4)%></td>
    
  </tr>
  <tr>
    <td>Where your expectations met?</td>
    <td><%=rs.getString(5)%></td>
   
  </tr>
  <tr>
   <td>how will you rate our effort compare to your expactations?</td>
    <td><%=rs.getString(6)%></td>
   
  </tr>
  <tr>
   <td>Would you like to prefer our service for the next time?</td>
    <td><%=rs.getString(7)%></td>
  
  </tr>
</table>
</form>
</div>

</body>
</html>