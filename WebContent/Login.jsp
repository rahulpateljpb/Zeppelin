<!DOCTYPE html>
<%@page import="com.ahd23.aja106.inno456.util.Utility"%>
<html>
<head>
 <jsp:include page="Header.jsp" /> 
<style type="text/css">
#log
{
	top:5px;
    /* border-radius: 10px;  */
    background: #4c4d00;
    color:white;
  
    width: 80px;
    height: 50px; 

}
#bc
{
	
    border-radius: 10px;
    background: cream;
  
    width: 70px;
    height: 40px; 
    font-size: 20px;
font-family: serif;
font-style: italic;
color:black;

}
p
{
font-size: 30px;
font-family: serif;
font-style: italic;
font-weight:bold;
color: black;
}

form#f02{

position:relative;
left:35%;
padding: 30px;
border-spacing: 10px;
background-color: rgba(5,4,2,0.5);
border-radius:25px;
width:350px;
height:180px;

}
/* #Foot
 #Foot
{
margin-top: 100px;
} 
body{
   
    background-size:cover; 
    
    background-repeat: no-repeat;
    background-position: cover;
} 
d
{
font-size: 20px;
font-family: serif;
font-style: italic;
color:white;

}
 

</style>
<script type="text/javascript">
function method(){
var LoginFailed='<%=request.getAttribute("LoginFailed")%>';
	if(LoginFailed=='Please enter correct Email Id / Password')
		alert("Please enter correct Email Id / Password");
	<%-- <%
	if(session.getAttribute("previousPage").equals("Login")){
		session.setAttribute(Utility.BOOKING_FLIGHT_NO_J, request.getParameter("flightNo"));
		session.setAttribute(Utility.BOOKING_PRICE, request.getParameter("price"));
	}
	%> --%>
	
	
}
</script>


</head>
<body background="002-subtle-light-pattern-background-texture-vol5.jpg" onload="method()">

<center>
<p>Login</p>
</center>



<form action="MainServlet" method="post" id="f02">	<table cellpadding="15" cellspacing="2"  border="0">
		<tr>
			<td><d>User Id:</d></td>
			<td><input type="text" placeholder="User Id" name="UserId"></td>
		</tr>
		<tr>
			<td><d>Password:</d></td>
			<td><input type="password" placeholder="Password" name="Password"></td>
	    </tr>
	   
	</table>
	<br>
	   <br>
	<center>
	<input type="submit" value="Login" name="login" id="bc">
    </center>
    <input type="hidden" name="hiddenAction" value="login">
</form>
<div id="Foot">
<jsp:include page="Footer.jsp"></jsp:include>
</div>


</body>
</html>