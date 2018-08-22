<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function exist()
{
	str='<%=request.getAttribute("user") %>';
	if(str=="time")
		{
		alert("Invailed time please try again");
		}
	if(str=="null")
	{
	alert("no flights for the selected time");
	}

	
}
</script>
<jsp:include page="Header.jsp"></jsp:include>
<script>
	function validateForm() {
		var x = document.forms["Login"]["location"].value;

		if (x == null || x == "") {
			alert("Enter the location.");
			return false;
		}
	}
</script>
<style type="text/css">
table#t01 {
	background-color: rgba(5,4,2,0.09);
	padding: 0px;
	border-spacing: 15px;
	border-style: hidden;
	border-radius: 25px;
}


body {
	background-repeat: no-repeat;
	background-size: cover;
}
d{
font-size: 20px;
font-family: serif;
font-style: italic;
color:black;

}
#cap{
font-family: fantasy;
color: #262626;


}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search By Time</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="javascripts/callLocationsApi.js"></script>
<link rel="stylesheet" type="text/css" href="css/Home.css">
</head>
<body background="images/marble_texture1824.jpg" onload="exist()">

<script>
		$.ajax({
			type : "post",
			url : "IndexPage",
			success : function(locationsJSON) {
				parseLocationApi(locationsJSON);
			}
		});
	</script>
	<form action="MainServlet" method="post" name="Login"
		onsubmit="return validateForm()">
		<div id="cap">
			<center>
				<h1>
					Todays Schedule
				</h1>
			</center>
		</div>

		<div id="second">
			<br> 
			<center>
				<table cellpadding="2" cellspacing="2" id="t01" border="0"
					width="30%">
					<tr>
					<td></td>
					<td></td>
					</tr>
					<tr>
						<td><h3><d>Location</d></h3></td>
						<td><h3><d><input type="text" list="dataList" name="location" width="1%" required></d>
								<dataList id="dataList"> </datalist>
							</h3></td>
					</tr>

					<tr>
						<td><h3><d>Start time</d></h3></td>
						<td><input type="time" name="startTime" required></td>
					</tr>

					<tr>
						<td><h3><d>End time</d></h3></td>
						<td><input type="time" name="endTime" required> 
						</td>
					</tr>

					<tr>
						<td><h3><d><input type="radio" name="searchTodays" value="searchTodaysArrivalByTime" id="searchTodays" required>Arrival</d></h3>
						
						</td>
						<td><h3><d><input type="radio" name="searchTodays" value="searchTodaysDepartureByTime" id="searchTodays" required>Departure</d></h3></td>
					</tr>
					
					<!-- <tr>
						<td align="center"><input type="submit"
							name="Search_Arrivals" value="Search Arrivals"
							id="Search_Arrivals"></td>
						<td align="center"><input type="submit" name="Search_Departure" value="Search_Departure" id="Search_Departure"></td>
					</tr> -->
					
				</table>
				<br>
				<input type="submit"
							name="Search_Arrivals" value="Search Arrivals"
							id="Search_Arrivals" >
			</center>
		</div>
		<input type="hidden" name="hiddenAction" value="SearchTodays" >
	</form>
</body>
<jsp:include page="Footer.jsp"></jsp:include>
</html>