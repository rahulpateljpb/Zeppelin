function createTable(json){	
	var table = document.getElementById("mytable");
	var len=json.FlightsResponse.Flight.length;
	//document.getElementById("col1").innerHTML=len; //json.FlightsResponse.Flight[0].FlightNumber;
	for(var i=0;i<len;i++){
		var row=table.insertRow(i+1);
		var cell0 = row.insertCell(0);
		var cell1 = row.insertCell(1);
		var cell2 = row.insertCell(2);
		var cell3 = row.insertCell(3);
		var cell4 = row.insertCell(4);
		var cell5 = row.insertCell(5);
		var cell6 = row.insertCell(6);
		var cell7 = row.insertCell(7);
		var cell8 = row.insertCell(8);

		// Add some text to the new cells:
		console.log(json.FlightsResponse.Flight[i].Sector.length);
		cell0.innerHTML = json.FlightsResponse.Flight[i].FlightNumber;
		if(json.FlightsResponse.Flight[i].Sector.length>0){
			var len=json.FlightsResponse.Flight[i].Sector.length;
			cell1.innerHTML = json.FlightsResponse.Flight[i].Sector[0].DepartureAirport;
			cell2.innerHTML = json.FlightsResponse.Flight[i].Sector[0].ArrivalAirport;
			cell3.innerHTML = json.FlightsResponse.Flight[i].Sector[0].DepartureTerminal;
			cell4.innerHTML = json.FlightsResponse.Flight[i].Sector[len-1].ArrivalTerminal;
			cell5.innerHTML = json.FlightsResponse.Flight[i].Sector[0].ScheduledDepartureDateTime;
			cell6.innerHTML = json.FlightsResponse.Flight[i].Sector[0].ScheduledDepartureDateTime;
			cell7.innerHTML = json.FlightsResponse.Flight[i].Sector[len-1].ScheduledArrivalDateTime;
			cell8.innerHTML = json.FlightsResponse.Flight[i].Sector[len-1].ScheduledArrivalDateTime;

		}else{

			cell1.innerHTML = json.FlightsResponse.Flight[i].Sector.DepartureAirport;
			cell2.innerHTML = json.FlightsResponse.Flight[i].Sector.ArrivalAirport;
			cell3.innerHTML = json.FlightsResponse.Flight[i].Sector.DepartureTerminal;
			cell4.innerHTML = json.FlightsResponse.Flight[i].Sector.ArrivalTerminal;
			cell5.innerHTML = json.FlightsResponse.Flight[i].Sector.ScheduledDepartureDateTime;
			cell6.innerHTML = json.FlightsResponse.Flight[i].Sector.ScheduledDepartureDateTime;
			cell7.innerHTML = json.FlightsResponse.Flight[i].Sector.ScheduledArrivalDateTime;
			cell8.innerHTML = json.FlightsResponse.Flight[i].Sector.ScheduledArrivalDateTime;
		}
	} 
}

