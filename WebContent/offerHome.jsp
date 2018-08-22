<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<link rel="stylesheet" type="text/css" href="Home.css">
<style type="text/css">
.jm-item {
    padding: 10px;
    display: inline-block;
    text-align: left;
}
.jm-item-wrapper {
	position: relative;
	padding: 7px;
	background: #E8D7B6;
}
.jm-item-image {
	position: relative;
    overflow: hidden;
}
.jm-item-image img {
	display: block;
}
.jm-item-title {
    position: absolute;
    left: -10px;
    bottom: 17px;
    background:  #2952a3;
    line-height: 1.5em;
    font-weight: normal;
    padding: 7px 9px 6px;
    text-transform: uppercase;
    font-family: 'Oswald', sans-serif;
    color: #FFFFFF;
    font-size: 1.4em;
}
.jm-item-overlay {
	background: #000;
	opacity: 0;
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	-webkit-transition: opacity 0.5s ease-in 0s;
	-moz-transition: opacity 0.5s ease-in 0s;
	-o-transition: opacity 0.5s ease-in 0s;
	transition: opacity 0.5s ease-in 0s;
}
.jm-item-wrapper:hover .jm-item-overlay {
	opacity: 0.3;
}
.jm-item-button {
	height: 50px;
	width: 50px;
	text-align: center;
	position: absolute;
	left: 50%;
	margin-left: -25px;
}
.jm-item-button a {
    border-radius: 50%;
    -webkit-border-radius: 50%;
    background:  #2952a3;
    text-transform: uppercase;
    font-family: 'Oswald', sans-serif;
    color: #FFFFFF;
    font-size: 1em;
    line-height: 50px;
    -webkit-transition: all 0.2s ease-in 0s;
    -moz-transition: all 0.2s ease-in 0s;
    -o-transition: all 0.2s ease-in 0s;
    transition: all 0.2s ease-in 0s;
    text-decoration: none !important;
    display: block;
}
.jm-item-button a:hover {
	background: #3b3b3b;	
}
.first .jm-item-button {
	-webkit-transition: all 0.5s ease-in 0.5s;
	-moz-transition: all 0.5s ease-in 0.5s;
	-o-transition: all 0.5s ease-in 0.5s;
	transition: all 0.5s ease-in 0.5s;
	top: -50px;	
}
.first .jm-item-wrapper:hover .jm-item-button {
	top: 20%;	
}
body{

   background-repeat:no-repeat;

   background-size:cover;
}
img{
border-radius:25px;}
</style>
<script>
function exist()
{
	var str='<%=request.getAttribute("user") %>';
	if(str=="error")
		{
		alert("There is no offers for the selected options ");
		}
	
	
}
</script>

<title>offerhome</title>
</head>
<body background="images/White-Background-Abstract-Photos.jpg " onload="exist()">
<%@ include file="Header.jsp" %>


<center>


<div class="jm-item first">
	<div class="jm-item-wrapper">
		<div class="jm-item-image">
			<img src="images/oooo.jpg" alt="Book Flights" height="300" width="900" />
			<span class="jm-item-overlay"> </span>
			<div class="jm-item-button"><a href="offerInput.jsp">View</a></div>
		</div>
		<div class="jm-item-title">Book Flights</div>
	</div>
</div>
<div class="jm-item first">
	<div class="jm-item-wrapper">
		<div class="jm-item-image">
			<img src="images/hotel1.jpg" alt="Book Hotels" height="300" width="900" />
			<span class="jm-item-overlay"> </span>
			<div class="jm-item-button"><a href="#">View</a></div>
		</div>
		<div class="jm-item-title">Book Hotels</div>
	</div>
</div>
<div class="jm-item first">
	<div class="jm-item-wrapper">
		<div class="jm-item-image">
			<img src="images/Taxi.jpg" alt="Book Cabs" height="300" width="900" />
			<span class="jm-item-overlay"> </span>
			<div class="jm-item-button"><a href="#">View</a></div>
		</div>
		<div class="jm-item-title">Book Cabs</div>
	</div>
</div>
</center>
<%@ include file="Footer.jsp" %>
</body>
</html>