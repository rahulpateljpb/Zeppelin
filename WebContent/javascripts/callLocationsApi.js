function parseLocationApi(locationsJSON){
	var data=JSON.parse(locationsJSON);
	console.dir(data);
	var dataList=document.getElementById('dataList');
	var len=data.GetBA_LocationsResponse.Country.length;
	var acc="";
	for(var i=0;i<len;i++){
		if(Array.isArray(data.GetBA_LocationsResponse.Country[i].City)){
			for(var j=0;j<data.GetBA_LocationsResponse.Country[i].City.length;j++){
				var option=data.GetBA_LocationsResponse.Country[i].City[j].CityName;
				option+=" ("+data.GetBA_LocationsResponse.Country[i].City[j].CityCode+")";
				acc+='<option value="'+option+'">';
			}
		}
		else{
			var option=data.GetBA_LocationsResponse.Country[i].City.CityName;
			option+=" ("+data.GetBA_LocationsResponse.Country[i].City.CityCode+")";
			acc+='<option value="'+option+'">';
		}
		dataList.innerHTML=acc;
	}
}