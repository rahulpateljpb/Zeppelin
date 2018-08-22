function validation()
{
	alert("in validation");
	var email_id=document.getElementById("Email").value;
	var confirm_email=document.getElementById("ConfirmEmail").value;
	var allowed=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$)/;
	var password=document.getElementById("password").value;
	var confirm_password=document.getElementById("ConfirmPassword").value;
	var first_name=document.getElementById("FName").value;
	var last_name=document.getElementById("LName").value;
	var address=document.getElementById("address").value;

	var flag;
	if(email_id=="")
	{
		document.getElementById("Email_ID").innerHTML="Enter The Email ID";
		return false;
	}
	if(email_id!="")
	{
		flag=allowed.test(email_id);
		if(!flag)
		{	
			document.getElementById("Email_ID").innerHTML="Enter Proper Format";
			return false;
		}
	}
	if(confirm_email=="")
	{
		document.getElementById("Confirm_Email_ID").innerHTML="Enter The Email ID";
		return false;
	}
	if(email_id!=confirm_email)
		{
		document.getElementById("Confirm_Email_ID").innerHTML="Enter The Same Email_ID";
		return false;
		}
	if(password=="")
		{
		document.getElementById("Choose_Password").innerHTML="Enter The Password";
		return false;
		}
	if(password!="")
		{
		if(password.length<6)
			{
			document.getElementById("Choose_Password").innerHTML="Enter Minimum 6 characters";
			return false;
			}
		}
	if(confirm_password=="")
		{
		document.getElementById("Confirm_Password").innerHTML="Enter The  Password";
		return false;
		}
	if(password!=confirm_password)
	{
	document.getElementById("Confirm_Password").innerHTML="Enter The Same Password";
	return false;
	}
	if(first_name=="")
		{
		document.getElementById("First_Name").innerHTML="Enter The First Name";
		return false;
		}
	if(last_name=="")
	{
	document.getElementById("Last_Name").innerHTML="Enter The Last Name";
	return false;
	}
	if(address=="")
	{
	document.getElementById("Address").innerHTML="Enter The Last Name";
	return false;
	}
	return true;
}
/*function valEmail(email_id)
{
	var allowed=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$)/;
	return allowed.test(email_id);
}*/