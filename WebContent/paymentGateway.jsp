<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Gateway</title>
<jsp:include page="Header.jsp"/>
<style>
#paymentGateway {
	background-color: rgba(5,4,2,0.1);/*#ffedcc;*/
	border-radius: 25px;
	/* position: absolute;top: 300px; */
	margin-top: -30px;
}
#paymentGateway tr{

color:black;
padding:20px;
border-radius:5px;
 margin:8px; 

text-align: center;
}
#th{
background-color: #cc8400; 
font-size-adjust:inherit;
color:black;
text-align:center;
padding:15px;
border-radius:5px;
height: 15px;
/* margin:10px; */
}



</style>
</head>
<body background="images/marble_texture1824.jpg">
<center>
	<form id="paymentGateway" action="" method="POST" >
	<table id="paymentGateway" border="0" width="450" height="350">
		<tr>
			<td>Payment Type:</td>
			<td><input id="type"  name="type" type="radio" value="Credit-Card" />Credit-Card<br>
			<input id="type"  name="type" type="radio" value="Debit-Card" />Debit-Card<br>&nbsp;
			<input id="type"  name="type" type="radio" value="Net-Banking" />Net-Banking</td><br>
		</tr>
		<tr>
			<td>Card Number:</td>
			<td><input id="CardNumber"  name="CardNumber" type="text" value="" size="16" required /></td><br>
		</tr>
		<tr>
			<td>Card-Holder Name:</td>
			<td><input id="cardHolderName"  name="cardHolderName" type="text" value="" size="16" required /></td><br >
		</tr>
		<tr>
			<td>Expiry Date:</td>
			<td><input id="date" type="date"  name="date"  required/></td><br >
		</tr>
		<tr>
			<td>CVV:</td>
			<td><input type="text" id="cvv"  name="cvv" size="3" required></input></td><br>
		</tr>
	</table>
		<br><input id="Search_Arrivals" type="submit" value="Make Payment" align="center" />
</form>
</center>
</body>
<jsp:include page="Footer.jsp"/>
</html>