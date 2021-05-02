<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnect"%>
<% ResultSet rs = null; %>
<%int app=0; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Project</title>
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
      
       .id{
               margin-left:110px;
               margin-top:30px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
              
             .appid{
                        position:relative;
                        left:300px;
                        top:-30px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                       }
                        .appidl{
                        position:relative;
                        left:300px;
                        top:-30px;
                        color:white;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                       }
                       
		        
       .categoryl{
              margin-left:155px;
			  width:300px;
			  color:white;
			  font-size:22px;
			  font-weight:700;
               }
        #category{
                        position:relative;
                        left:302px;
                        top:-25px;
                        line-height:30px;
                        border-radius:3px;
                        padding:0 22px;
                        font-size:16px;
                       } 
		        
		.employeel{
               margin-left:150px;
                margin-top:14px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
               }
		   #employee{
		               position:relative;
                        left:47px;
                        top:0px;
                        line-height:30px;
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
		                 margin-left:200px;
		                 margin-top:50px;
		                  margin-bottom:75px;
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
<script>
function geeks()
{ alert("Project assigned to employee...")
	}
	</script>
<%
     app=Integer.parseInt(request.getParameter("appid"));
     String role=request.getParameter("category");
     try{
         Connection con= DBConnect.getConnect();
         String sql = "select * from add_employee where field_of_work=? and status=?";
         PreparedStatement stmt=con.prepareStatement(sql);
         stmt.setString(1,role);
         stmt.setString(2,"completed");
         rs=stmt.executeQuery();
         }
     catch(SQLException e)
     {
         System.out.println("Error!!!!!!" + e);
     }
    %>
</head>
<body>

<div class="name"><h1>Assign project</h1></div>
<div class="main">
<form action="assignproject" method="get">

<h2 class="id">Application id:</h2>
<input class="appidl" type="text" name="appid" value="<%=app %>" disabled="true">

<h2 class="categoryl">Employee:</h2>
 <select name="category1" id="category">
   <% while(rs.next()) 
   { 
   %>
    <option value="<%=rs.getInt(1)%>"><%=rs.getString(2)%></option>
    <%
    } 
    %>
 </select>
<h2 class="id">Application id:</h2>
<input class="appid" type="text" name="appid1">

<button type="submit" onclick="geeks();">Assign</button>

</div>

</form>
</div>
</body>
</html>