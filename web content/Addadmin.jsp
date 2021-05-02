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
      
       .flname{
               margin-left:110px;
               margin-top:30px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
              
             .firstname{
                        position:relative;
                        left:200px;
                        top:-37px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                       }
                       
              .lastname{
                       position:relative;
                        left:200px;
                        top:-37px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                        color:#555;
                       }
                       
		        .firstlabel{
		             color:white;
		              width:300px;
		              margin:auto;
		        }
		        
		         .lastlabel{
		             color:white;
		              width:300px;
		              margin:auto;
		        }
		        
		        #employee{
		             margin-left:110px;
		             color:white;
		             font-size:22px;
		        
		        }
		        
		        .radio{
		               display:inline-block;
		               padding-right:-4px;
		               font-size:20px;
		               margin-left:210px;
		               margin-top:-15px;
		               color:white;
		              }
		        
		        .radio input{
		                      width:20px;
		                      height:20px;
		                      border-radius:50%;
		                      cursor:pointer;
		                      putline:none;
		                    }
		        
		         .Age{
                       	  margin-left:130px;
			               margin-top:20px;
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
		        
		           .dob{
                       	  margin-left:50px;
			               margin-top:10px;
			               width:300px;
			               color:white;
			               font-size:22px;
			               font-weight:700;     
		             }
		        
		           .dobl{
		                position:relative;
                        left:200px;
                        top:-37px;
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
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
		               }
		        
		         .aphone{
			               margin-left:110px;
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
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                        color:#555;
                       }
                       
		        .area-code{
		             color:white;
		              width:600px;
		              margin:auto;
		        }
		        
		         .phone-number{
		             color:white;
		              width:600px;
		              margin:auto;
		        }
		        
		         .usr{
                       	  margin-left:70px;
			               margin-top:10px;
			               width:300px;
			               color:white;
			               font-size:22px;
			               font-weight:700;     
		             }
		        
		            .usrl{
		                position:relative;
                        left:200px;
                        top:-37px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
		               }
		               
		             .pwd{
                       	  margin-left:80px;
			               margin-top:10px;
			               width:300px;
			               color:white;
			               font-size:22px;
			               font-weight:700;     
		             }
		        
		            .pwdl{
		                position:relative;
                        left:200px;
                        top:-37px;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
		               }
		               
		              .fow{
                       	  margin-left:40px;
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
    alert("admin added successfully");
 } </script>
</head>
</head>
<body>

<div class="name"><h1>Create Admin</h1></div>
<div class="main">
<form action="addadmin" method="get">
<h2 class="flname">Name:</h2>
<input class="firstname" type="text" name="fname">
<label class="firstlabel">First Name</label>
<input class="lastname" type="text" name="lname">
<label class="lastlabel">Last Name</label>

<h2 id="employee">Gender:</h2>
<label class="radio">
<input type="radio" id="male" name="gender" value="male">
<label for="male">Male</label>
<input type="radio" id="female" name="gender" value="female">
 <label for="female">Female</label>
</label>

<h2 class="Age">Age:</h2>
<input class="agel" type="text" name="age" >

<h2 class="dob">Date of Birth:</h2>
<input class="dobl" type="date" name="dob">

<h2 class="email">Email:</h2>
<input class="emaill" type="email" name="email">

<h2 class="aphone">Phone:</h2>
<input class="code" type="text" name="area_code">
<label class="area-code">Area Code</label>
<input class="number" type="text" name="phone">
<label class="phone-number">Phone Number</label>


<h2 class="usr">User Name:</h2>
<input class="usrl" type="text" name="usr"></input>



<h2 class="pwd">Password:</h2>
<input class="pwdl" type="password" name="pwd"></input>


<button type="submit" onclick="geeks();">Add</button>

</div>
</form>
</div>
</body>
</html>