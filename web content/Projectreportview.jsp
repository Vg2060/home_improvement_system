<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnect"%>
<%@page import="db.getapplicationid" %>
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
      .fl{
               margin-left:43px;
               margin-top:10px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
       .flname{
               margin-left:110px;
               margin-top:10px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
              .first{
              position:relative;
                        left:200px;
                        top:-37px;
                        color:white;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
              }
             .firstname{
                        position:relative;
                        left:200px;
                        top:-37px;
                        color:white;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                       }
                     
		            .email{
                       	  margin-left:110px;
			               margin-top:10px;
			               width:300px;
			               color:white;
			               font-size:22px;
			               font-weight:700;     
		             }
		        
		            .emaill{
		                position:relative;
                        left:200px;
                        top:-37px;
                        color:white;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
		               }
		        
		         .aphone{
			               margin-left:25px;
			               margin-top:10px;
			               width:300px;
			               color:white;
			               font-size:22px;
			               font-weight:700;
                         }
                         
		         .code{
                        position:relative;
                        left:200px;
                        top:-37px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                       }
                       
              .number{
                       position:relative;
                        left:200px;
                        top:-37px;
                        color:white;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                       }
                       
		                  
		              .fow{
                       	  margin-left:90px;
			               margin-top:10px;
			               width:300px;
			               color:white;
			               font-size:22px;
			               font-weight:700;     
		             }
		        
		            .fowl{
		                position:relative;
                        left:200px;
                        top:-37px;
                        color:white;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
		               }
		               .Age{
                       	   margin-left:45px;
			               margin-top:10px;
			               width:300px;
			               color:white;
			               font-size:22px;
			               font-weight:700;    
		             }
		        
		          .agel{
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
		                 margin:2px 0px 0px 2px;
		                 text-align:center;
		                 border-radius:12px;
		                 margin-left:250px;
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
//int c=14;
System.out.println(request.getParameter("fname"));
String ss=request.getParameter("fname");
int emp=Integer.parseInt(ss);
getapplicationid ii=new getapplicationid();
int cuss=ii.insert(emp);
System.out.println(cuss);
try
{
	System.out.println(cuss);
	Connection con= DBConnect.getConnect();
    String sql = "select * from add_cus where Cus_id=?";
    PreparedStatement st=con.prepareStatement(sql);
    st.setInt(1,cuss);
    rs = st.executeQuery();
    rs.next();
}
catch (Exception e)
{
System.out.print(e);
e.printStackTrace();
} 
%>	                     
</head>
<body>

<div class="name"><h1>Customer Details</h1></div>
<div class="main">
<form action="Projectreport.jsp" method="get">
 <h2 class="fl">Customer ID:</h2>
 <input class="firstname" type="text" value="<%= rs.getInt(1)%>" size="20" disabled="true">
 
<h2 class="flname">Name:</h2>
<input class="first" type="text" value="<%= rs.getString(2)%>" size="20" disabled="true">


<h2 class="email">Email:</h2>
<input class="emaill" type="text"  value="<%= rs.getString(5)%>" size="20" disabled="true">

<h2 class="aphone">Phone Number:</h2>

<input class="number" type="text"  value="<%= rs.getString(7)%>" size="20" disabled="true">

<h2  class="fow">Address:</h2>
<input class="fowl" type="text"   value="<%= rs.getString(8)%>" size="20" disabled="true">

<button type="submit">Back</button>
</div>

</form>
</div>
</body>
</html>