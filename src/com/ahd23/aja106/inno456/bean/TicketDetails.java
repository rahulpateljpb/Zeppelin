package com.ahd23.aja106.inno456.bean;

public class TicketDetails {
	private String td_Id;
	private String seat_No;
	private int passanger_Age;
	private String passanger_Name;
	private String ticket_Id;
	private int status;
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public TicketDetails() {
		super();
	}
	public TicketDetails(String td_Id, String seat_No, int passanger_Age,
			String passanger_Name, String ticket_Id) {
		super();
		this.td_Id = td_Id;
		this.seat_No = seat_No;
		this.passanger_Age = passanger_Age;
		this.passanger_Name = passanger_Name;
		this.ticket_Id = ticket_Id;
	}
	public String getTd_Id() {
		return td_Id;
	}
	public String getSeat_No() {
		return seat_No;
	}
	public int getPassanger_Age() {
		return passanger_Age;
	}
	public String getPassanger_Name() {
		return passanger_Name;
	}
	public String getTicket_Id() {
		return ticket_Id;
	}
	public void setTd_Id(String td_Id) {
		this.td_Id = td_Id;
	}
	public void setSeat_No(String seat_No) {
		this.seat_No = seat_No;
	}
	public void setPassanger_Age(int passanger_Age) {
		this.passanger_Age = passanger_Age;
	}
	public void setPassanger_Name(String passanger_Name) {
		this.passanger_Name = passanger_Name;
	}
	public void setTicket_Id(String ticket_Id) {
		this.ticket_Id = ticket_Id;
	}


}
