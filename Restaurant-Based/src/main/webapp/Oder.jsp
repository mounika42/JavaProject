<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resturant</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%@page import="com.restn.Model.Adressbean"%>

<body>
 <jsp:include page="header.jsp" />
 <div class="container">
 <h3 Style  style="color: green"> family & friends Resturants</h3>
 
 
        <div>
         <label  for="r3" id="un">Username :</label>
        </div>
        <input type="text" id="uname" name="uname"  value=<%= request.getParameter("BeanUsername") %> >
        </br>
        </br>
        <div>
         <label  for="r3" id="un">Address :</label>
        </div>
        <textarea id="Address1" name="Adress1"  value=<%= request.getParameter("BeanAddress") %> rows="4" cols="50"></textarea><br/>
        
        <div>
        <label  for="r3" id="un">MobileNo :</label>
         <input type="text" id="MobileNo" name="MobileNo"  value=<%= request.getParameter("mobileNo") %> >
        
        
        </div>
         <br> <br>
 
 
 <h2 style="color: red"  style="text-align:Center;"> No Order Found </h2>
 
 
 
</div>


 <jsp:include page="Footer.jsp" />

</body>
</html>