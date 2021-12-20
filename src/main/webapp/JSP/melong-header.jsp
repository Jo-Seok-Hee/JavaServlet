<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
</head>
<body>
	<header class="d-flex">
			<div class="logo ml-3 col-2">
				<h3 class="text-success">Melong</h3>
			</div>
			
				<div class="search col-4">
				<form method="get" action="/JSP/melong-detail.jsp">
					<div class="input-group">
						  <input type="text" class="form-control" placeholder="노래검색" aria-label="Recipient's username" aria-describedby="basic-addon2">
						  <div class="input-group-append">
						    <button class="btn btn-success" type="submit">검색</button>
						  </div>
					</div>
					</form>
				</div>
			
	</header>
</body>
</html>