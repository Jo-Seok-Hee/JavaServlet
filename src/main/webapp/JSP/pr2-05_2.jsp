<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<%
		int centimeter = Integer.parseInt(request.getParameter("centimeter"));
		String[] units = request.getParameterValues("unit");
		
		
		String resultString ="";
		
		
		
		for(int i = 0; i < units.length; i++){
			if(units[i].equals("inch")){
				double inch;
				inch = centimeter/2.54;
				resultString = inch + "inch";
				
			} else if(units[i].equals("yard")){
				double yard;
				yard = centimeter/91.44;
				resultString = yard + "<br>";
			} else if(units[i].equals("feet")){
				double feet;
				feet = centimeter/30.48;
				resultString = feet + "<br>";
			} else if(units[i].equals("meter")){
				double meter;
				meter = centimeter/100.0;
				resultString = meter + "<br>";
			}
		}
		
	 	
		
		
	
		
	
	%>
	
	<h1>변환 결과</h1>
	<h3><%= centimeter %>cm</h3> <hr>
	<h3>
		<%= resultString %>in <br>
		
	</h3>
</body>
</html>