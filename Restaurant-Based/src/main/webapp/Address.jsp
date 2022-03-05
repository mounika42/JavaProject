<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resturant</title>
<link rel="stylesheet" type="text/css" href="CSS/register.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
  <jsp:include page="header.jsp" />
 
<body bgcolor="#E6E6FA">

<div class="container">
 
<form  action="Address"  method="post" name="regi" >

<h2>Address Form</h2>
 
<label for="r1" id="fn">Email Id :</label>
<input type="text" name="fname" id="r1"><br/>
 
<label  for="r2" id="ln">MobileNo :</label>
<input type="text" name="lname" id="r2"><br/>
 
<label  for="r3" id="un">Username :</label>
<input type="text" name="uname" id="r3"><br/>
 
 <label  for="r3" id="un">Address :</label>
<textarea id="Address1" name=Adress1 rows="4" cols="50"></textarea><br/>
 
 <label  for="r3" id="un">City</label>
<input type="text" id="city" name="city" id="r4"><br/>
 
 <label  for="r3" id="un">PinNo</label>
<input type="text" id="pinno" name="pinno" id="r4"><br/>
 
<button type="submit" value="Submit" id="button">Orderconfirm</button>
<a href="Product.jsp">Back to Menu</a>
 
</form>
</div>

  <jsp:include page="Footer.jsp" />
 
<script type="text/javascript">
function save(){
var user = document.getElementById("r3").value;
var pwd = document.getElementById("r4").value;
alert("username"+user+"password"+pwd);
}
</script>
 
</body>
</html>