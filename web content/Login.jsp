<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

* {
  box-sizing: border-box;
}
.topnav {
  overflow: hidden;
  background-color:rgb(0,0,150,0.5) ;
  color:white;
}

.topnav a {
  float: right;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  border-bottom: 3px solid transparent;
}

.topnav a:hover {
  border-bottom: 3px solid white;
}



* { 
-webkit-box-sizing: border-box; 
-moz-box-sizing: border-box; 
-o-box-sizing: border-box; 
box-sizing: border-box; 
/* adds animation for all transitions */ 
-webkit-transition: .25s ease-in-out; 
-moz-transition: .25s ease-in-out; 
-o-transition: .25s ease-in-out; 
transition: .25s ease-in-out; 
margin: 0; 
padding: 0; 
-webkit-text-size-adjust: none; 
} 

/* Makes sure that everything is 100% height */ 

html,body { 
height: 100%; 
overflow: hidden; 
} 

/* gets the actual input out of the way; 
we're going to style the label instead */ 

#drawer-toggle { 
position: absolute; 
opacity: 0; 
}

#drawer-toggle-label { 
-webkit-touch-callout: none; 
-webkit-user-select: none; 
-khtml-user-select: none; 
-moz-user-select: none; 
-ms-user-select: none; 
user-select: none; 
left: 0px; 
height:50px; 
width: 50px; 
display: block; 
position: fixed; 
background: rgba(255,255,255,.0); 
z-index: 1; 
} 

/* adds our "hamburger" menu icon */ 

#drawer-toggle-label:before { 
content: ''; 
display: block; 
position: absolute; 
height: 2px; 
width: 24px; 
background: #8d8d8d; 
left: 13px; 
top: 18px; 
box-shadow: 0 6px 0 #8d8d8d, 0 12px 0 #8d8d8d; 
} 

header { 
width: 100%; 
position: fixed; 
left: 0px; 
color:white;
background: rgb(0,0,0,0.5); 
padding: 10px 10px 10px 50px; 
font-size: 30px; 
line-height: 30px; 
z-index: 0; 
}

/* drawer menu pane - note the 0px width */ 

#drawer { 
position: fixed; 
top: 0; 
left:-300px; 
height: 100%; 
width: 300px; 
background: #2f2f2f; 
overflow-x: hidden; 
overflow-y: scroll; 
padding: 20px; 
-webkit-overflow-scrolling: touch; 
} 

/* actual page content pane */ 

#page-content { 
margin-left: 0px; 
margin-top: 50px; 
width: 100%; 
height: calc(100% - 50px); 
overflow-x:hidden; 
overflow-y:scroll; 
-webkit-overflow-scrolling: touch; 
padding: 20px; 
}

/* checked styles (menu open state) */ 

#drawer-toggle:checked ~ #drawer-toggle-label { 
height: 100%; 
width: calc(100% - 300px); 
background: rgb(0,0,0,0.5); 
} 

#drawer-toggle:checked ~ #drawer-toggle-label, 
#drawer-toggle:checked ~ header { 
left: 300px; 
} 

#drawer-toggle:checked ~ #drawer { 
left: 0px; 
} 

#drawer-toggle:checked ~ #page-content { 
margin-left: 300px; 
}

/* Menu item styles */ 

#drawer ul { 
list-style-type:none; 
color:white;
} 

#drawer ul a { 
display:block; 
padding:10px; 
color:rgb(0,0,0,0.5); 
text-decoration:none; 
} 

#drawer ul a:hover { 
color:white; 
} 



@media all and (max-width:350px) { 

#drawer-toggle:checked ~ #drawer-toggle-label { 
height: 100%; 
color:white;
width: 50px; 
} 

#drawer-toggle:checked ~ #drawer-toggle-label, 
#drawer-toggle:checked ~ header { 
left: calc(100% - 50px); 
color:white;
} 

#drawer-toggle:checked ~ #drawer { 
width: calc(100% - 50px); 
padding: 20px; 
color:white;
} 

#drawer-toggle:checked ~ #page-content { 
margin-left: calc(100% - 50px); 
color:white;
} 

}
*{
  margin:0;
  padding:0;
}
body{
background-image:url('salvatores.jpg');
background-repeat:no-repeat;
background-attachment:fixed;
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
      .ty{
                       	  margin-left:130px;
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
</head>
<body>

<div class="name"><h1>Login</h1></div>
<div class="main">
<form  action="Login1" method="get">
<h2 class="ty">Role:</h2>
  <select name="ty1" id="tyl">
    <option value="admin">Admin</option>
    <option value="employee">Employee</option>
    <option value="customer">Customer</option>
  </select>

<h2 class="usr">User Name:</h2>
<input class="usrl" type="text" name="usr"></input>

<h2 class="pwd">Password:</h2>
<input class="pwdl" type="password" name="pwd"></input>


<button type="submit">Login</button>

</div>

</form>
</div>
</body>
</html>