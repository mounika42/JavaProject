<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Family&Friends</title>
</head>

<link rel="stylesheet" type="text/css" href="CSS/register.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<body>
 <jsp:include page="header.jsp" />
 <div class="container">
 
 <h3 style="color:Red;"> Fill All the Details ....<br>
 <%= request.getAttribute("name") %></h3>
 <a href="Address.jsp">Back to Address</a>
 
 
 <br>
 <br>
</div>


 <jsp:include page="Footer.jsp" />

</body>
</html>