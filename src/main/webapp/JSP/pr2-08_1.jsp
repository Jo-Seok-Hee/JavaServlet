<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div style="width:800px;">
		<h1>책 목록</h1>
		<form method="get" action="/JSP/pr2-08_2.jsp">
			<table class="text-align:center" border="1">
				<thead>
					<tr>
						<th>id</th>
						<th>표지</th>
						<th>제목</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1000</td>
						<td ><img style="width:100px;height:100px;" src="http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg"></td>
						<td style="font-size:25px;"><a href="/JSP/pr2-08_2.jsp?id=1000" name="id">아몬드</a></td>
					</tr>
					<tr>
						<td>1001</td>
						<td><img style="width:100px;height:100px;" src="http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg"></td>
						<td style="font-size:25px;"><a href="/JSP/pr2-08_2.jsp?id=1001" name="id">사피엔스</a></td>
					</tr>
					<tr>
						<td>1002</td>
						<td><img style="width:100px;height:100px;" src="http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg"></td>
						<td style="font-size:25px;"><a href="/JSP/pr2-08_2.jsp?id=1002" name="id">코스모스</a></td>
					</tr>
					<tr>
						<td>1003</td>
						<td><img style="width:100px;height:100px;" src="http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg"></td>
						<td style="font-size:25px;"><a href="/JSP/pr2-08_2.jsp?id=1003" name="id">나미야 잡화점의 기적</a></td>
					</tr>
				
				
				</tbody>			
				
				
			</table>
		</form>

	</div>
</body>
</html>