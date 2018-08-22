package com.ahd23.aja106.inno456.dao;


public class SearchFlightStatus {
	public static void main(String[] args) {
		System.out.println(new SearchFlightStatus().searchArrivalsByFlight("0011", "2015-12-31"));
	}
	public String searchDeparturesByFlight(String flightNumber,String scheduledDepartureDate){
		String url="http://apphonics.tcs.com/public/ba/flightinfo/1.0/flights;" +
				"flightNumber="+flightNumber+";scheduledDepartureDate="+scheduledDepartureDate+".json";
		CallApi api=new CallApi();
		String json=api.ApiRequest(url);
		return json;
	}
	public String searchArrivalsByFlight(String flightNumber,String scheduledArrivalDate){
		String url="http://apphonics.tcs.com/public/ba/flightinfo/1.0/flights;" +
				"flightNumber="+flightNumber+";scheduledArrivalDate="+scheduledArrivalDate+".json";
		CallApi api=new CallApi();
		String json=api.ApiRequest(url);
		return json;
	}

}
