<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Status</title>

</script>
<jsp:include page="HeaderResult.jsp" /> 

<style>
#resultTable tr{
background-color: rgba(5,4,2,0.5)/*#ffedcc;*/
color:black;
padding:25px;
border-radius:5px;
 margin:10px; 

text-align: center;
}
#td{
background-color: #cc8400; 
font-size-adjust:inherit;
color:black;
text-align:center;
padding:15px;
border-radius:5px;
height: 15px;
/* margin:10px; */
}
#resultTable tr:nth-child(even)
{background-color:/*#d9d9d9; */ #ffedcc ;  
}
#resultTable tr:hover{background-color: #cc6500} 
#tr1{
background-color: #d9d9d9; 
padding:10px;
/* /margin:5px; */
}
</style>
<script type="text/javascript">
function routeVsFlight(){
		var  resultTable=document.getElementById('resultTable');
		var responseJSON=<%=request.getAttribute("searchRouteResult").toString()%>
		if(responseJSON!=null){
			var len=responseJSON.FlightsResponse.Flight.length;
			var lastUpdated=responseJSON.FlightsResponse.DataLastUpdated;
			var lastUpdatedRes = lastUpdated.split("T");
			document.getElementById("lastupdated").innerHTML=" Last Updated:"+lastUpdatedRes[0]+" "+" "+lastUpdatedRes[1];
			for ( var i = 0; i < len; i++) {
				var row = resultTable.insertRow(i + 1);
				var cell0 = row.insertCell(0);
				var cell1 = row.insertCell(1);
				var cell2 = row.insertCell(2);
				var cell3 = row.insertCell(3);
				var cell4 = row.insertCell(4);
				var cell5 = row.insertCell(5);
				var cell6 = row.insertCell(6);
				var deptStr="";
				var arrStr="";
				
				cell0.innerHTML = responseJSON.FlightsResponse.Flight[i].FlightNumber;

				if (Array.isArray(responseJSON.FlightsResponse.Flight[i].Sector)) {
					cell1.innerHTML = responseJSON.FlightsResponse.Flight[i].Sector[0].DepartureAirport;
					cell2.innerHTML = responseJSON.FlightsResponse.Flight[i].Sector[0].ArrivalAirport;
					deptStr = responseJSON.FlightsResponse.Flight[i].Sector[0].ScheduledDepartureDateTime;
					arrStr = responseJSON.FlightsResponse.Flight[i].Sector[0].ScheduledArrivalDateTime;
					var deptRes = deptStr.split("T");
					var arrRes = arrStr.split("T");
					cell3.innerHTML = deptRes[0];
					cell4.innerHTML = deptRes[1];
					cell5.innerHTML = arrRes[0];
					cell6.innerHTML = arrRes[1];
				} else {
					cell1.innerHTML = responseJSON.FlightsResponse.Flight[i].Sector.DepartureAirport;
					cell2.innerHTML = responseJSON.FlightsResponse.Flight[i].Sector.ArrivalAirport;
					deptStr = responseJSON.FlightsResponse.Flight[i].Sector.ScheduledDepartureDateTime;
					arrStr = responseJSON.FlightsResponse.Flight[i].Sector.ScheduledArrivalDateTime;
					var deptRes = deptStr.split("T");
					var arrRes = arrStr.split("T");
					cell3.innerHTML = deptRes[0];
					cell4.innerHTML = deptRes[1];
					cell5.innerHTML = arrRes[0];
					cell6.innerHTML = arrRes[1];
				}
			}
				
		}
		
		
		
}


</script>
</head>
<body background="images/marble_texture1824.jpg" onload="routeVsFlight()" >
<br>
<br>
<br>
<br>
<center>

<p id="lastupdated"  style="font-family:sans-serif; font-size: large;font-style: bold; margin-left:55%; color:#00b300" ></p> 
<table id="resultTable" cellpadding="2" cellspacing="2" width="1000" >
<tr id="tr" >
	<td id="td" align="center">Flight no</td>
	<td id="td" align="center">Departs</td>
	<td id="td" align="center">Arrives</td>
	<td id="td" colspan="2" align="center">Scheduled Departure Date & Time</td>
	<td id="td" colspan="2" align="center">Scheduled Arrival Date & Time</td>
</tr>


</table>
</center>
</body>
<jsp:include page="FooterResult.jsp"></jsp:include>
</html>