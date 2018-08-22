<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<jsp:include page="Header.jsp" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="javascripts/callLocationsApi.js"></script>
<style type="text/css">
form#f01 {
	position: relative;
	left: 70px;
	padding: 1px;
	border-spacing: 15px;
	background-color: rgba(5, 4, 2, 0.5);
	border-radius: 25px;
	width: 450px;
	height: 500px;
}

body { /*  opacity: 0.4;
    /* filter: alpha(opacity=40);  */
	background-size: cover;
	/* background-image: url(images/4204970-london-at-night.jpg); */
	background-repeat: no-repeat;
	background-position: cover;
}

img {
	border-radius: 25px;
}

#bt {
	border-radius: 10px;
	background: cream;
	width: 70px;
	height: 40px;
	font-size: 20px;
	font-family: serif;
	font-style: italic;
	color: black;
}

p {
	font-size: 30px;
	font-family: serif;
	font-style: italic;
	color:White;
}

d {
	font-size: 20px;
	font-family: serif;
	font-style: italic;
	color: white;
}

#Foot {
	top: 500px;
}
</style>


<!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->

<script type="text/javascript">
	function setReadOnly(obj) {
		if (obj.value == "oneWay") {
			document.forms[0].returnDate.style.backgroundColor = "#ffffff";
			document.forms[0].returnDate.readOnly = 0;
			document.forms[0].returnDate.value = "";

		} else {
			document.forms[0].returnDate.style.backgroundColor = "#505050";
			document.forms[0].returnDate.readOnly = 1;
			document.forms[0].returnDate.value = "";
		}
	}
</script>

<script type="text/javascript" src="js/DateValidation.js">
	
</script>


</head>
<body background="images/london12.jpg">
	<script>
		$.ajax({
			type : "post",
			url : "IndexPage",
			success : function(locationsJSON) {
				parseLocationApi(locationsJSON);
			}
		});
	</script>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<form action="MainServlet" method="post" id="f01"
		onsubmit="return ValidateDate()">
		<center>
			<p>Search Flights</p>

			<table cellpadding="15" cellspacing="2" border="0">

				<tr>
					<td><d>Source</d></td>
					<td><input type="text" name="source" id="source" list="dataList" required>
						<datalist id="dataList">
						</datalist></td>
				</tr>

				<tr>
					<td><d>Destination</d></td>
					<td><input type="text" name="destination" list="dataList" id="destination"
						required> <datalist id="dataList">
						</datalist></td>
				</tr>
				<tr>
					<td><d>Journey Type</d></td>
					<td><input type="radio" name="journeyType" value="oneWay"
						checked onclick="setReadOnly(this)" required>
					<d>One Way</d> <input type="radio" name="journeyType"
						value="roundTrip" checked onclick="setReadOnly(this)" required>
					<d>Round Trip</d></td>
				</tr>
				<tr>
					<td><d>Journey Date</d></td>
					<td><input type="date" name="journeyDate" id="journeyDate"
						required /></td>
				</tr>
				<tr>
					<td><d>Return Date</d></td>
					<td><input type="date" name="returnDate" id="returnDate"
						required /></td>
				</tr>
				<tr>
					<td><d>Class</d></td>
					<td><select name="cabinType">
							<option value="business">
								<d>Business</d>
							</option>
							<option value="economy">
								<d>Economy</d>
							</option>
							<option value="premiumEconomy">
								<d>Premium Economy</d>
							</option>
					</select>
				<tr>
					<td></td>
					<td><d>
						<input type="submit" name="Search" value="Search" id="bt"></d></td>
					<td></td>
				</tr>
			</table>
		</center>
		<input type="hidden" name="hiddenAction" value="home_search">
	</form>




	<!-- Start WOWSlider.com BODY section -->
	<div id="wowslider-container1">
		<div class="ws_images">
			<ul>
				<li><a href="http://wowslider.com"><img
						src="images/MaltaCompBanner.jpg" alt="http://wowslider.com/"
						title="" id="wows1_0" /></a></li>

				<li><a href="http://wowslider.com"><img
						src="images/UK_BA_Content_28Jul_642x380_AirlinePageHero_V2_rdax_634x375.png"
						alt="http://wowslider.com/" title="" id="wows1_0" /></a></li>
				<li><a href="http://wowslider.com"><img
						src="images/goibibo-inter-flight-offer-d.jpg"
						alt="http://wowslider.com/" title="" id="wows1_0" /></a></li>

			</ul>
		</div>
		<div class="ws_bullets">
			<div>
				<!-- 		<a href="#" title=""><span><img src="images/BA_4.png" alt="finalimage2"/>1</span></a> -->
				<!-- 		<a href="#" title=""><span><img src="images/MaltaCompBanner.jpg" alt="finalimage1"/>2</span></a> -->
			</div>
		</div>
		<div class="ws_script" style="position: absolute; left: -99%">
			<a href="http://wowslider.com/vi">cssslider</a> by WOWSlider.com v8.6
		</div>
		<div class="ws_shadow"></div>
	</div>
	<script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>
	<!-- End WOWSlider.com BODY section -->
	<div id="Foot">
		<jsp:include page="Footer.jsp"></jsp:include>
	</div>
	<p>
		<%-- <%
			String fd = request.getAttribute("CheckFeedback").toString();
			if (fd != null) {

				System.out.println("feedback given ab");
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Thanks for the feedback');");
				out.println("location='index.jsp';");
				out.println("</script>");
		%>Thanks for your feedback.
		<%
			} else {
		%>

		Please fill in the feedback.<%
			}
		%> --%>
	</p>

</body>

</html>