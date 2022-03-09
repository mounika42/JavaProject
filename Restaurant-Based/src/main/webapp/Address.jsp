<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Family&Friends</title>
</head>

<link rel="stylesheet" type="text/css" href="CSS/register.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<script type="text/javascript">
function myFunction() {

	var fname= document.getElementById("fname").innerHTML;

    var lname= document.getElementById("lname").innerHTML;

    var uname= document.getElementById("uname").innerHTML;

    var Adress1= document.getElementById("Adress1");

    var city= document.getElementById("city").innerHTML;
    var pinno= document.getElementById("pinno").innerHTML;

    if(fname== null && fname== " "){

    }
    
    
    
    
    }

</script>



<jsp:include page="header.jsp" />
 
<body bgcolor="#E6E6FA">

<div class="container">
 
<form  action="Address"  method="post" name="regi" >

<h2>Address Form</h2>
 
<label for="r1" id="fn">Email Id :</label>
<input type="text" id="fname"  name="fname"  ><br/>
 
<label  for="r2" id="ln">MobileNo :</label>
<input type="text" id="lname" name="lname"  ><br/>
 
<label  for="r3" id="un">Username :</label>
<input type="text" id="uname" name="uname"  ><br/>
 
 <label  for="r3" id="un">Address :</label>
<textarea id="Address1" name=Adress1    rows="2" cols="25"></textarea><br/>
 
 <label  for="r3" id="un">City   :</label>
<input type="text" id="city" name="city"  ><br/>
 
 <label  for="r3" id="un">PinNo   :</label>
<input type="text" id="pinno" name="pinno"  ><br/>
 
 
 
<button type="submit"  id="button" onclick="myFunction()">Orderconfirm</button>

<a href="Product.jsp">Back to Menu</a>
 <br>
 <br>
</form>
<div>
</div>
</div>

  <jsp:include page="Footer.jsp" />
 
<<!-- script type="text/javascript">
function save(){
var user = document.getElementById("r3").value;
var pwd = document.getElementById("r4").value;
alert("username"+user+"password"+pwd);
}
</script>
  -->
</body>
</html>