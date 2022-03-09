<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Family&Friends</title>
<style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}


button{
    background-color:#4CAF50;
    width: 10%;
    padding: 9px 5px;
    margin:10px 0px 0px 35px;
    cursor:pointer;
    border:none;
    color:#ffffff;
    font-size: 15px;
    font-weight: bold;
    }
     
    button:hover{
    opacity:0.8;
    }
     
</style>
<script type="text/javascript">
function myFunction() {
    if(!document.getElementById('checkbox').checked){
		alert("Please select Atleast one item");

    }else{
		alert("please entre the Address");

    }
		}
</script>
</head>

<body>
 <jsp:include page="header.jsp" />
 <div class="container">
 
 
 <h2 style="color: green">NON - VEG</h2>
 <form action="Orderstatus" method="post" id="flogin">
 
<h3 style="font-style: oblique;"><b>Biryanis :</b></h3>

<div class="row">
  <div class="column">
    <img src="Images/pic1.jfif" alt="Snow" style="width:80%">
    <div>
    <p style="font-style: oblique;">FryspieceBiryani</p>
    <p style="font-style: oblique;">cost : $250</p>
    <label for="upass" id="ps">Quantity:</label>
    <input type="text" name="Qulity" placeholder="0" id="Qulity"><br/>
    <input type="checkbox" id="checkbox" name="checkbox" value="1">
    
    </div>   
    
  </div>
  <div class="column">
    <img src="Images/download.jfif" alt="Forest" style="width:80%">
    
     <div>
    <p style="font-style: oblique;">MuttonPotBiryani</p>
    <p style="font-style: oblique;">cost : $300</p>
    <label for="upass" id="ps">Quantity:</label>
    <input type="text" name="Qulity" placeholder="0" id="Qulity"><br/>
     <input type="checkbox" id="checkbox" name="checkbox" value="2">
    
        </div>   
    
    </div>   
   
   <div class="column">
    <img src="Images/pic2.jfif" alt="Forest" style="width:80%">
    
     <div>
    <p style="font-style: oblique;">DumBiryani</p>
    <p style="font-style: oblique;">cost : $250</p>
    <label for="upass" id="ps">Quantity:</label>
    <input type="text" name="Qulity" placeholder="0" id="Qulity"><br/>
            <input type="checkbox" id="checkbox" name="checkbox" value="3">
    
        </div>   
    
      </div>
    
    </div> 
    <div class="row">
     
     <div class="column">
    <img src="Images/pic3.jfif" alt="Forest" style="width:80%">
    
     <div>
    <p style="font-style: oblique;">MuttonDumBiryani</p>
    <p style="font-style: oblique;">cost : $250</p>
    <label for="upass" id="ps">Quantity:</label>
    <input type="text" name="Qulity" placeholder="0" id="Qulity"><br/>
            <input type="checkbox" id="checkbox" name="checkbox" value="4">
    
    </div>   
    </div>   
    <div class="column">
    <img src="Images/pic4.jfif" alt="Forest" style="width:80%">
    
     <div>
    <p style="font-style: oblique;">BonesBiryani</p>
    <p style="font-style: oblique;">cost : $250</p>
    <label for="upass" id="ps">Quantity:</label>
    <input type="text" name="Qulity" placeholder="0" id="Qulity"><br/>
                <input type="checkbox" id="checkbox" name="checkbox" value="5">
    
    </div>   
    </div>   
    <div class="column">
    <img src="Images/pic5.jfif" alt="Forest" style="width:80%">
    
     <div>
    <p style="font-style: oblique;">lollipopBiryani</p>
    <p style="font-style: oblique;">cost : $250</p>
    <label for="upass" id="ps">Quantity:</label>
    <input type="text" name="Qulity" placeholder="0" id="Qulity"><br/>
     <input type="checkbox" id="checkbox" name="checkbox" value="6">
    
    </div>   
    </div>   
   </div>
  
 <h3 style="font-style: oblique;"><b>Starters :</b></h3>
 
    <div class="row">
    <div class="column">
    <img src="Images/Chicken-Majestic.jpg" alt="Snow" style="width:80%">
    <div>
    <p style="font-style: oblique;">Chicken-Majestic</p>
    <p style="font-style: oblique;">cost : $250</p>
    <label for="upass" id="ps">Quantity:</label>
    <input type="text" name="Qulity" placeholder="0" id="Qulity"><br/>
         <input type="checkbox" id="checkbox" name="checkbox" value="7">
    
    </div>   
    
  </div>
  <div class="column">
    <img src="Images/Fish.jpg" alt="Forest" style="width:80%">
    
     <div>
    <p style="font-style: oblique;">Fish</p>
    <p style="font-style: oblique;">cost : $300</p>
    <label for="upass" id="ps">Quantity:</label>
    <input type="text" name="Qulity" placeholder="0" id="Qulity"><br/>
             <input type="checkbox" id="checkbox" name="checkbox" value="8">
    
        </div>   
    
    </div>   
   
   <div class="column">
    <img src="Images/maxresdefault.jpg" alt="Forest" style="width:80%">
    
     <div>
    <p style="font-style: oblique;">lollipop</p>
    <p style="font-style: oblique;">cost : $250</p>
    <label for="upass" id="ps">Quantity:</label>
    <input type="text" name="Qulity" placeholder="0" id="Qulity"><br/>
                 <input type="checkbox" id="checkbox" name="checkbox" value="9">
    
        </div>   
    
      </div>
    </div>
    <h3 style="font-style: oblique;"><b>Softdrink & Icecreams :</b></h3>
   
    <input type="checkbox" id="checkbox" name="checkbox" value="10">
    <label for="coca"> coca cola  $30</label><br>
  <input type="checkbox" id="checkbox" name="checkbox" value="11">
    <label for="fanta"> Fanta   $30</label><br>
  <input type="checkbox" id="checkbox" name="checkbox" value="12">
    <label for="coca"> sprit   $30</label><br>
  <input type="checkbox" id="checkbox" name="checkbox" value="13">
    <label for="coca"> Thums Up   $30</label><br>
  <input type="checkbox" id="checkbox" name="checkbox" value="14">
    <label for="coca"> Choco Mist  $40</label><br>
  <input type="checkbox" id="checkbox" name="checkbox" value="15">
    <label for="coca"> Vanilla   $40</label><br>
  <input type="checkbox" id="checkbox" name="checkbox" value="16">
    <label for="coca"> Mango Cream Ice  $40 </label><br>
  
 
 <button type="submit" value="Confirm"  id="Confirm" onClick="myFunction()">Confirm</button>
 
 </form>
 <br>
 <br>
 
</div>


 <jsp:include page="Footer.jsp" />

</body>
</html>