<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="CSS/login.css">
 <script type="text/javascript"></script>
 
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <h3 style="color:Green;">  <%= request.getAttribute("msg") %></h3>
 --%>
 <marquee>
 <p> Hello  <%= request.getParameter("user") %>, Welcome to Home page</p></marquee>
 <jsp:include page="header.jsp" />
 
 <div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="3" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="4" class="active"></li>
    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img class="img-rounded" class="img-responsive center-block"
      src=Images/img1.jfif style="width:100%" "height="50%">
    </div>
    <div class="item">
    <img class="img-rounded" class="img-responsive center-block"
      src=Images/img2.jfif style="width:100%" "height="50%">
    </div>

    <div class="item">
    <img class="img-rounded" class="img-responsive center-block"
      src=Images/img3.jfif style="width:100%" "height="50%">
    </div>
 
 <div class="item">
    <img class="img-rounded" class="img-responsive center-block"
      src=Images/img4.jfif style="width:100%" "height="50%">
    </div>
 
 
  </div>
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 </div>


 <jsp:include page="Footer.jsp" />

</body>
</html>