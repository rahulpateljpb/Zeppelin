<%@page import="com.ahd23.aja106.inno456.util.Utility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
from:<%=session.getAttribute(Utility.BOOKING_SOURCE) %>
To:<%=session.getAttribute(Utility.BOOKING_DESTINATION) %>
<form>
	<input type="text" name="passengres" >
	<input type="text" name="passanger1">
	<input type="text" name="passanger2">
	<input type="text" name="passanger3">
	<input type="text" name="passanger4">
	<input type="text" name="passanger5">
	<input type="text" name="passanger6">
	<input type="text" name="passanger7">
	<input type="text" name="passanger8">
	<input type="text" name="passanger9">
	<input type="text" name="passanger10">
	<input type="button" value="Calculate Price">
	<hr>
	<label>Total price</label>
	<input type="submit" value="Submit">
	<input type="hidden" name="hiddenAction" value="oneWayBooking">
</form>
</body>
</html>