package com.ahd23.aja106.inno456.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletContext;

import org.json.JSONException;
import org.json.JSONObject;

public class Utility {
	public static final String CLIENTKEY="client-key";
	public static final String CLIENTKEYVALUE="phvardqraf43c5uehw7zx8cy";//"kuzqrb9aza93zbhuyxj6v366";"vx766k3ssbckjbkj8r8mw7vq";//
	public static final String DRIVER_NAME="oracle.jdbc.OracleDriver";
	/*public static final String DB_URL="jdbc:oracle:thin:@10.26.195.66:1521:ORCLILP";
	public static final String DB_USERNAME="aja106a";
	public static final String DB_PASSWORD="aja106a";*/
	public static final String DB_URL="jdbc:oracle:thin:@INGNRILPBOX01:1521:ENTSOLDB";//"jdbc:oracle:thin:@10.26.195.66:1521:ORCLILP";
	public static final String DB_USERNAME="aja107core";
	public static final String DB_PASSWORD="aja107core";
	public static final String BOOKING_SOURCE="SOURCE";
	public static final String BOOKING_DESTINATION="DESTINATAION";
	public static final String BOOKING_JOURNY_TYPE="JOURNY_TYPE";
	public static final String BOOKING_CABIN="CABIN";
	public static final String BOOKING_JOURNY_DATE="J_DATE";
	public static final String BOOKING_RETURN_DATE="R_DATE";
	public static final String BOOKING_FLIGHT_NO_J="J_FLIGHT_NO";
	public static final String BOOKING_PRICE="Price";
	public static final int MAX_SEAT_AVAILABLE=50;
	public static final String BOOKING_FLIGHT_RETURN="return_FlightNo";
	public static final String BOOKING_PRICE_RETRUN="return_price";

	public static double generateRandomNumber(double minimum,double maximum){
		return minimum + (double)(Math.random()*maximum); 
	}
	public static double currencyConvert(double price,String input,ServletContext context ){
		if(input.equals("INR"))
			return price;

		File file=null;
		BufferedReader bufferedReader=null;
		String data="";
		try {

			/*file=new File(".."+File.pathSeparator+"currencyConvert.txt");
			System.out.println();
			bufferedReader=new BufferedReader (new InputStreamReader(new FileInputStream(file)));
			
			while((line=bufferedReader.readLine())!=null)
				data+=line;*/
			
			String filename="currencyConvert.txt";
			
			InputStream is = context.getResourceAsStream(filename);
			if (is != null) {
				InputStreamReader isr = new InputStreamReader(is);
				BufferedReader reader = new BufferedReader(isr);
				String line="";
				
				
				//
				// We read the file line by line and later will be displayed on the 
				// browser page.
				//
				while ((line = reader.readLine()) != null) {
					data+=line;
				}
				System.out.println("currency File:"+data);
			}
		} catch ( IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		JSONObject jsonObject=null;
		String curr=null,curr2=null;
		try {
			jsonObject=new JSONObject(data);
			curr=jsonObject.getJSONObject("rates").get(input).toString();
			curr2=jsonObject.getJSONObject("rates").get("INR").toString();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(input.equals("USD"))
			return price*Double.parseDouble(curr2);
		else 
			return price*Double.parseDouble(curr2)/Double.parseDouble(curr);
	}
	
	public static String extractTime(String time){
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(new Date(time));
		return Integer.toString(calendar.get(Calendar.HOUR));
	}
	public static String timeConversion(String time){
		SimpleDateFormat displayFormat = new SimpleDateFormat("HH:mm");
	       SimpleDateFormat parseFormat = new SimpleDateFormat("hh:mm a");
	       Date date;
	       String displayTime = null;
		try {
			date = parseFormat.parse(time);
			displayTime=displayFormat.format(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	       return displayTime;
	}
	
	
}
