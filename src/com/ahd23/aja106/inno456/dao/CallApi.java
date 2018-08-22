package com.ahd23.aja106.inno456.dao;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

import com.ahd23.aja106.inno456.util.Utility;

public class CallApi {
	public String ApiRequest(String URL){
		HttpClient client=new DefaultHttpClient();
		HttpGet request=new HttpGet(URL);
		request.addHeader(Utility.CLIENTKEY,Utility.CLIENTKEYVALUE);/*
		request.addHeader("X-Originating-Ip", "59.163.27.14");*/
		HttpResponse response=null;
		try {
			response=client.execute(request);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BufferedReader rd=null;
		try {
			rd = new BufferedReader (new InputStreamReader(response.getEntity().getContent()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String line="";
		String data="";
		try {
			while((line=rd.readLine())!=null){
				data+=line;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(data);
		return data;
	}
}
