<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"; charset="ISO-8859-1">
<title>E-Mail</title>
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
               margin-left:150px;
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
                        padding:0 sspx;
                        font-size:16px;
                       }
                       
                         .sub{
               margin-left:150px;
               margin-top:10px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
              .att{
               margin-left:150px;
               margin-top:10px;
               width:300px;
               color:white;
               font-size:22px;
               font-weight:700;
              }
             .subl{
                        position:relative;
                        left:370px;
                        top:-37px;
                        
                        line-height:30px;
                        border-radius:6px;
                        padding:0 sspx;
                        font-size:16px;
                       }
                       
                        .cfl{
                        position:relative;
                        left:370px;
                        top:-30px;
                        color:white;
                        line-height:30px;
                        border-radius:6px;
                        padding:0 sspx;
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
function geeks(){
	alert("Email sent succesfully...");
}</script>
</head>
<body>
<div class="name"><h1>Send E-Mail</h1></div>
<div class="main">
<form action="SendMailAttachServlet" method="post" enctype="multipart/form-data">

<h2 class="app">Recipient Address:</h2>
<input class="appl" type="text" name="recipient">

<h2 class="sub">Subject:</h2>
<input class="subl" type="text" name="subject">

<h2 class="att">Attach File:</h2>
<input class="cfl" type="file" name="file" size="50" />

<button class="Update" type="submit" onclick="geeks();">Send</button>
</div>



</div>
</form>
</div>
</body>
</html>