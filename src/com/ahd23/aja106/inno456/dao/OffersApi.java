package com.ahd23.aja106.inno456.dao;


public class OffersApi {
	public String offers(String departureCity,String arrivalCity,String cabin,String journeyType,
			String range){
		String url="http://apphonics.tcs.com/public/ba/flightoffer/v1.0/flightOfferBasic;" +
				"departureCity="+departureCity+";arrivalCity="+arrivalCity+";cabin="+cabin+";" +
						"journeyType="+journeyType+";range="+range+".json";
		CallApi api=new CallApi();
		String json=api.ApiRequest(url);
		return json;
	}
}
