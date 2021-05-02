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
margin-top:100px;
margin-left:79px;
margin-right:80px;
left-width:65%
}
    .cid{
               margin-left:112px;
               margin-top:30px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
              .cidl{
                        position:relative;
                        left:250px;
                        top:-50px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                       }

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  margin-left:40px;
  width: 95%
  
  
}

 .name{
 
    width:900px;
    background-color:rgb(0,0,0,0.69);
    color:#FFFFFF;
    padding:10px 0px 10px 10px;
    text-align:center;
    border-radius:15px 15px 0px 0px;
    margin-left:40px;
    width:94%
   
}

td, th {
   width:1000px;
    background-color:rgb(0,0,0,0.5);
    color:#FFFFFF;
    padding:10px 0px 10px 0px;
    text-align:center;
    border-radius:0px 0px 0px 0px;

}

          #employee{
          
		             margin-left:110px;
		             color:white;
		             font-size:22px;
		        
		        }
		        
		        .radio1{
		               display:inline-block;
		               padding-right:-4px;
		               font-size:20px;
		              margin-left:250px;
		               margin-top:-15px;
		               color:white;
		              }
		              .radio2
		              {
		              display:inline-block;
		               padding-right:-4px;
		               font-size:20px;
		              margin-left:250px;
		               margin-top:-15px;
		               color:white;
		              }
		              button{
		                 background-color:#623412;
		                 display:block;
		                 line-height:10px;
		                 margin:2px 0px 0px 2px;
		                 text-align:center;
		                 border-radius:12px;
		                 margin-left:250px;
		                 margin-top:20px;
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
    alert("Thank you!..Have a good time!");
 } </script>
</head>
<body>
<form action="feedback" method="get">
<div class="name"><h2>We value your Feedback</h2></div>

<table>
  <tr>
    <th>Questions</th>
    <th>Excellent</th>
    <th>Good</th>
    <th>Average</th>
     <th>Poor</th>
  </tr>
  <tr>
<td>Did the price of our service is affordable?</td>
<label class="radio">
<td>
<input  type="radio"  name="1.feedback" value="excellent">
</td>
<td>
<input  type="radio"  name="1.feedback" value="good">
</td>
<td>
<input  type="radio"  name="1.feedback" value="average">
</td>
 <td>
<input  type="radio"  name="1.feedback" value="poor">
</td>
</label>
</td>
 </tr>
 <tr>
 <td>Did you find our staff helpful and courteous?</td>
 <label class="radio">
<td>
<input  type="radio"  name="2.feedback" value="excellent">
</td>
<td>
<input  type="radio"  name="2.feedback" value="good">
</td>
<td>
<input  type="radio"  name="2.feedback" value="average">
</td>
 <td>
<input  type="radio"  name="2.feedback" value="poor">
</td>
</label>
</td>
 </tr>
  <tr>
   <td>Where your expectations met?</td>
 <label class="radio">
<td>
<input  type="radio"  name="3.feedback" value="excellent">
</td>
<td>
<input  type="radio"  name="3.feedback" value="good">
</td>
<td>
<input  type="radio"  name="3.feedback" value="average">
</td>
 <td>
<input  type="radio"  name="3.feedback" value="poor">
</td>
</label>
</td>
 </tr>
  <tr>
   <td>how will you rate our effort compare to your expactations?</td>
<label class="radio">
<td>
<label>
<input  type="radio"  name="4.feedback" value="excellent">
</label>
</td>
<td>
<label>
<input  type="radio"  name="4.feedback" value="good">
</label>
</td>
<td>
<label>
<input  type="radio"  name="4.feedback" value="average">
</label>
</td>
 <td>
 <label>
<input  type="radio"  name="4.feedback" value="poor">
</label>
</td>
</label>
</td>
 </tr>
</table>
<h2 id="employee">Would you like to prefer our service for the next time?</h2>
<label class="radio2">
<input type="radio" id="male" name="gender" value="Yes">
<label for="Yes">Yes</label>
<input type="radio" id="female" name="gender" value="No">
 <label for="No">No</label>
</label>
<button type="submit" onclick="geeks();">submit</button>
</form>
</body>
</html>