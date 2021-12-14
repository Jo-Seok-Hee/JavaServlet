<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%!
		private int number = 10;
	
		public String getHelloWorld(){
			 return "hello world";
		}
	%>
	
	<%= number + 20 %>
	
	<br>
	
	<%= getHelloWorld() %>
</body>
</html>