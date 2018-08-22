<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="HeaderResult.jsp" /> 
<style>
#depTable tr{
background-color: rgba(5,4,2,0.5);/*#ffedcc;*/
color:black;
padding:25px;
border-radius:5px;
/*  margin:10px;  */

text-align: center;
}
#th{
background-color: #cc8400; 
font-size-adjust:inherit;
color:black;
text-align:center;
padding:15px;
border-radius:5px;
/* height: 15px; */
/* margin:10px; */
}
#depTable tr:nth-child(even)
{
background-color:#ffedcc ;  
}
#depTable tr:hover{background-color: #cc6500} 
#tr1{
background-color: #d9d9d9; 
padding:10px;
/* /margin:5px; */
}

</style>
<script type="text/javascript">
	function loadData() {
		var depTable = document.getElementById("depTable");
		var jsonResponse =<%=request.getAttribute("FlightStatusReport")%>;
		/* var DepartureStatus = document.getElementById("DepartureStatus");

		if (Array.isArray(jsonResponse.FlightsResponse.Flight.Sector)) {
			for ( var i = 0; i < jsonResponse.FlightsResponse.Flight.Sector.length; i++) {
				DepartureStatus.innerHTML = jsonResponse.FlightsResponse.Flight.Sector[i].DepartureStatus;
				document.getElementById("DepartureAirport").innerHTML = jsonResponse.FlightsResponse.Flight.Sector[i].DepartureAirport;
				document.getElementById("DepartureTerminal").innerHTML = jsonResponse.FlightsResponse.Flight.Sector[i].DepartureTerminal;
				document.getElementById("ScheduledDepartureDateTime").innerHTML = jsonResponse.FlightsResponse.Flight.Sector[i].ScheduledDepartureDateTime;
				document.getElementById("ReportedDepartureDateTime").innerHTML = jsonResponse.FlightsResponse.Flight.Sector[i].ReportedDepartureDateTime;
			}
		} else {
			DepartureStatus.innerHTML = jsonResponse.FlightsResponse.Flight.Sector.DepartureStatus;
			document.getElementById("DepartureAirport").innerHTML = jsonResponse.FlightsResponse.Flight.Sector.DepartureAirport;
			document.getElementById("DepartureTerminal").innerHTML = jsonResponse.FlightsResponse.Flight.Sector.DepartureTerminal;
			document.getElementById("ScheduledDepartureDateTime").innerHTML = jsonResponse.FlightsResponse.Flight.Sector.ScheduledDepartureDateTime;
			document.getElementById("ReportedDepartureDateTime").innerHTML = jsonResponse.FlightsResponse.Flight.Sector.ReportedDepartureDateTime;
		} */
		var date=new Date();
		//date.setDate(jsonResponse.FlightsResponse.Flight.Sector[0].ScheduledDepartureDateTime);
		depTable=document.getElementById('depTable');
		if(Array.isArray(jsonResponse.FlightsResponse.Flight.Sector)){
			for(var i=0;i<jsonResponse.FlightsResponse.Flight.Sector.length;i++){
			var row = depTable.insertRow(i + 1);
			var cell0 = row.insertCell(0);
			var cell1 = row.insertCell(1);
			var cell2 = row.insertCell(2);
			var cell3 = row.insertCell(3);
			var cell4 = row.insertCell(4);
			var cell5 = row.insertCell(5);
			var cell6 = row.insertCell(6);
			var cell7 = row.insertCell(7);
			var cell8 = row.insertCell(8);
			var cell9 = row.insertCell(9);
			
			
					cell0.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].DepartureStatus;
					cell1.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].ArrivalStatus;
					cell2.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].DepartureAirport;
					cell3.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].ArrivalAirport;
					cell4.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].DepartureTerminal;
					cell5.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].ArrivalTerminal;
					cell6.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].ScheduledDepartureDateTime;
					cell7.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].ScheduledArrivalDateTime;
					cell8.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].ReportedDepartureDateTime;
					cell9.innerHTML=jsonResponse.FlightsResponse.Flight.Sector[i].ReportedArrivalDateTime;
				}
			}
			else{
				var row = depTable.insertRow(1);
				var cell0 = row.insertCell(0);
				var cell1 = row.insertCell(1);
				var cell2 = row.insertCell(2);
				var cell3 = row.insertCell(3);
				var cell4 = row.insertCell(4);
				var cell5 = row.insertCell(5);
				var cell6 = row.insertCell(6);
				var cell7 = row.insertCell(7);
				var cell8 = row.insertCell(8);
				var cell9 = row.insertCell(9);
				
				cell0.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.DepartureStatus;
				cell1.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.ArrivalStatus;
				cell2.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.DepartureAirport;
				cell3.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.ArrivalAirport;
				cell4.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.DepartureTerminal;
				cell5.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.ArrivalTerminal;
				cell6.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.ScheduledDepartureDateTime;
				cell7.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.ScheduledArrivalDateTime;
				cell8.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.ReportedDepartureDateTime;
				cell9.innerHTML=jsonResponse.FlightsResponse.Flight.Sector.ReportedArrivalDateTime;
			}
			
		
		
	}
</script>
</head>
<body background="images/marble_texture1824.jpg" onload="loadData()" >

	<br>
	<table id="depTable">
		<tr>
			<th id="th" align="center">Departure Status</th>
			<th id="th" align="center">Arrival Status</th>
			<th id="th" align="center">Departure Airport</th>
			<th id="th" align="center">Arrival Airport</th>
			<th id="th" align="center">Departure Terminal</th>
			<th id="th" align="center">Arrival Terminal</th>
			<th id="th" align="center">Scheduled Departure Date & Time</th>
			<th id="th" align="center">Scheduled Arrival Date & Time</th>
			<th id="th" align="center">Reported Departure Date & Time</th>
			<th id="th" align="center">Reported Arriva Date & Time</th>
		</tr>

		
	</table>
</body>
<jsp:include page="FooterResult.jsp"></jsp:include>
</html>