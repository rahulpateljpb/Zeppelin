<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="Header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/feedbackstyle.css">
<title>Insert title here</title>

</head>
<body background ="images/marble_texture1824.jpg">
	<center>
		<h1>Feedback</h1>
		</center>
	<center>
			<div class="stars" id="text">
				Seat Comfort
				<form action="MainServlet" method="post">
					<input class="star star-5" id="star-5" type="radio" name="starComfort" value="5"/>
					<label class="star star-5" for="star-5"></label> <input
						class="star star-4" id="star-4" type="radio" name="starComfort" value="4"/> <label
						class="star star-4" for="star-4"></label> <input
						class="star star-3" id="star-3" type="radio" name="starComfort" value="3" /> <label
						class="star star-3" for="star-3"></label> <input
						class="star star-2" id="star-2" type="radio" name="starComfort" value="2"/> <label
						class="star star-2" for="star-2"></label> <input
						class="star star-1" id="star-1" type="radio" name="starComfort" value="1"/> <label
						class="star star-1" for="star-1"></label>
				<!-- </form> -->
			</div>
			<br>
			<br>
			<div class="stars" id="text">
				Cabin Staff Service <br>
				<!-- <form action=""> -->
					<input class="star star-5" id="star-10" type="radio" name="starCabin" value="5" />
					<label class="star star-5" for="star-10"></label> <input
						class="star star-4" id="star-9" type="radio" name="starCabin" value="4"/> <label
						class="star star-4" for="star-9"></label> <input
						class="star star-3" id="star-8" type="radio" name="starCabin" value="3"/> <label
						class="star star-3" for="star-8"></label> <input
						class="star star-2" id="star-7" type="radio" name="starCabin" value="2"/> <label
						class="star star-2" for="star-7"></label> <input
						class="star star-1" id="star-6" type="radio" name="starCabin" value="1" /> <label
						class="star star-1" for="star-6"></label>
			<!-- 	</form> -->
			</div>
			<br>
			<br>
			<div class="stars" id="text">
				Food And Beverages <br>
				<!-- <form action=""> -->
					<input class="star star-5" id="star-15" type="radio" name="starFood" value="5"/>
					<label class="star star-5" for="star-15"></label> <input
						class="star star-4" id="star-14" type="radio" name="starFood" value="4"/> <label
						class="star star-4" for="star-14"></label> <input
						class="star star-3" id="star-13" type="radio" name="starFood" value="3" /> <label
						class="star star-3" for="star-13"></label> <input
						class="star star-2" id="star-12" type="radio" name="starFood" value="2" /> <label
						class="star star-2" for="star-12"></label> <input
						class="star star-1" id="star-11" type="radio" name="starFood" value="1"/> <label
						class="star star-1" for="star-11"></label>
				<!-- </form> -->
			</div>
			<br>
			<br>
			<div class="stars" id="text">
				Inflight Entertainment<br>
				<!-- <form action=""> -->
					<input class="star star-5" id="star-20" type="radio" name="starInflight" value="5"/>
					<label class="star star-5" for="star-20"></label> <input
						class="star star-4" id="star-19" type="radio" name="starInflight" value="4"/> <label
						class="star star-4" for="star-19"></label> <input
						class="star star-3" id="star-18" type="radio" name="starInflight" value="3" /> <label
						class="star star-3" for="star-18"></label> <input
						class="star star-2" id="star-17" type="radio" name="starInflight" value="2"/> <label
						class="star star-2" for="star-17"></label> <input
						class="star star-1" id="star-16" type="radio" name="starInflight" value="1" /> <label
						class="star star-1" for="star-16"></label>
			<!-- 	</form> -->
			</div>
			<br>
			<br>
			<div class="stars" id="text">Ground Services<br>
			<input class="star star-5" id="star-25" type="radio" name="starGround" value="5"/>
					<label class="star star-5" for="star-25"></label> <input
						class="star star-4" id="star-24" type="radio" name="starGround" value="4" /> <label
						class="star star-4" for="star-24"></label> <input
						class="star star-3" id="star-23" type="radio" name="starGround" value="3"/> <label
						class="star star-3" for="star-23"></label> <input
						class="star star-2" id="star-22" type="radio" name="starGround" value="2"/> <label
						class="star star-2" for="star-22"></label> <input
						class="star star-1" id="star-21" type="radio" name="starGround" value="1"/> <label
						class="star star-1" for="star-21"></label>
			
				<!-- <form action=""> -->
				<!-- 	<input class="star star-5" id="star-25" type="radio" name="starGround" />
					<label class="star star-5" for="star-25">
					</label> 
				<input class="star star-4" id="star-24" type="radio" name="starGround" /> 
				<label
						class="star star-4" for="star-24"></label> 
						<input
						class="star star-3" id="star-23" type="radio" name="starGround" />
						<br> <label
						class="star star-3" for="star-23"></label> 
						 <input
						class="star star-2" id="star-22" type="radio" name="starGround" /> 
						<label
						class="star star-2" for="star-22">
						</label> <input
			                                class="star star-1" id="star-21" type="radio" name="starGround" /> 
						<label
						class="star star-1" for="star-21">
				</label> -->
				<!-- </form> -->
			</div>
			<br>
			<br>
			<div class="" id="text">
				Comments <br>
			
					<textarea rows="2" cols="20" name="comments" id="comments" required	maxlength="500"></textarea>
			
			</div>
            <br>
			<input type="submit" value="Submit" id="Search_Arrivals">	
			<input type="hidden" name="hiddenAction" value="feedback">	
		</form>
			
			</center>
			
</body>
<jsp:include page="Footer.jsp"></jsp:include>
</html>