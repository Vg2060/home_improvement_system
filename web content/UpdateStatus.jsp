<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*,java.util.*"%>

<%@ page import="java.io.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnect"%>
<% ResultSet rs = null; %>
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
               
               .ad{
                       	  margin-left:50px;
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
          .eid{
	              margin-left:60px;
	              margin-top:0px;
				  width:300px;
				  color:white;
				  font-size:22px;
				  font-weight:700;
               }
       #tyl{
                        position:relative;
                        left:202px;
                        top:-25px;
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
<script>
function geeks()
{
	alert("percentage updated..");
	}</script>
</head>
<body >
//<%
  //if(session.getAttribute("idemployee")==null)
  //{
	//  response.sendRedirect("MainDashboard.jsp");
 // }
 // int em=(Integer)session.getAttribute("idemployee");
     //try{
       //  Connection con= DBConnect.getConnect();
       //  Statement statement = con.createStatement();
      //   String sql = "select * from status_employee where Employee_id=? and Status=?";
      //   PreparedStatement st=con.prepareStatement(sql);
      //   st.setInt(1,em);
      //   st.setString(2,"assigned");
        // rs = st.executeQuery();
      //   }
   //  catch(SQLException e)
   //  {
   //      System.out.println("Error!!!!!!" + e);
    // }
 //   %>
<div class="name"><h1>Update Status</h1></div>
<div class="main">
<form action="updatestatus" method="get">

<h2 class="ad">Application id:</h2>
<input class="adl" type="text" name="ad1">

<h2 class="eid">Completion:</h2>
  <select name="ty1" id="tyl">
    <option value="20">20%</option>
    <option value="40">40%</option>
    <option value="50">50%</option>
    <option value="70">70%</option>
    <option value="90">90%</option>
    <option value="100">100%</option>
  </select>
  <br><br>
<button type="submit" onclick="geeks();">Update</button>

</div>

</form>
</div>
</body>
</html>
