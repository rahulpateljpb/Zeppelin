package com.ahd23.aja106.inno456.services;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.ahd23.aja106.inno456.dao.OffersApi;
import com.ahd23.aja106.inno456.dao.SearchRoute;
import com.ahd23.aja106.inno456.util.Utility;

public class SearchFlightHome {

	public String[] sourceToDestination(String departureLocation,String arrivalLocation,String scheduledDepartureDate,String cabin,String journeyType,
			String range,ServletContext context){
		String[] strings=new String[2];
		SearchRoute searchRoute=new SearchRoute();
		departureLocation=departureLocation.substring(departureLocation.length()-4, departureLocation.length()-1);
		arrivalLocation=arrivalLocation.substring(arrivalLocation.length()-4,arrivalLocation.length()-1);
		System.out.println(departureLocation);
		System.out.println(arrivalLocation);
		System.out.println(scheduledDepartureDate);
		System.out.println(cabin);
		
		/*DateFormat dateFormat1=new SimpleDateFormat("MM/dd/yyyy");
		try {
			Date date1=dateFormat1.parse(scheduledDepartureDate);
			System.out.println(date1);
			Calendar calendar1=Calendar.getInstance();
			calendar1.setTime(date1);
			if(calendar1.get(Calendar.MONTH)<9)
				scheduledDepartureDate=calendar1.get(Calendar.DATE)+"-0"+(calendar1.get(Calendar.MONTH)+1)+"-"+calendar1.get(Calendar.YEAR);
			else
				scheduledDepartureDate=calendar1.get(Calendar.DATE)+"-"+(calendar1.get(Calendar.MONTH)+1)+"-"+calendar1.get(Calendar.YEAR);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		strings[0]=searchRoute.SearchArrivalByRoute(departureLocation, arrivalLocation, scheduledDepartureDate);
		if(strings[0].equalsIgnoreCase("")){
			return null;
		}
		System.out.println(strings[0]);
		
		OffersApi apiOffersApi=new OffersApi();
		String jsonSec=apiOffersApi.offers(departureLocation, arrivalLocation, cabin, journeyType, range);
		System.out.println(jsonSec);
		Date date = null;
		
		try {
			date=new SimpleDateFormat("yyyy-MM-dd").parse(scheduledDepartureDate);
			System.out.println(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(date);
		String month=new SimpleDateFormat("MMM").format(calendar.getTime()).toString();
		
        System.out.println(month);
        strings[1]= parseOfferApiData(jsonSec,month,context);
        System.out.println(strings[1]);
        return strings;
        
	}
	
	
	 public String parseOfferApiData(String data,String month,ServletContext context){
		String price=null;
		JSONObject jsonObject=null;
		JSONArray jsonArray_PricedItinerary=null;
		String currCode=null;
		try {
			jsonObject=new JSONObject(data);
			jsonArray_PricedItinerary = jsonObject.getJSONObject("PricedItinerariesResponse").getJSONArray("PricedItinerary");
			for(int i=0;i<jsonArray_PricedItinerary.length();i++){
				if(jsonArray_PricedItinerary.getJSONObject(i).getString("TravelMonth").equalsIgnoreCase(month)){
					price=jsonArray_PricedItinerary.getJSONObject(i).getJSONObject("Price").getJSONObject("Amount").get("Amount").toString();
					currCode=jsonArray_PricedItinerary.getJSONObject(i).getJSONObject("Price").getJSONObject("Amount").get("CurrencyCode").toString();
					System.out.println(price);
					break;
				}
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		return Double.toString(Utility.currencyConvert(Double.parseDouble(price),currCode,context));
	}
}
