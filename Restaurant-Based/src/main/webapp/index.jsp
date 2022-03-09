<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Family&Friends</title>
 
<link rel="stylesheet" type="text/css" href="CSS/login.css">
 <script type="text/javascript"></script>
 
</head>


<!-- <script>
function myFunction() {

	var username= document.getElementById("un");
    var password= document.getElementById("ps");
    if(username!=null && username!==""){
    	if(password!=null && password!=""){
    		alert('Login Successfully');

    	}else{
    		alert('please enter password');

    	}
    	
    } else{
    	alert('please enter username');
    }   
}

</script>
 -->
<script >

</script>
<body>
<div id="container">
<form action="Login" method="post" id="flogin">
 
<div class="border-box">

<h2>Login Form</h2>
<p style="color:red; display:none;" ><%= request.getAttribute ("msg") %></p>

<label for="uname" id="un">Username:</label>
<input type="text" name="user" value="" placeholder="Enter Username" id="uname"><br/>
 
<label for="upass" id="ps">Password:</label>
<input type="password" name="pass" placeholder="Enter Password" id="upass"><br/>
 
<button type="submit" value="Login"  id="submit" onClick="myFunction()">Login</button>
 
<!-- <p>Don't have an account?  <a href="register.jsp">Register</a></p>
 -->
 </div>
 
</form>
</div>
 
</body>
</html>
