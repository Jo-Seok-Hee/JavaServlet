<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산 결과</title>
</head>
<body>
	<%
		int firstNumber = Integer.parseInt(request.getParameter("firstNumber"));
		int secondNumber = Integer.parseInt(request.getParameter("secondNumber"));
		String calculate = request.getParameter("calculate");
	
		int result=0;
		
		switch(calculate) {
		
		case "+":
			result = firstNumber + secondNumber;
			break;
			
		case "-":
			result = firstNumber - secondNumber;
			break;
			
		case "X":
			result = firstNumber * secondNumber;
			break;
			
		case "/":
			result = firstNumber / secondNumber;
			break;
		
		default:
			break;
		}
		
	%>
	
	<h2>게산 결과</h2>
	<h1>
		<%= firstNumber %>
		<%= calculate %>
		<%= secondNumber %>
		=
		<%= result %>
		
		
	</h1>
	

</body>
</html>