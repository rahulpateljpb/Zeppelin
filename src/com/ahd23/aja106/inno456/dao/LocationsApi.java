package com.ahd23.aja106.inno456.dao;


public class LocationsApi {
	
	public String locations(){
		String url="http://apphonics.tcs.com/public/ba/locations/1.0";
		CallApi api=new CallApi();
		String json=api.ApiRequest(url);
		return json;
		
	}
}
