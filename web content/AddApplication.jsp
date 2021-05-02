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
         background-color:rgb(0,0,0,0.5);
         width:800px;
         margin:auto;
       }
       form
       {
         padding:10px;
       }
      .cid{
               margin-left:60px;
               margin-top:30px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
              .cidl{
                        position:relative;
                        left:200px;
                        top:-32px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                       }
                       .ty{
                       	  margin-left:85px;
			               margin-top:10px;
			               width:300px;
			               color:white;
			               font-size:22px;
			               font-weight:700;     
		             }
		        
		          #tyl{
		                position:relative;
                        left:200px;
                        top:-22px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
		               }
		               
         .cp{
                       	  margin-left:95px;
			               margin-top:10px;
			               width:200px;
			               color:white;
			               font-size:22px;
			               font-weight:700;     
		             }
		        
		             #cpl{
		                position:relative;
                        left:200px;
                        top:-37px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
		               }
		               .ad{
                       	  margin-left:90px;
			               margin-top:10px;
			               width:300px;
			               color:white;
			               font-size:22px;
			               font-weight:700;     
		             }
		        
		           .adl{
		                position:relative;
                        left:200px;
                        top:-37px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
		               }

		         button{
		                 background-color:#623412;
		                 display:block;
		                 line-height:10px;
		                 margin:2px 10px 0px 2px;
		                 text-align:center;
		                 border-radius:12px;
		                 margin-left:250px;
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
function geeks() { 
    alert("Application added successfully");
 } </script>
</head>
<body>
<%
  if(session.getAttribute("idcustomer")==null)
  {
	  response.sendRedirect("MainDashboard.jsp");
  }

%>

<div class="name"><h1>Add Application</h1></div>
<div class="main">
<form action="addapplication" >

<h2 class="ty">Category:</h2>
  <select name="ty1" id="tyl">
    <option value="Plumbing">Plumbing</option>
    <option value="Electrical">Electrical</option>
    <option value="Mechanical">Mechanical</option>
    <option value="Painting">Painting</option>
    <option value="Machine Repairing">Machine Repairing</option>
    <option value="Carpentry">Carpentry</option>
    <option value="Electronics">Electronics</option>
    <option value="Others">Others </option>
  </select>
<h2  class="cp"> problem:</h2>
<textarea id="cpl" name="cp1" rows="6" cols="50">
  </textarea>
  
<h2 class="ad">Address:</h2>
<input class="adl" type="text" name="ad1">
 <br><br>
<button  type="submit  value="Subscribe" onclick="geeks();">Submit</button>
<button type="submit">Cancel</button>
</div>
</form>
</div>
</body>
</html>