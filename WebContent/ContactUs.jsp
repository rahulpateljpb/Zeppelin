<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="Header.jsp"></jsp:include>
<style>
#contact_table {
	background-color: rgba(5,4,2,0.09);/*#ffedcc;*/
	border-radius: 25px;
	/* position: absolute;top: 300px; */
	margin-top: -30px;
}
#contact_table tr{

color:black;
padding:25px;
border-radius:5px;
 margin:10px; 

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
<form id="contact_form" action="" method="POST" >
	<table id="contact_table" border="0" width="350" height="300">
		<tr>
			<td>First Name:</td>
			<td><input id="name" class="input" name="name" type="text" value="" size="20" required /></td><br>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><input id="lastname" class="input" name="lastname" type="text" value="" size="20" required /></td><br>
		</tr>
		<tr>
			<td>Phone No:</td>
			<td><input id="phone" class="input" name="phone" type="text" value="" size="20" required /></td><br >
		</tr>
		<tr>
			<td>Your email:</td>
			<td><input id="email" class="input" name="email" type="text" value="" size="20"  required/></td><br >
		</tr>
		<tr>
			<td>Your message:</td>
			<td><textarea id="message" class="input" name="message" rows="7" cols="20" required></textarea></td><br>
		</tr>
	</table>
		<br><input id="Search_Arrivals" type="submit" value="Send " align="center" />
</form>
</center>	
</body>
<jsp:include page="Footer.jsp"></jsp:include>
</html>