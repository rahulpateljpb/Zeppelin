package com.ahd23.aja106.inno456.bean;

public class PromoCode {
private String status;
private int promo_Id;
private String discount_Type;
private int client_Id;
private int discount_Amount;
public String getStatus() {
	return status;
}
public int getPromo_Id() {
	return promo_Id;
}
public String getDiscount_Type() {
	return discount_Type;
}
public int getClient_Id() {
	return client_Id;
}
public int getDiscount_Amount() {
	return discount_Amount;
}
public void setStatus(String status) {
	this.status = status;
}
public void setPromo_Id(int promo_Id) {
	this.promo_Id = promo_Id;
}
public void setDiscount_Type(String discount_Type) {
	this.discount_Type = discount_Type;
}
public void setClient_Id(int client_Id) {
	this.client_Id = client_Id;
}
public void setDiscount_Amount(int discount_Amount) {
	this.discount_Amount = discount_Amount;
}
public PromoCode(String status, int promo_Id, String discount_Type,
		int client_Id, int discount_Amount) {
	super();
	this.status = status;
	this.promo_Id = promo_Id;
	this.discount_Type = discount_Type;
	this.client_Id = client_Id;
	this.discount_Amount = discount_Amount;
}
public PromoCode() {
	super();
}

}
