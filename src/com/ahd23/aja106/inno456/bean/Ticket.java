package com.ahd23.aja106.inno456.bean;

public class Ticket {
	private String ticket_Id;
	private String journey_Date;
	private String journey_Date_Return;
	private String booking_Date;
	private int flight_No;
	private String user_Id;
	private String source;
	private String destination;
	private int status;
	private double price;
	
	
	public String getJourney_Date_Return() {
		return journey_Date_Return;
	}
	public void setJourney_Date_Return(String journey_Date_Return) {
		this.journey_Date_Return = journey_Date_Return;
	}
	public String getUser_Id() {
		return user_Id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getTicket_Id() {
		return ticket_Id;
	}
	public String getJourney_Date() {
		return journey_Date;
	}
	public String getBooking_Date() {
		return booking_Date;
	}
	public int getFlight_No() {
		return flight_No;
	}
	public String getClient_Id() {
		return user_Id;
	}
	public void setTicket_Id(String ticket_Id) {
		this.ticket_Id = ticket_Id;
	}
	public void setJourney_Date(String journey_Date) {
		this.journey_Date = journey_Date;
	}
	public void setBooking_Date(String booking_Date) {
		this.booking_Date = booking_Date;
	}
	public void setFlight_No(int flight_No) {
		this.flight_No = flight_No;
	}
	public void setUser_Id(String client_Id) {
		this.user_Id = client_Id;
	}
	public Ticket(String ticket_Id, String journey_Date, String booking_Date, int flight_No,
			String client_Id,double price) {
		super();
		this.ticket_Id = ticket_Id;
		this.journey_Date = journey_Date;
		this.booking_Date = booking_Date;
		this.flight_No = flight_No;
		this.user_Id = client_Id;
		this.price=price;
	}
	public Ticket() {
		super();
	}

}
