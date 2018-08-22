<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<title>Flight Status</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="javascripts/callLocationsApi.js"></script>
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

<script type="text/javascript" src="js/DateValidation.js">

</script>

<script>
function exist()
{
	str='<%=request.getAttribute("user") %>';
	if(str=="error")
		{
		alert("Entered wrong flight no. please try again");
		}
	str='<%=request.getAttribute("user") %>';
	if(str=="date")
		{
		alert("Entered wrong date please try again");
		}
	if(str=="flight not found")
	{
	alert("No flights are available try again");
	}

	
}
</script>

</head>
<body background ="images/marble_texture1824.jpg" onload="exist()">
<%@ include file="Header.jsp" %>
<script>
		$.ajax({
			type : "post",
			url : "IndexPage",
			success : function(locationsJSON) {
				parseLocationApi(locationsJSON);
			}
		});
	</script>
	
<div class="container">
	<center>
  <h2><font style="font-family:fantasy;">Flight Status</font></h2>
  </center>
  
  <ul class="nav nav-tabs">
    
    <li1 id="li11"><a data-toggle="tab" href="#menu1"  >Route</a></li1>
    <li1 id="li11"><a data-toggle="tab" href="#menu2">Flight Number</a></li1>

   
  </ul>

  <div class="tab-content">
    
    <div id="menu1" class="tab-pane fade" >
     
      <form id="formDiv" action="MainServlet" name="schedule" method="post" onsubmit="return MaxDate()">
      <br>
     
			Origin: <input type="text" name="route_source" List="dataList" id="Origin" name="Origin" height="30px" required>&nbsp;&nbsp;
			<dataList id="dataList"></dataList>
			Destination: <input type="text" name="route_destination" List="dataList" id="Destination" name="Destination" height="30px" required>
			<dataList id="dataList"></dataList>
			<br><br>Display Order:
			<select name="displayOrder">
			    
				<option value="SearchArrivalByRoute">Arriving</option>
				<option value="SearchDepartureByRoute">Departure</option>
			</select>
			<br><br> Date:<input id="date" type="date"  name="date" required>
			
			&nbsp;&nbsp;&nbsp;&nbsp;<!-- Time:
			<input id="time" type="time"  name="time" value="00:00" > -->
			<br><br>
			<input type="submit" id="Search_Arrivals" value="Get Flight Status" name="status">
			<input type="hidden" name="hiddenAction" value="SearchRoute">
		</form>
    </div>
    <div id="menu2" class="tab-pane fade">


<form id="formDiv" action="MainServlet" name="schedule" method="post">
<br>
			Flight Number: <input type="text" id="flightNo" name="flightNo" height="30px" required>
			<br><br>Display Order:
			<select name="arrDep">
			    
				<option value="Arrival">Arriving</option>
				<option value="Departure">Departure</option>
			</select>
			&nbsp;&nbsp;&nbsp;&nbsp; Date:<input id="date" type="date"  name="scheduledDepartureDate" required>
			<br><br>
			<input type="submit" id="Search_Arrivals" value="Get Flight Status" name="status" >
			<input type="hidden" name="hiddenAction" value="SearchFlightStatus">
		</form>
	</div>
    
     <!--  <form id="formDiv" action="MainServlet" name="schedule" method="post" >
      <br>
			Origin: <input type="text" id="Origin" name="Origin" height="30px" required>
			<br><br>Display Order:
			<select > -->
			    
</div>
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

		</ul></center>
	</div>
	
</body>
<jsp:include page="Footer.jsp"></jsp:include>
</html>