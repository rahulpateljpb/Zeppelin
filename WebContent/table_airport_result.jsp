<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Airport Status</title>
</script>
<jsp:include page="Header.jsp" />

<style>
#tr{
background-color: #d9d9d9;
color:white;
padding:15px;
margin:10px;

}
#td{
font-size-adjust:inherit;
color:black;
padding:15px;
margin:10px;
}
#tr1{
background-color: #d9d9d9;
padding:10px;
margin:5px;
}
</style>
</head>
<body>
<br>
<br>
<center>
<table>
<tr id="tr" >
<td id="td">Flight no</td>
<td id="td">From</td>
<td id="td">To</td>
<td id="td">Departure Terminal</td>
<td id="td">Scheduled Departure</td>
<td id="td">Updated Departure</td>
<td id="td">Status</td>
</tr>


</table>
</center>
</body>
</html>