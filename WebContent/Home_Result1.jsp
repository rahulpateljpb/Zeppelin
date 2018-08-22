<%@page import="com.ahd23.aja106.inno456.bean.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.ahd23.aja106.inno456.util.Utility"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="Header.jsp"></jsp:include>
<style>
#mytable1 tr{
background-color: rgba(5,4,2,0.5)/*#ffedcc;*/
color:black;
padding:25px;
border-radius:5px;
 margin:10px; 

text-align: center;
}
#mytable1 th{
background-color: #cc8400; 
font-size-adjust:inherit;
color:black;
text-align:center;
padding:15px;
border-radius:5px;
height: 15px;
/* margin:10px; */
}
#mytable1 tr:nth-child(even)
{background-color:/*#d9d9d9; */ #ffedcc ;  
}
#mytable1 tr:hover{background-color: #cc6500} 
#tr1{
background-color: #d9d9d9; 
padding:10px;
/* /margin:5px; */
}
</style>

<script type="text/javascript">
	function createTable() {
		var json =<%=request.getAttribute("Home_Result1")%>
	var table = document.getElementById("mytable1");
		var len = json.FlightsResponse.Flight.length;
		var locations =<%=session.getAttribute("locationJSON").toString()%>;
		var sourcesess = [];
		var dest = [];
<%String sourcess = request.getParameter("source").toString();
			String destinations = request.getParameter("destination").toString();%>
		for ( var i = 0; i < locations.GetBA_LocationsResponse.Country.length; i++) {
			if (Array.isArray(locations.GetBA_LocationsResponse.Country[i].City)) {
				for ( var j = 0; j < locations.GetBA_LocationsResponse.Country[i].City.length; j++) {
					if (String(locations.GetBA_LocationsResponse.Country[i].City[j].CityName)=="<%=sourcess.substring(0, sourcess.length() - 6)%>") {
						if (Array.isArray(locations.GetBA_LocationsResponse.Country[i].City[j].Airport)) {
							for ( var k = 0; k < locations.GetBA_LocationsResponse.Country[i].City[j].Airport.length; k++)
								sourcesess
										.push(locations.GetBA_LocationsResponse.Country[i].City[j].Airport[k].AirportCode);
						} else {
							sourcesess
									.push(locations.GetBA_LocationsResponse.Country[i].City[j].Airport.AirportCode);
						}
						break;
					}
				}
			}
			else{
				if (String(locations.GetBA_LocationsResponse.Country[i].City.CityName)=="<%=sourcess.substring(0, sourcess.length() - 6)%>") {
					if (Array.isArray(locations.GetBA_LocationsResponse.Country[i].City.Airport)) {
						for ( var k = 0; k < locations.GetBA_LocationsResponse.Country[i].City.Airport.length; k++)
							sourcesess
									.push(locations.GetBA_LocationsResponse.Country[i].City.Airport[k].AirportCode);
					} else {
						sourcesess
								.push(locations.GetBA_LocationsResponse.Country[i].City.Airport.AirportCode);
					}
					break;
				}
			}
		}
		for ( var i = 0; i < locations.GetBA_LocationsResponse.Country.length; i++) {
			if (Array.isArray(locations.GetBA_LocationsResponse.Country[i].City)) {
				for ( var j = 0; j < locations.GetBA_LocationsResponse.Country[i].City.length; j++) {
					if (String(locations.GetBA_LocationsResponse.Country[i].City[j].CityName)=="<%=destinations.substring(0, destinations.length() - 6)%>") {
						if (Array.isArray(locations.GetBA_LocationsResponse.Country[i].City[j].Airport)) {
							for ( var k = 0; k < locations.GetBA_LocationsResponse.Country[i].City[j].Airport.length; k++)
								dest
										.push(locations.GetBA_LocationsResponse.Country[i].City[j].Airport[k].AirportCode);
						} else {
							dest
									.push(locations.GetBA_LocationsResponse.Country[i].City[j].Airport.AirportCode);
						}
						break;
					}
				}
			}
			else{
				if (String(locations.GetBA_LocationsResponse.Country[i].City.CityName)=="<%=destinations.substring(0, destinations.length() - 6)%>") {
					if (Array.isArray(locations.GetBA_LocationsResponse.Country[i].City[j].Airport)) {
						for ( var k = 0; k < locations.GetBA_LocationsResponse.Country[i].City.Airport.length; k++)
							dest.push(locations.GetBA_LocationsResponse.Country[i].City.Airport[k].AirportCode);
					} else {
						dest
								.push(locations.GetBA_LocationsResponse.Country[i].City.Airport.AirportCode);
					}
					break;
				}
			}
		}
		console.log(sourcesess);
		console.log(dest);
<%float price = Float.parseFloat(request.getAttribute("minPrice").toString().trim());
			System.out.println(request.getAttribute("Home_Result1"));%>
			var deptStr="";
			var arrStr="";
	for ( var i = 0; i < len; i++) {
			var row = table.insertRow(i + 1);
			var cell0 = row.insertCell(0);
			var cell1 = row.insertCell(1);
			var cell2 = row.insertCell(2);
			var cell3 = row.insertCell(3);
			var cell4 = row.insertCell(4);
			var cell6D = row.insertCell(5);
			var cell6T = row.insertCell(6);
			var cell8D = row.insertCell(7);
			var cell8T = row.insertCell(8);
			var cell9 = row.insertCell(9);
			var cell10=row.insertCell(10);
			cell0.innerHTML = json.FlightsResponse.Flight[i].FlightNumber;

			if (Array.isArray(json.FlightsResponse.Flight[i].Sector)) {

				var length = json.FlightsResponse.Flight[i].Sector.length;

				for ( var j = 0; j < length; j++) {
					if (sourcesess.length > 1) {
						for ( var k = 0; k < sourcesess.length; k++)
							if (String(json.FlightsResponse.Flight[i].Sector[j].DepartureAirport) == sourcesess[k]) {
								cell1.innerHTML = sourcesess[k];
								cell3.innerHTML = json.FlightsResponse.Flight[i].Sector[j].DepartureTerminal;
								deptStr = json.FlightsResponse.Flight[i].Sector[j].ScheduledDepartureDateTime;
								var deptRes = deptStr.split("T");
								cell6D.innerHTML = deptRes[0];
								cell6T.innerHTML = deptRes[1];
								break;
							}
					} else {
						cell1.innerHTML = sourcesess[0];
						cell3.innerHTML = json.FlightsResponse.Flight[i].Sector[0].DepartureTerminal;
						deptStr = json.FlightsResponse.Flight[i].Sector[0].ScheduledDepartureDateTime;
						var deptRes = deptStr.split("T");
						cell6D.innerHTML = deptRes[0];
						cell6T.innerHTML = deptRes[1];
					}

				}

				for ( var j = 0; j < length; j++) {
					if (dest.length > 1) {
						for ( var k = 0; k < dest.length; k++)
							if (String(json.FlightsResponse.Flight[i].Sector[j].ArrivalAirport) == dest[k]) {
								cell2.innerHTML = dest[k];
								cell4.innerHTML = json.FlightsResponse.Flight[i].Sector[j].ArrivalTerminal;
								arrStr = json.FlightsResponse.Flight[i].Sector[j].ScheduledArrivalDateTime;
								var arrRes = arrStr.split("T");
								cell8D.innerHTML = arrRes[0];
								cell8T.innerHTML = arrRes[1];
								break;
							}
					} else {
						cell2.innerHTML = dest[0];
						cell4.innerHTML = json.FlightsResponse.Flight[i].Sector[0].ArrivalTerminal;
					}

				}				
				cell9.innerHTML =<%=Utility.generateRandomNumber(price, price * 3)%>;
				
			} else {

				cell1.innerHTML = json.FlightsResponse.Flight[i].Sector.DepartureAirport;
				cell2.innerHTML = json.FlightsResponse.Flight[i].Sector.ArrivalAirport;
				cell3.innerHTML = json.FlightsResponse.Flight[i].Sector.DepartureTerminal;
				cell4.innerHTML = json.FlightsResponse.Flight[i].Sector.ArrivalTerminal;
				deptStr = json.FlightsResponse.Flight[i].Sector.ScheduledDepartureDateTime;
				var deptRes = deptStr.split("T");
				cell6D.innerHTML = deptRes[0];
				cell6T.innerHTML = deptRes[1];	
				
				arrStr = json.FlightsResponse.Flight[i].Sector.ScheduledArrivalDateTime;
				var arrRes = arrStr.split("T");
				cell8D.innerHTML = arrRes[0];
				cell8T.innerHTML = arrRes[1];
				cell9.innerHTML =<%=Utility.generateRandomNumber(price, price * 3)%>;
			}
			cell10.innerHTML='<input type="submit" value="Book" id='+(i+1)+' onclick="data('+(i+1)+')">';
		}
	}
	function data(id){
		//alert('Thanks');
		var x = document.getElementsByTagName("tr");
		console.log(x[id].cells[0].innerHTML);
		<%	session.setAttribute(Utility.BOOKING_SOURCE,request.getParameter("source"));
			session.setAttribute(Utility.BOOKING_DESTINATION, request.getParameter("destination"));
			session.setAttribute(Utility.BOOKING_JOURNY_TYPE,request.getParameter("journeyType"));
			session.setAttribute(Utility.BOOKING_CABIN, request.getParameter("cabinType"));
			session.setAttribute(Utility.BOOKING_JOURNY_DATE,request.getParameter("journeyDate"));
			session.setAttribute("booking_oneWay_clicked","false");
			if(request.getParameter("journeyType").equals("roundTrip"))
				session.setAttribute(Utility.BOOKING_RETURN_DATE,request.getParameter("returnDate"));
		%>
		<%-- var loggedIn='<%=((Users)session.getAttribute("UserDetail"))%>';
		if(loggedIn!='null'){
			<%session.setAttribute("previousPage", "HOME_RESULT1");%>
			document.getElementsByName('flightNo').value=x[id].cells[0].innerHTML;
			document.getElementsByName('price').value=x[id].cells[7].innerHTML;
			document.getElementById('table1').action="booking.jsp";
			  document.getElementById('table1').method="get";  
			  document.forms[0].submit();
			/* location.href="booking.jsp"; */
		}else{
			<%session.setAttribute("previousPage", "Login");%>
			document.getElementsByName('flightNo').value=x[id].cells[0].innerHTML;
			document.getElementsByName('price').value=x[id].cells[7].innerHTML;
			<%session.setAttribute("booking_oneWay_clicked","true");%>
			 document.getElementById('table1').action="Login.jsp";
			   document.getElementById('table1').method="get"; 
			   document.forms[0].submit();
			/* location.href="Login.jsp"; */
			
		} --%>
		document.getElementById('flightNo').value=x[id].cells[0].innerHTML;
		document.getElementById('price').value=x[id].cells[7].innerHTML;
		/*  document.getElementById('table1').action="TicketBooking";
		   document.getElementById('table1').method="post";  */
		   document.forms[0].submit();
		
	}
</script>
</head>
<body onload="createTable()" background="images/Home_res_img.jpg">
<center>
<br>
From:<%=request.getParameter("source")%>&nbsp;&nbsp;To:<%=request.getParameter("destination")%>


<br>
<form name="table1" id="table1" action="TicketBooking" method="post">
<table id="mytable1" cellpadding="2" cellspacing="2" width="900">
		<tr>
			<th>FlightNumber</th>
			<th>DepartureAirport</th>
			<th>ArrivalAirport</th>
			<th>DepartureTerminal</th>
			<th>ArrivalTerminal</th>

			<th colspan="2">ScheduledDeparture Date & Time</th>

			<th colspan="2">ScheduledArrival Date & Time</th>
			<th>Amount</th>
			<th>Book</th>
		</tr>

	</table>
	<input type="hidden" name="flightNo" id="flightNo" value="abc"/>
	<input type="hidden" name="price" id="price" value="ds">
	 <input type="hidden" name="ticketAction" value="home_result1"/> 
</form>
</center>
</body>
<jsp:include page="FooterResult.jsp"></jsp:include>
</html>