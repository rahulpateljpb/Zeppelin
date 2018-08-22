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

#OfferTable {
	background-color: rgba(5,4,2,0.1);
	padding: 1px;
	/* border-spacing: 15px;
	border-style: hidden; 
	border-radius: 25px;
	/* border-collapse: collapse; */ */
	border-radius: 25px;
	height: 50%;
}

 
#OfferTable tr:nth-child(even)
{background-color: #ffedcc;
} 
/* th{
background-color: #990000;
color:white;
} */
#OfferTable th
{
background-color: #cc8400;

}
#OfferTable tr:hover {background-color: #e69500}
#OfferTable th,td{
text-align: center;
    padding: 8px;
}

</style>
<script>

function result()	
{
var json=<%=request.getAttribute("OfferResult")%>;

var cnt=json.PricedItinerariesResponse.PricedItinerary.length;
print("cnt:");
var table=document.getElementById("OfferTable");

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
	/* var cell7=row.insertCell(7); 
	var cell8=row.insertCell(8);
	 var cell9=row.insertCell(9);
	 var cell10=row.insertCell(10); */
	

	
	cell0.innerHTML = json.PricedItinerariesResponse.PricedItinerary[i].DepartureCity; 
	cell1.innerHTML = json.PricedItinerariesResponse.PricedItinerary[i].ArrivalCity;
	/* cell2.innerHTML = json.FlightsResponse.Flight[i].Sector.DepartureStatus;
	cell3.innerHTML = json.FlightsResponse.Flight[i].Sector.ArrivalStatus; */
	cell2.innerHTML = json.PricedItinerariesResponse.PricedItinerary[i].Cabin;
	cell3.innerHTML = json.PricedItinerariesResponse.PricedItinerary[i].TravelMonth;
	cell4.innerHTML = json.PricedItinerariesResponse.PricedItinerary[i].JourneyType;
	cell5.innerHTML = json.PricedItinerariesResponse.PricedItinerary[i].Price.Amount.Amount;
	cell6.innerHTML='<input type="submit" name="book" id='+(i+1)+' value="Book" onclick="selcetedRow('+(i+1)+')" style="border-radius: 25px;">';
	
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

<body background="images/marble_texture1824.jpg" onload="result()">
<br>
<br>
<br>
<center>
<div  style="overflow-y: auto;">
<table id="OfferTable" cellpadding="2" cellspacing="2" id="t01"  
					width="80%">
<tr>
<th>DepartureCity</th>
<th>ArrivalCity</th>

<th>Cabin</th>
<th>TravelMonth</th>
<th>JourneyType</th>
<th>Price</th>
<th>Book</th>
</tr>





</table>
</div>
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