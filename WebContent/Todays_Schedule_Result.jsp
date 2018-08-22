<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="HeaderResult.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/Home.css">

<style type="text/css">

#MyTable {
	/* background-color: white; */
	padding: 1px;
	/* border-spacing: 15px; */
	border-style: hidden; 
	border-radius: 25px;
	
	
	background-color: rgba(5,4,2,0.1);
	
}

#MyTable tr:nth-child(even)
{background-color: #ffedcc;
} 
/* th{
background-color: #990000;
color:white;
} */
#MyTable th
{
background-color: #cc8400;
border-radius: 5px;
text-align: center;
}
#MyTable tr:hover {background-color: #e69500}
#MyTable th,td{
text-align: left;
    padding: 8px;
}
body
{
background-repeat: no-repeat;
background-size:cover; 
}
</style>
<script>

function result()	
{
var json=<%=request.getAttribute("SearchTodaysReport")%>;
var loc='<%=request.getAttribute("Locations")%>';
var cnt=json.FlightsResponse.Flight.length;
print("cnt:");
var table=document.getElementById("MyTable");
document.getElementById("ResultLocation").innerHTML="Today's Schedule At:"+loc;
for(var i=0;i<cnt;i++)
	{
	 var row=table.insertRow(i+1);
	 var cell0=row.insertCell(0);
	 var cell1=row.insertCell(1);
	 var cell2=row.insertCell(2);
	 var cell3=row.insertCell(3);
	 var cell4=row.insertCell(4);
	 var cell5=row.insertCell(5);
	 var cell6=row.insertCell(6);
	 var cell7=row.insertCell(7); 
	 var cell8=row.insertCell(8);
	 var cell9=row.insertCell(9);
	 var cell10=row.insertCell(10); 
	
	 
	var ScheduledDT=null,ScheduledAT=null,ReportedDT=null,ReportedAT=null;
	var ScheduledDTR=null,ScheduledATR=null,ReportedDTR=null,ReportedATR=null;
	
	ScheduledDT=json.FlightsResponse.Flight[i].Sector.ScheduledDepartureDateTime;
	ScheduledAT=json.FlightsResponse.Flight[i].Sector.ScheduledArrivalDateTime;
	ReportedDT=json.FlightsResponse.Flight[i].Sector.ReportedDepartureDateTime;
	ReportedAT=json.FlightsResponse.Flight[i].Sector.ReportedArrivalDateTime;
	
	ScheduledDTR=ScheduledDT.split("T");
	ScheduledATR=ScheduledAT.split("T");
	ReportedDTR=ReportedDT.split("T");
	ReportedATR=ReportedAT.split("T");
	
	cell0.innerHTML = json.FlightsResponse.Flight[i].MarketingCarrierCode; 
	cell1.innerHTML = json.FlightsResponse.Flight[i].FlightNumber;
	/* cell2.innerHTML = json.FlightsResponse.Flight[i].Sector.DepartureStatus;
	cell3.innerHTML = json.FlightsResponse.Flight[i].Sector.ArrivalStatus; */
	/* cell2.innerHTML = json.FlightsResponse.Flight[i].Sector.ScheduledDepartureDateTime;
	cell3.innerHTML = json.FlightsResponse.Flight[i].Sector.ScheduledArrivalDateTime;
	cell4.innerHTML = json.FlightsResponse.Flight[i].Sector.ReportedDepartureDateTime;
	cell5.innerHTML = json.FlightsResponse.Flight[i].Sector.ReportedArrivalDateTime; */
	
	cell2.innerHTML=ScheduledDTR[0];
	cell3.innerHTML=ScheduledDTR[1];
	cell4.innerHTML=ScheduledATR[0];
	cell5.innerHTML=ScheduledATR[1];
	cell6.innerHTML=ReportedDTR[0];
	cell7.innerHTML=ReportedDTR[1];
	cell8.innerHTML=ReportedATR[0];
	cell9.innerHTML=ReportedATR[1];
	
	cell10.innerHTML='<input type="submit" name="book" id='+(i+1)+' value="Book" onclick="selcetedRow('+(i+1)+')" style="border-radius: 25px;">';
	
	/* cell8.innerHTML = json.FlightsResponse.Flight[i].Sector.OperatingCarrierCode;
	cell9.innerHTML = json.FlightsResponse.Flight[i].Sector.AircraftTypeCode;
	cell10.innerHTML = json.FlightsResponse.Flight[i].Sector.MatchesRequest;  */ 
	
	
	}
}
function selcetedRow(id){
	var x = document.getElementsByTagName("tr");
	console.log(x[id].cells[0].innerHTML);
	var txt = "";
	var i;
	for (i = 0; i < x.length; i++) {
	    console.log(x[i].cells[0].innerHTML);
	}
}
</script>
</head>

<body onload="result()" background="images/marble_texture1824.jpg">
<br>
<br>
<br>
<center>
<p id="ResultLocation" style="font-size: xx-large; font: bold;" ></p>
<table id="MyTable" cellpadding="2" cellspacing="2" id="t01" border="0" bordercolor="black"
					width="80%">
<tr>
<th>Marketing CarrierCode</th>
<th>Flight Number</th>

<th colspan="2">Scheduled Departure<br>Date & Time</th>
<th colspan="2">Scheduled Arrival <br>Date & Time</th>
<th colspan="2">Reported Departure <br> Date & Time</th>
<th colspan="2">Reported Arrival<br> Date & Time</th>
<th>Book</th>
</tr>





</table>

</center>
<%-- <body>
<p id="Demo"> </p>
<script>
var json=<%=request.getAttribute("output")%>;
document.getElementById("Demo").innerHTML=json.FlightsResponse.Flight.FlightNumber;
print(done);
</script> --%>
</body>
<jsp:include page="FooterResult.jsp"></jsp:include>
</html>