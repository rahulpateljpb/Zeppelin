<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<title>Baggage</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="css/status.css" >
   <style>
 body{
   background-size:cover;
}
 ul#ul1 {
    padding: 0;
}

ul#ul1 li {
    display: inline;
}

ul#ul1 li a {
    background-color:  #262626;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 4px 4px 0 0;
}

ul#ul1 li a:hover {
    background-color: #595940;
}
#footer1
{
	background-color:  #262626;

	position: absolute; 
	bottom: 0px;
	right:0px;
	left: 0px;
	color: white;
	clear: both;
	text-align: center;
	padding: 10px;
}

</style>
</head>
<body background ="images/marble_texture1824.jpg" >
<%@ include file="Header.jsp" %>
<div class="container">
	<center>
  <h2><font style="font-family:fantasy;">Baggage</font></h2>
  </center>
    <ul class="nav nav-tabs">
      <li1 id="li11"><a data-toggle="tab" href="#menu1"  >Lost Luggage</a></li1>
      <li1 id="li11"><a data-toggle="tab" href="#menu2"  >Excess Luggage</a></li1>
     </ul>
  <div class="tab-content">
        <div id="menu1" class="tab-pane fade" >
           <form id="formDiv" action="MainServlet" name="schedule" method="post">
      <br>
    		Ticket Id:<input type="text" id="Ticket Id" name="Ticket Id" required><br><br>
    		Category:<select name="displayOrder">
			<option>Accessories</option>
			<option>Cash</option>
			<option>Documents</option>
			<option>Electronic Items</option>
			<option>Others</option>
			</select><br><br>
			Description:<input type="text" id="description" name="Description"><br><br>
			Date:<input id="date" type="date"  name="date"  required><br><br>
			Location:<select name="displayOrder">
			<option>Aircraft</option>
			<option>Airport</option>
			</select>
			<br><br>
			<input type="submit" id="Search_Arrivals" name="Submit">
			</form>
    </div>
     <div id="menu2" class="tab-pane fade" >
           <form id="formDiv" action="MainServlet" name="schedule" method="post">
       <br>
           Ticket Id:<input type="text" id="Ticket Id" name="Ticket Id" required><br><br>
           Extra Weight:<select name="displayOrder">
			<option>0-5 KG</option>
			<option>5-10 KG</option> 
			<option>10-15 KG</option> 
			
			</select><br><br>
			<input type="submit" id="Search_Arrivals" name="Submit">
           
           </form>
           </div>
           
      
   <div id="footer1" >
<br>
<br>
<center>
		<ul id="ul1">
			<li><a href="http://www.britishairways.com/en-in/information/about-ba">About Us</a></li>
			
			<li><a href="">© Copy Rights Reserved</a></li>
			
			<li><a href="">Report</a></li>
			
			<li><a href="">Disclaimer</a></li>
			<br>
			<br>
			<br>
			<li><a href="https://www.facebook.com/" ><img src="images/social_icon1.png"
					alt="Facebook"style="width: 25px; height: 20px; padding: 0px"></a></li>
					
			<li><a href="https://www.twitter.com"><img src="images/social_icon2.png"
					alt="Twiter"
					style="width: 25px; height: 20px; padding: 0px"></a></li>
					
			<li><a href="https://plus.google.com"><img src="images/social_icon3.png"
					alt="Google+"
					style="width: 25px; height: 20px; padding: 0px"></a></li>
			<li><a href="https://in.linkedin.com/"><img src="images/social_icon4.png"
					alt="linkedin"
					style="width: 25px; height: 20px; padding: 0px"></a></li>
			<li><a href="https://www.skype.com/en/"><img src="images/social_icon5.png"
					alt="skype"
					style="width: 25px; height: 20px; padding: 0px"></a></li>

		</ul>
		</center>
	</div>
	
</body>
<jsp:include page="Footer.jsp"></jsp:include>
</html>