<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="ISO-8859-1">
<title>Search Bill</title>
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
margin-top:180px;
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
  margin-top:40px;
         background-color:rgb(0,0,0,.5);
         width:800px;
         margin:auto;
       }
       form
       {
     
         padding:10px;
       }
      
       .app{
               margin-left:200px;
               margin-top:10px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
              
             .appl{
                        position:relative;
                        left:370px;
                        top:-37px;
                        
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
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
					    border-radius:15px 15px 0px 0px;
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
		                    
		          .inp{
		                    
						   width:200px;
    background-color:white;
    margin:auto;
    color:black;
    padding:10px 0px 10px 0px;
    text-align:center;
    border-radius:0px 0px 0px 0px;
    position:relative;
                      
                        line-height:30px;
                        border-radius:6px;
                        padding:0 22px;
                        font-size:16px;
                        text-color:white;
							    
		             } 
                       
      		        
</style>
</head>
<body>
<%
 if(session.getAttribute("idadmin")==null)
 {
  response.sendRedirect("MainDashboard.jsp");
  }
 %>
<div class="name"><h1>Search Bill</h1></div>
<div class="main">
<form action="ab.jsp" method="post">

<h2 class="app">Application ID:</h2>
<input class="appl" type="text" name="fname">
<button class="Update" type="submit">Update</button>
</div>



</div>
</form>
</div>
</body>
</html>