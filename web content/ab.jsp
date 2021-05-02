<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.*" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<% ResultSet rs = null; %>
<% ResultSet rs1 = null; %>
<%@page import="db.DBConnect"%>
<%@page import="db.DBupbill"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<style>

.button {
  border-radius: 4px;
  background-color: #120501;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 10px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  margin-left:525px;
 
  
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

#invoice-POS{
  box-shadow: 0 0 1in -0.25in rgba(0, 0, 0, 0.5);
  padding:2mm;
  margin: 0 auto;
  width: 80mm;
  background: #FFF;
  
  
::selection {background: #f31544; color: #FFF;}
::moz-selection {background: #f31544; color: #FFF;}
h1{
  font-size: 1.5em;
  color: #222;
  font-style: Monaco;
}
h2{font-size: .9em;
font-style: normal;}
h3{
  font-size: 1.2em;
  font-weight: 300;
  line-height: 2em;
}
p{
  font-size: .7em;
  color: #666;
  line-height: 1.2em;
}
 
#top, #mid,#bot{ /* Targets all id with 'col-' */
  border-bottom: 1px solid #EEE;
}

#top{min-height: 100px;}
#mid{min-height: 80px;} 
#bot{ min-height: 50px;}

#top .logo{
  //float: left;
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/logo1.png) no-repeat;
	background-size: 60px 60px;
}
.clientlogo{
  float: left;
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/client.jpg) no-repeat;
	background-size: 60px 60px;
  border-radius: 50px;
}
.info{
  display: block;
  //float:left;
  margin-left: 0;
}
.title{
  float: right;
}
.title p{text-align: right;} 
table{
  width: 100%;
  border-collapse: collapse;
}
td{
  //padding: 5px 0 5px 15px;
  //border: 1px solid #EEE
}
.tabletitle1{
  //padding: 5px;
  font-size: 20px;
  background: #EEE;
}
.tabletitle{
  //padding: 5px;
  font-size: .5em;
  background: #EEE;
}
.service{border-bottom: 1px solid #EEE;}
.item{width: 24mm;}
.itemtext{font-size: .5em;}

.legalcopy{
  margin-top: 5mm;
  text-align:center;
}

  
  
}
</style>

<%
int appId = Integer.parseInt(request.getParameter("fname"));
     try{
		 Connection con =DBConnect.getConnect();
         String sql = "select * from update_bill where App_Id= ? ";
         PreparedStatement sp=con.prepareStatement(sql);
         sp.setInt(1, appId);
         rs = sp.executeQuery();
         rs.next();
     }
     catch(SQLException e)
     {
         System.out.println("Error!!!!!!" + e);
     }
    %>
<div id="invoice-POS">
<form action="EmailForm.jsp" method="post">
    
    <center id="top">
      <div class="logo"></div>
      <div class="info"> 
        <h2>HOME IMPROVEMENT</h2>
        ---------------------------------------------------------
      </div><!--End Info-->
    </center><!--End InvoiceTop-->
    
    <div id="bot">

					<div id="table">
						<table>
							<tr class="tabletitle">
								<td class="item"><h3>Product</h3></td>
								<td class="Hours"><h3>Qty</h3></td>
								<td class="Rate"><h3>Sub Total</h3></td>
							</tr>

							<tr class="service">
								<td class="tableitem"><p class="itemtext"><%= rs.getString(3) %></p></td>
								<td class="tableitem"><p class="itemtext"><%= rs.getString(4) %></p></td>
								<td class="tableitem"><p class="itemtext">Rs.<%= rs.getInt(5) %></p></td>
							</tr>

							<tr class="service">
								<td class="tableitem"><p class="itemtext"><%= rs.getString(6) %></p></td>
								<td class="tableitem"><p class="itemtext"><%= rs.getString(7) %></p></td>
								<td class="tableitem"><p class="itemtext">Rs.<%= rs.getInt(8)%></p></td>
							</tr>

							<tr class="service">
								<td class="tableitem"><p class="itemtext"><%= rs.getString(9) %></p></td>
								<td class="tableitem"><p class="itemtext"><%= rs.getString(10) %></p></td>
								<td class="tableitem"><p class="itemtext">Rs.<%= rs.getInt(11)%></p></td>
							</tr>
							

							<tr class="tabletitle1">
							    <td class="Rate"><h2>Service Tax</h2></td>
								<td>---------</td>
								<td class="payment"><h2>Rs.550</h2></td>
							</tr>

							<tr class="tabletitle">
							     <td class="Rate"><h2>Total</h2></td>
								<td>---------</td>
								<td class="payment"><h2>Rs.<%= rs.getInt(12)%></h2></td>
							</tr>
						</table>
					</div><!--End Table-->

					<tr class="legalcopy">
								<td></td>
								<td ></td>
								<td ><h3>----------------Thank you!-----------------</h3></td>
							</tr>
                          
				</div><!--End InvoiceBot-->
				
  </div><!--End Invoice-->
    

<button class="button"><span>Send E-Mail</span></button>
</form>

</body>
    
    </body>
</html>
    
    