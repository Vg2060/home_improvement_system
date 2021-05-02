<!DOCTYPE html>
<html>
<head>

<style>

* {
  box-sizing: border-box;
}
.topnav{
  overflow: hidden;
  background-color:rgb(0,0,150,0.5) ;
  color:white;
}

.topnav a {
  float: right;
  display: block;
  background-color:rgb(0,0,60,0.5);
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
 
-webkit-transition: .25s ease-in-out; 
-moz-transition: .25s ease-in-out; 
-o-transition: .25s ease-in-out; 
transition: .25s ease-in-out; 
margin: 0; 
padding: 0; 
-webkit-text-size-adjust: none; 
} 


html,body { 
height: 100%; 
overflow: hidden; 
} 

 

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
text-align:center;
background: rgb(0,0,0); 
padding: 10px 10px 10px 50px; 
font-size: 30px; 
line-height: 30px; 
z-index: 0; 
}



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


</style>
</head>
<body>
<%
  if(session.getAttribute("idadmin")==null)
  {
	  response.sendRedirect("MainDashboard.jsp");
  }

%>
<h2></h2>
<div class="topnav">
 
  <a href="logoutadmin">Logout</a>
</div>

<body>
   <input type="checkbox" id="drawer-toggle" name="drawer-toggle"/>
   <label for="drawer-toggle" id="drawer-toggle-label"></label>
   <header>Home Improvement System</header>
   <nav id="drawer">
      <ul>
      <li>-------------------------</li>
         <li><a href="Addadmin.jsp" target="iframe_a"></a>Add Admin</li>
         <li>-------------------------</li>
         <li><a href="AddEmployee.jsp" target="iframe_a"></a>Add Employee</li>
         <li>-------------------------</li>
         <li><a href="ApllicationReport.jsp" target="iframe_a"></a>Application Report</li>
         <li>-------------------------</li>
         <li><a href="AssignProject.jsp" target="iframe_a"></a>Assign Project</li>
         <li>-------------------------</li>
         <li><a href="ProjectStstus.jsp" target="iframe_a"></a>Project Status</li>
         <li>-------------------------</li>
         <li><a href="processBill.jsp" target="iframe_a"></a>Process Bill</li>
         <li>-------------------------</li>
         <li><a href="Feedbackcus.jsp" target="iframe_a"></a>Feedback Report</li>
         <li>-------------------------</li>
         <li><a href="RemoveEmployeeid.jsp" target="iframe_a"></a>Delete Employee</li>
         <li>-------------------------</li>
      </ul>
   </nav>
    <FRAMESET>
    <iframe src="Addadmin.jsp" name="iframe_a" height="620px" width="100%" title="Iframe Example"></iframe>
   <iframe src="AddEmployee.jsp" name="iframe_a" height="600px" width="100%" title="Iframe Example"></iframe>
   <iframe src="ApllicationReport.jsp" name="iframe_a" height="600px" width="100%" title="Iframe Example"></iframe>
   <iframe src="AssignProject.jsp" name="iframe_a" height="600px" width="100%" title="Iframe Example"></iframe>
   <iframe src="processBill.jsp" name="iframe_a" height="620px" width="100%" title="Iframe Example"></iframe>
   <iframe src="Applicationstatus.jsp" name="iframe_a" height="600px" width="100%" title="Iframe Example"></iframe>
   <iframe src="Feedbackcus.jsp" name="iframe_a" height="600px" width="100%" title="Iframe Example"></iframe>
   <iframe src="RemoveEmployee.jsp" name="iframe_a" height="600px" width="100%" title="Iframe Example"></iframe>
</FRAMESET>
   <div id="page-content">
      <p></p>
   </div>
</body>


</body>
</html>