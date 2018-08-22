<%@page import="com.ahd23.aja106.inno456.bean.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

table#register {
	background-color: rgba(5,4,2,0.1);
	padding: 10px;
	border-spacing: 15px;
	border-style: hidden;
	border-radius: 25px;
    table-layout: fixed;
	
}


body {
	background-repeat: no-repeat;
	background-size: cover;
}
#reg_foot
{
margin-top: 120px;
}
#reg
{
margin-top: 100px;
display: inline block;

}
#sh
{
left: 150px;
top: 200px;
}

</style>
</head>
<body background="images/marble_texture1824.jpg">
<center>

<%Users use=(Users) session.getAttribute("UserDetail");
String salute;
if(use.getGender().equals("Male"))
{
	salute="Mr";
}
else
{
	salute="Miss";
}
%>
<h1>Welcome
<%=salute+"."+" "+use.getFirstName()%></h1>
</center>
<%Users user=(Users) session.getAttribute("UserDetail");
String salutation;
if(user.getGender().equals("Male"))
{
	salutation="Mr";
}
else
{
	salutation="Miss";
}
%>

<center>

<div id="reg">

<form action="FileUpload" method="post" enctype="multipart/form-data">
	
	<table id="register">
	<tr><td rowspan="10"><%
	Users used=(Users) session.getAttribute("UserDetail");
	if(used.getImagePath()==null || used.getImagePath()==""){%>

<img class="img-square" src="images/sampleImage.png" height="120px" width="120px">
<%}else{ 
System.out.println(used.getImagePath());
%>
<img class="img-square" src='<%=used.getImagePath()%>'height="120px" width="120px">

<%} %></td></tr>
	<tr><td ></td></tr>
		<tr><td colspan="10">Email ID:&nbsp;<%=user.getEmailId()%></td></tr>
		<tr><td colspan="10">Name:&nbsp;<%=salutation+" "+user.getFirstName() +" "+user.getLastName()%></td></tr>
		<tr><td colspan="10">Address:&nbsp;<%=user.getAddress()%></td></tr>
		<tr><td colspan="10">Country:&nbsp;<%=user.getCountry()%></td></tr>
		<tr><td colspan="10"><input type="file" name="file" size="5000" accept="image/gif, image/jpeg, image/png"></td></tr>
		<tr><td><input type="submit" value="Upload Image">
		<input type="hidden" name="hiddenAction" value="uploadImage">
		</td></tr>
	
	</table>

</form>

</div>
</center>
<div id="reg_foot">

<jsp:include page="Footer.jsp"></jsp:include>
</div>
</body>

</html>