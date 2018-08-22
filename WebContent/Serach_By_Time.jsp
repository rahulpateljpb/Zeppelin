<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp"></jsp:include>
<script>

function validateForm() {
    var x = document.forms["Login"]["location"].value;
    
    if (x == null || x=="") {
        alert("Enter the location.");
        return false;
    }
}
</script>

<style type="text/css">
table#t01{
    visibility: visible;
}
table#t01{
background-color: rgba(5,4,2,0.3);
padding: 1px;
border-spacing: 15px;
border-style: hidden;
border-radius: 25px;
}
body{background-image:url(file:///C:/Users/999779/Desktop/1.jpg);

   background-repeat:no-repeat;

   background-size:cover;
}
img{
border-radius:25px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search By Time</title>

<link rel="stylesheet" type="text/css" href="Home.css">
</head>
<body >

<form action="MainServlet" name="Login"  onsubmit="return validateForm()">
<div id="first">
 
<center><h1><b>Search Arrivals By Time</b></h1></center> 
</div>

<div id="second" >
<br>
<br>
<center>
<table  cellpadding="2" cellspacing="2" id="t01" border="0" width="50%" >

<tr>
<td align="center"><input type="radio" value="ByArrivalLocation" name="location" >By Arrival Location</td>
<td align="center"><input type="radio" value="ByDepartureLocation" name="location">By Departure Location</td>
</tr>
<tr>
<td align="center"><h3>Arrival Location</h3></td>
<td align="center"><h3><input type="text" name="location" id="location"></h3></td>
</tr>

<tr>
<td align="center"><h3>Start time</h3></td>
<td align="center">
<select>
<option value="00:00">00:00</option>
<option value="01:00">01:00</option>
<option value="02:00">02:00</option>
<option value="03:00">03:00</option>
<option value="04:00">04:00</option>
<option value="05:00">05:00</option>
<option value="06:00">06:00</option>
<option value="07:00">07:00</option>
<option value="08:00">08:00</option>
<option value="09:00">09:00</option>
<option value="10:00">10:00</option>
<option value="11:00">11:00</option>
<option value="12:00">12:00</option>
<option value="13:00">13:00</option>
<option value="14:00">14:00</option>
<option value="15:00">15:00</option>
<option value="16:00">16:00</option>
<option value="17:00">17:00</option>
<option value="18:00">18:00</option>
<option value="19:00">19:00</option>
<option value="20:00">20:00</option>
<option value="21:00">21:00</option>
<option value="22:00">22:00</option>
<option value="23:00">23:00</option>
<option value="24:00">24:00</option>
</select></td>
</tr>

<tr>
<td align="center"><h3>End time</h3></td>
<td align="center">
<select>
<option value="00:00">00:00</option>
<option value="01:00">01:00</option>
<option value="02:00">02:00</option>
<option value="03:00">03:00</option>
<option value="04:00">04:00</option>
<option value="05:00">05:00</option>
<option value="06:00">06:00</option>
<option value="07:00">07:00</option>
<option value="08:00">08:00</option>
<option value="09:00">09:00</option>
<option value="10:00">10:00</option>
<option value="11:00">11:00</option>
<option value="12:00">12:00</option>
<option value="13:00">13:00</option>
<option value="14:00">14:00</option>
<option value="15:00">15:00</option>
<option value="16:00">16:00</option>
<option value="17:00">17:00</option>
<option value="18:00">18:00</option>
<option value="19:00">19:00</option>
<option value="20:00">20:00</option>
<option value="21:00">21:00</option>
<option value="22:00">22:00</option>
<option value="23:00">23:00</option>
<option value="24:00">24:00</option>
</select>
</td>
</tr>
</table>
</br>
<input type="Submit" name="Search" value="Search" id="search" >
</center>
</div>
 </form>
 </body>
 <jsp:include page="Footer.jsp"></jsp:include>
</html>