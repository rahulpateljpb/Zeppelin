<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="javascripts/callLocationsApi.js"></script>
<link rel="stylesheet" type="text/css" href="Home.css">
<style type="text/css">
/* div.transbox {
      top: 50px;
         left: 50%;
    width: 600px;
    padding: 25px;
    border: 25px grey;
    margin: 25px;
     box-shadow: 10px 10px 5px #888888;
    
    background-color: rgba(5,4,2,0.5); 
    border-radius: 25px;
    border:2px white;
    }
div.transbox p{
margin: 5%;
    font-weight: bold;
    color: #000000;
} */
body{

   background-repeat:no-repeat;

   background-size:cover;
}
img{
border-radius:25px;}
cent{
color: blue;}
table#t02 {
	background-color: rgba(5,4,2,0.2);
	padding: 25px;
	border-spacing: 15px;
	border-style: hidden;
	border-radius: 25px;
}

</style>

<title>Flight Offers</title>
<script type="text/javascript" src="js/DateValidation.js">

</script>


<script>
		$.ajax({
			type : "post",
			url : "IndexPage",
			success : function(locationsJSON) {
				parseLocationApi(locationsJSON);
			}
		});
	</script>
<link rel="stylesheet" type="text/css" href="css/Home.css">
</head>
<body background="images/A380Front_5A12.jpg" >
<%@ include file="Header.jsp" %>


<center>
<div id="first">
			<center>
				<h1>
					<b>Search Offers</b>
				</h1>
			</center>
		</div>

<!-- <div class="transbox" id=cent> -->

<form action="MainServlet" method="post" style=font-size:20px onsubmit="return locationValidation()">

<table id="t02">
<tr>
<td>
Departure City:</td> <!-- <select>
  <option value="London">London</option>
  <option value="NewYork">NewYork</option>
  <option value="Paris">Paris</option>
  <option value="LasVegas">LasVegas</option>
</select><br><br> -->
<td>
<input type="text" list="dataList" name="DepartureCity" id="DepartureCity" width="3%" required></d>
								<dataList id="dataList"> </datalist> <br>
								</td>
								</tr>
<tr>
<td>								
Arrival City: </td> <!-- <select>
  <option value="London">London</option>
  <option value="NewYork">NewYork</option>
  <option value="Paris">Paris</option>
  <option value="LasVegas">LasVegas</option>
</select> -->
<td>
<input type="text" list="dataList" name="ArrivalCity" id="ArrivalCity" width="3%" required></d>
								<dataList id="dataList"> </datalist> 
</td>
</tr>
<br><br>
<tr>
<td>
Cabin :</td>
<td>  <select name="Cabin">
  <option value="economy">Economy</option>
  <option value="premiumEconomy">PremiumEconomy</option>
  <option value="business">Business</option>
  <option value="first">First</option>
</select>
</td>
</tr>

<tr>
<td>
Journey Type:</td>
<td>
 <input type="radio" name="JourneyType" value="oneWay" required>One Way
<input type="radio" name="JourneyType" value="roundTrip" required>Round Trip
</td>
</tr>
<tr>
<td>
Range:</td>
<td> <select name="Range">
<option value="monthLow">Month Low</option>
<option value="yearLow">Year Low</option>
</select>
</td>
</tr>
</table>

<input type="submit" value="Search" id="Search_Arrivals">
<input type="hidden" name="hiddenAction" value="OffersApi">

</form>


</center>
<%@ include file="Footer.jsp" %>
</body>
</html>