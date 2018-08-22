<%@page import="java.io.Console"%>
<%@page import="com.ahd23.aja106.inno456.util.Utility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="Header.jsp"></jsp:include>
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

background-repeat:no-repeat;
background-color:rgba(5,4,2,0.5);
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
	color: white;
	clear: both;
	text-align: center;
	padding: 10px;
	margin-top: 400px;
}
#BookingTable th{
background-color: #cc8400; 
font-size-adjust:inherit;
color:black;
text-align:center;
padding:15px;
border-radius:5px;
height: 15px;
 margin:10px; 
}

#BookingTable tr{
background-color: rgba(5,4,2,0.5);/*#ffedcc;*/
color:black;
padding:25px;
border-radius:5px;
 margin:10px; 

text-align: center;
}
</style>
<script type="text/javascript">
function myFunction() {
    var x = document.getElementById("NoOfPassangers").value;
    document.getElementById("NoOfPassangers").disabled=true; 
    var price=<%=request.getParameter("price")%>;
    document.getElementById("pph").innerHTML=price;
    document.getElementById("pt").innerHTML=price*3;
    var table = document.getElementById("BookingTable");
    
    alert("Are You Sure?");
    for ( var i = 0; i < x; i++) {
		var row = table.insertRow(i + 1);
		var cell0 = row.insertCell(0);
		var cell1 = row.insertCell(1);
		var cell2 = row.insertCell(2);
		cell0.innerHTML=i+1;

		
		cell1.innerHTML='<input type="text" id='+(i+1)+' name=name'+(i+1)+' style="background-color: rgba(5,4,2,0.1)">';
		cell2.innerHTML='<input type="text" id='+(i+1)+' name=age'+(i+1)+' style="background-color: rgba(5,4,2,0.1)">'

    }
}
function maintainSession(){
	
	
	console.log(<%=request.getParameter("flightNo")%>);
	document.getElementById("origin").innerHTML=<%=session.getAttribute(Utility.BOOKING_SOURCE)%>;
	document.getElementById("destination").innerHTML=<%=session.getAttribute(Utility.BOOKING_DESTINATION)%>;
}
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" language="javascript">// <![CDATA[
function showHide() {
    var ele = document.getElementById("showHideDiv");
    if(ele.style.display == "block") {
            ele.style.display = "none";
      }
    else {
        ele.style.display = "block";
    }
}
// ]]></script>
</head>
<body background ="images/marble_texture1824.jpg" onload="maintainSession()">


	

	<center>
  <h2><font style="font-family:fantasy;">One Way Trip Booking</font></h2>
  </center>
  
 

  
    
  
     
      <form id="formDiv" action="TicketBooking" name="schedule" method="post">
      <br>
     		<center>
			Origin:<p id="origin"></p>
			&nbsp;&nbsp;&nbsp;&nbsp;
			Destination:<p id="destination"></p>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<br><br>
			<table id="BookingTable" cellpadding="3" cellspacing="3">
				<tr>
					<th> Sr No. </th>
					<th> Name </th>
					<th> Age </th>
				</tr>
			</table>
			<br><br>No OF Passangers:
			<select name="NoOfPassangers" id="NoOfPassangers" onchange="myFunction()">
			    
			    <option value="--Select--">--Select--</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				
			</select>
			
			
			&nbsp;&nbsp;&nbsp;&nbsp;<!-- Time:
			<input id="time" type="time"  name="time" value="00:00" > -->
			<br><br>
			
			
			<input type="hidden" name="hiddenAction" value="One Way Booking">				
		
			<p><input type="button" value="Calculate Price" onclick="return showHide();" /></p>
			</center>
			<input type="hidden" name="ticketAction" value="confirm">
		</form>
 			
    	<div id="showHideDiv" style="display:none;">
    		<center>
    			Price for 1 Passanger:<p id="pph"></p><br>
    			Total Price:<p id="pt"></p><br>
    			<input type="button" value="Confirm"/>
    		</center>
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
</html>