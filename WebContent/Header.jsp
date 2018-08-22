<%@page import="com.ahd23.aja106.inno456.bean.Users"%>
<%@page import="com.ahd23.aja106.inno456.dao.DBOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
#log
{
	top:5px;
    /* border-radius: 10px;  */
    background: #4c4d00;
    color:white;
  
    width: 60px;
    height: 30px; 

}
#ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:  #262626;
    
	margin-left: -5px;
	margin-right: -10px;
	
    
}

#li {
    float: left;
    border-right:1px solid #bbb;
}

#li:last-child {
    border-right: none;
}

#li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

#li a:hover:not(.active) {
    background-color: #595940;
}

.active {
    background-color: #595940;
}
#a{
    background-color: #7f8000;
    margin-top: -10px;
	margin-left: -8px;
	margin-right: -10px;
	margin-bottom: 5px;
	
	

}
img{
border-radius: 4px 4px 0 0;
left:100px;
}
#tag{
font-family: cursive;
color: white;
font-size: medium;
font-style: oblique;
padding:2px;
padding-left: 2px;
}
.img-circle {
    border-radius: 50%;
     float:right;
  
  height:60px;
  width: 60px;
  display: inline-block;
  
}

#a1{
display:inline-block;
float:right;
padding-right: 5px;
padding-bottom: 50px;
position:absolute;left:1150px;top:25px;
}
#a2{
display:inline-block;
float:right;
padding-right: 5px;
padding-bottom: 50px;
position:absolute;left:1250px;top:80px;
}
</style>
<div id="a">&nbsp;
<img src="images/logo-1.png" height="80px" width="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="images/zepplin.jpg" height="80px" width="100px">
<div id="tag">Experience Comfort Distinction..</div>  




<!-- <form name="Login"  onsubmit="registerSuccessful()" >
<a  style="position:absolute;left:850px;top:15px; color: white">Login</a>

<input type="text" name="loginId" placeholder="Email Id" style="position:absolute;left:900px;top:15px;">
<input type="password" name="pass" placeholder="Password"style="position:absolute;left:1085px;top:15px;">
<input type="submit" name="Login" value="Login" id="log" style="position:absolute;left:1270px;top:10px;">
<input type="hidden" name="hiddenAction" value="login">
</form> -->
<form method="post">
<%Users users=(Users)session.getAttribute("UserDetail"); 
	if(users==null){
%>
<a href="Login.jsp" style="position:absolute;left:1170px;top:45px; color:white;">Login</a> &nbsp;&nbsp;&nbsp;&nbsp;
<a href="Register.jsp" style="position:absolute;left:1230px;top:45px; color:white;">RegisterNow</a>
<%}else{ 
if(users.getImagePath()==null || users.getImagePath()==""){%>

<img class="img-circle" src="images/sampleImage.png"style="position:absolute;left:1250px;top:15px;">
<%}else{ 
System.out.println(users.getImagePath());
%>
<img class="img-circle" src='<%=users.getImagePath()%>' style="position:absolute;left:1250px;top:15px;">
<%} %>
<a id="a1" href="DashBoard.jsp" style="position:absolute;left:1250px;top:72px;"> <%=users.getFirstName()+" "+users.getLastName()%></a>
<a id="a2" href="LogoutServlet"style="position:absolute;left:1250px;top:90px;">Logout</a>| 
<%} %>

</form>
</div>
<center>
<div>
<ul id="ul" >
  <li id="li"><a href="Home.jsp">Home</a></li>
  <li id="li"><a href="Status.jsp">Flight Status</a></li>
   <li id="li"><a href="offerHome.jsp">Flight Offers</a></li>
  <li id="li"><a href="Today's_Schedule_By_Time.jsp">Today's Schedule</a></li>
   <li id="li"><a href="Baggage.jsp">Travel</a></li>
   <li id="li"><a href="ContactUs.jsp">Contact Us</a></li> 
  <li id="li"><a href="feedback.jsp">Feedback</a></li>
 
 
</ul>  





</div>
</center>
</head>

<body>

</body>
</html>