<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="./css/Home.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<jsp:include page="Header.jsp"></jsp:include>
<style type="text/css">
table#t01{

padding: 1px;
border-spacing: 15px;
background-color: rgba(5,4,2,0.1);
border-radius:25px;
}
img{
border-radius:25px;}
</style>
<script type="text/javascript" src="js/validate.js">

</script>

</head>
<body background="images/marble_texture1824.jpg" onload="exist()">
<script>
function exist()
{
	str='<%=request.getAttribute("user") %>';
	if(str=="You Are Already Registerd")
		{
		alert("You Are Already Registerd");
		}
	
	
}
</script>
<form action="MainServlet" method="post" onsubmit="return validation()">
<center>
<br>
<table  cellpadding="2" cellspacing="2" id="t01" border="0">

<tr>
<td>Email ID</td>
<td><input type="text" name="Email" id="Email" required></td>
<td><p id="Email_ID" style="color: red;"></p></td>
</tr>

<tr>
<td>Confirm Email ID</td>
<td><input type="text" name="ConfirmEmail" id="ConfirmEmail" required></td>
<td><p id="Confirm_Email_ID"></p></td>
</tr>

<tr>
<td>Choose Password</td>
<td><input type="password" name="password" id="password" required></td>
<td><p id="Choose_Password"></td>
</tr>

<tr>
<td>Confirm Password</td>
<td><input type="password" name="ConfirmPassword" id="ConfirmPassword" required></td>
<td><p id="Confirm_Password"></td>
</tr>

<tr>
<td>First Name</td>
<td><input type="text" name="FName" id="FName" required></td>
<td><p id="First_Name"></td>
</tr>

<tr>
<td>Last Name</td>
<td><input type="text" name="LName" id="LName" required></td>
<td><p id="Last_Name"></td>
</tr>

<tr>
<td>Mobile No.</td>
<td><input type="text" name="mob" id="mob" required></td>
<td><p id="mob_no"></td>
</tr>
<tr>
<td>Address</td>
<td><textarea rows="3" cols="20" id="address" name="address" required></textarea></td>

<td><p id="Address"></td>
</tr>

<tr>
<td>Country</td>

<td><select name="cntry" id="cntry" required>
<option value="US">US</option>
<option value="India">India</option>
</select></td>
<td><p id="Country"></td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" name="gender" value="Male">Male&nbsp;<input type="radio" name="gender" value="Female">Female</td>
<td><p id="Gender"></td>
</tr>
</table>
<br>


<input type="submit" name="Submit" value="Submit" id="log">
</center>
<input type="hidden" name="hiddenAction" value="register" >
</form>
</body>
<jsp:include page="Footer.jsp"></jsp:include>

</html>