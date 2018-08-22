<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#log
{
	top:5px;
   border-radius: 10px;
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
    margin-top: 0px;
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
#Title1
{
font-size:xx-large;
display: inline-block; 
font-style:oblique;
color: white;
}
</style>
<div id="a">&nbsp;
<img src="images/logo-1.png" height="80px" width="70px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div id="Title1"> Zeppelin </div> <br>


<div id="tag">Experience Comfort Distinction..</div>

<form name="Login"  onsubmit="return validateForm()" action="MainServlet" method="post">
<a  style="position:absolute;left:850px;top:15px; color: white">Login</a>

<input type="text" name="loginId" placeholder="Email Id" style="position:absolute;left:900px;top:15px;">
<input type="password" name="pass" placeholder="Password"style="position:absolute;left:1085px;top:15px;">
<input type="submit" name="Login" value="Login" id="log" style="position:absolute;left:1270px;top:10px;">
</form>
<a href="jsp/Register.jsp" style="position:absolute;left:1230px;top:45px; color:white;">RegisterNow</a>

<center>
<ul id="ul">
 	<li id="li"><a href="Home.jsp">Home</a></li>
  	<li id="li"><a href="Status.jsp">Flight Status</a></li>
   	<li id="li"><a href="offerHome.jsp">Offers</a></li>
	<li id="li"><a href="Today's_Schedule_By_Time.jsp">Today's Schedule</a></li>
	<li id="li"><a href="feedback.jsp">Feedback</a></li>
  	<li id="li"><a href="ContactUs.jsp">Contact Us</a></li>
 
</ul>  




</center>
</div>
</head>
</head>
<body>

</body>
</html>