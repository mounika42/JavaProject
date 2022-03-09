<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Family&Friends</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%@page import="com.restn.Model.Adressbean"%>

<script type="text/javascript">
window.onload = function() {

var demo= document.getElementById("demo").innerHTML;
if(demo!=null && demo!="" && demo!="null" && demo!="null...null,null"){

	document.getElementById("a1").show;
	document.getElementById("a1").Hide;
	document.getElementById("demo").show;

	
}else{
	document.getElementById("a1").style.display = "none";

	document.getElementById("demo").style.display = "none";

}
}


</script>

<body>
 <jsp:include page="header.jsp" />
 <div class="container">
 <h3  style="color: maroon;"> family & friends Resturants</h3>
 
 <div>
 <h3 style="color:Green;" id="a1"> Order Placed  Thank You  </h3>
 <p id="demo" ><%= request.getAttribute("name") %></p>
 
 <br><br>
 </div>
        
        
       
         
 
 
 <h2 style="color: red" id="a2" style="text-align:Center;"> No Order Found </h2>
 
 <br><br>
 
</div>


 <jsp:include page="Footer.jsp" />

</body>
</html>