<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form name="Login"  method="post" action="MainServlet" >
<a  style="position:absolute;left:850px;top:15px; color: white">Login</a>

<input type="text" name="loginId" placeholder="Email Id" style="position:absolute;left:900px;top:15px;">
<input type="password" name="pass" placeholder="Password"style="position:absolute;left:1085px;top:15px;">
<input type="submit" name="Login" value="Login" id="log" style="position:absolute;left:1270px;top:10px;">
<input type="hidden" name="hiddenAction" value="login">
</form> 
</body>
</html>