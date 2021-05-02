<!DOCTYPE html>
<html>
<head>

<style>
body 
{
 background-image:url('salvatores.jpg');
background-repeat:no-repeat;
background-attachment:fixed
background-position-center;
background-size:cover;
margin-bottom:40px;
} 
.name
  {
    width:800px;
    background-color:rgb(0,0,0,0.5);
    margin:auto;
    color:#FFFFFF;
    padding:10px 0px 10px 0px;
    font-size:25px;
    text-align:center;
    margin-top:200px;
    border-radius:15px 15px 0px 0px;
  }
  .main{
         background-color:rgb(0,0,0,.5);
         width:800px;
         margin:auto;
       }
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
    

					 th {
					   width:900px;
					   font-size:15px;
					    color:#FFFFFF;
					    padding:10px 0px 10px 0px;
					    text-align:center;
					    border-radius:15px 15px 0px 0px;
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

</style>
</head>
<body>
<div class="name"><h1>Home Improvement</h1></div>
<div class="main">
<table>
<tr>
<th>

     The concept of home improvement, home renovation or remodeling is the process of renovating or making additions to one's home.
     Home improvement can consist of projects that upgrade an existing home interior such as electrical and plumbing  , exterior like masonry,concrete,siding,roofing or other improvements to the property like gardern work or garage maintenance.
     
</th></tr></table>
</body>
</html>