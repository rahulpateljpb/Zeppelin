package com.ahd23.aja106.inno456.services;

import com.ahd23.aja106.inno456.bean.Feedback;
import com.ahd23.aja106.inno456.dao.DBOperations;

public class FeedbackService {
	public boolean feedbackRegister(Feedback feedback){
		return new DBOperations().addFeedback(feedback);
	}
}
