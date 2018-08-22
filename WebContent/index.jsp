<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script  type="text/javascript" src="js/jquery.min.js"></script>
<script  type="text/javascript" src="javascripts/callLocationsApi.js"></script>
</head>
<body >
<script >
$.ajax({
   // async: true,
	type: "post",
    url: "IndexPage",
    success:  function(json){
    	parseLocationApi(json);
    }
});
</script>
<input type="text" list="dataList" style="overflow: hidden; overflow-y:scroll">
<datalist id="dataList" >
</datalist> 
</body>
</html>