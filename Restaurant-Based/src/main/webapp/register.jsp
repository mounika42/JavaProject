<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Family&Friends</title>
<link rel="stylesheet" type="text/css" href="CSS/register.css">
</head>
 
<body bgcolor="#E6E6FA">
 
<form  action="Register"  method="post" name="regi" >
<h2>Registration Form</h2>
 
<label for="r1" id="fn">Email Id :</label>
<input type="text" name="fname" id="r1"><br/>
 
<label  for="r2" id="ln">MobileNo :</label>
<input type="text" name="lname" id="r2"><br/>
 
<label  for="r3" id="un">Username :</label>
<input type="text" name="uname" id="r3"><br/>
 
 <label  for="r3" id="un">Password :</label>
<input type="text" name="uname" id="r4"><br/>
 
<button type="submit" value="Submit" id="button">Register</button>
<a href="index.jsp">Back to Login</a>
 
</form>
 
<script type="text/javascript">
function save(){
var user = document.getElementById("r3").value;
var pwd = document.getElementById("r4").value;
alert("username"+user+"password"+pwd);
}
</script>
 
</body>
</html>