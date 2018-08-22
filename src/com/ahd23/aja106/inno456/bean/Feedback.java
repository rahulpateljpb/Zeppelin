package com.ahd23.aja106.inno456.bean;

public class Feedback {
	private int feedbackID;
	private int sEATCOMFORT;
	private int cABINSTAFFSERVICE;
	private int fOODANDBEVERAGES;
	private int iNFLIGHTENT;
	private int gROUNDSERVICES;
	private String cOMMENTS;
	private int userID;
	
	
	
	public Feedback() {
		super();
	}
	public Feedback(int feedbackID, int sEATCOMFORT, int cABINSTAFFSERVICE,
			int fOODANDBEVERAGES, int iNFLIGHTENT, int gROUNDSERVICES,
		String cOMMENTS, int userID) {
		super();
		this.feedbackID = feedbackID;
		this.sEATCOMFORT = sEATCOMFORT;
		this.cABINSTAFFSERVICE = cABINSTAFFSERVICE;
		this.fOODANDBEVERAGES = fOODANDBEVERAGES;
		this.iNFLIGHTENT = iNFLIGHTENT;
		this.gROUNDSERVICES = gROUNDSERVICES;
		this.cOMMENTS = cOMMENTS;
		this.userID = userID;
	}
	public int getFeedbackID() {
		return feedbackID;
	}
	public void setFeedbackID(int feedbackID) {
		this.feedbackID = feedbackID;
	}
	public int getsEATCOMFORT() {
		return sEATCOMFORT;
	}
	public void setsEATCOMFORT(int sEATCOMFORT) {
		this.sEATCOMFORT = sEATCOMFORT;
	}
	public int getcABINSTAFFSERVICE() {
		return cABINSTAFFSERVICE;
	}
	public void setcABINSTAFFSERVICE(int cABINSTAFFSERVICE) {
		this.cABINSTAFFSERVICE = cABINSTAFFSERVICE;
	}
	public int getfOODANDBEVERAGES() {
		return fOODANDBEVERAGES;
	}
	public void setfOODANDBEVERAGES(int fOODANDBEVERAGES) {
		this.fOODANDBEVERAGES = fOODANDBEVERAGES;
	}
	public int getiNFLIGHTENT() {
		return iNFLIGHTENT;
	}
	public void setiNFLIGHTENT(int iNFLIGHTENT) {
		this.iNFLIGHTENT = iNFLIGHTENT;
	}
	public int getgROUNDSERVICES() {
		return gROUNDSERVICES;
	}
	public void setgROUNDSERVICES(int gROUNDSERVICES) {
		this.gROUNDSERVICES = gROUNDSERVICES;
	}
	public String getcOMMENTS() {
		return cOMMENTS;
	}
	public void setcOMMENTS(String cOMMENTS) {
		this.cOMMENTS = cOMMENTS;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	
	
}
