
function ValidateDate()
{
	//alert("in validation");
	
	var journeyDate=document.getElementById("journeyDate").value;
	var returnDate=document.getElementById("returnDate").value;
	var source=document.getElementById("source").value;
	var destination=document.getElementById("destination").value;
	//alert(journeyDate);
	var date1 = Date.parse(journeyDate);
	
	var date2 = Date.parse(returnDate);
	
	if(source==destination)
		{
		alert("Source and Destination can not be same");
		return false;
		}
	if (date1 > date2) {
	    alert ("ReturnDate shoud be grater than JourneyDate");
	    return false;
	}
	
	var today =new Date();
	var day=today.getDate();
	var date11 = new Date(date1);
	var date22 = new Date(date2);
	if(date11.getDate()<day)
		{
		alert("Select appropriate date");
		return false;
		}
	if(date22.getDate()<day)
		{
		alert("Select appropriate date");
		return false;
		}
	if((date11.getDate()-day)>10)
		{
		alert("journy date is limited to next 10 days");
		return false;
		}
	if((date22.getDate()-day)>10)
		{
		alert("return date is limited to next 10 days");
		return false;
		}
/*	var diffDays = date22.getDate() - date11.getDate(); 
	alert(diffDays);
	if(diffDays>10)
		{
		 alert ("Date difference shoud be 10 days");
		    return false;
		
		}*/

	return true;
}

function MaxDate()
{
	var today =new Date();
	var day=today.getDate();
	var d=document.getElementById("date").value;
	var date11 = new Date(d);
	var source=document.getElementById("Origin").value;
	var destination=document.getElementById("Destination").value;
	if(source==destination)
	{
	alert("Source and Destination can not be same");
	return false;
	}
	if((date11.getDate()-day)>10)
		{
		alert("Date is limited to next 10 days");
		return false;
		}
	if(date11.getDate()<day)
		{
		alert("Select appropriate date");
		return false;
		}
	return true;
}

function locationValidation()
{
	alert("in val");
	var source=document.getElementById("DepartureCity").value;
	var destination=document.getElementById("ArrivalCity").value;
	if(source==destination)
	{
	alert("Source and Destination can not be same");
	return false;
	}
	return true;
}