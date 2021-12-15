<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST Method</title>
</head>
<body>
	<h1>사칙 연산</h1> 
	<p>
		<form method="post" action="/JSP/pr2-04_2.jsp">
			<input type="text" name="firstNumber">
			<select name="calculate">
				<option >+</option>
				<option >-</option>
				<option >X</option>
				<option >/</option>
			</select>
			<input type="text" name="secondNumber">
			<button type="submit">계산</button>
	
		</form>
	</p>
</body>
</html>