<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>아이유 -리스트</title>
</head>
<body>
	<%@ include file="melong-data.jsp" %>
	<div class="container">
		<jsp:include page="melong-header.jsp"/>
		<jsp:include page="melong-menu.jsp"/>
		
		
		
		
		<section>
			<article class="artist">
			</article>
				<div class="artist-box d-flex p-3 " style="border:1px solid green;" >
					<div class="artist-img">
						<img width="150" src="<%= artistInfo.get("photo") %>">
					</div>
					<div class="artist-info ml-3">
						<h3><%= artistInfo.get("name") %></h3>
						<div><%= artistInfo.get("agency") %></div>
						<div><%= artistInfo.get("debute") %></div>
					</div>
				</div>
			
			<article class="music-list mt-3">
				<h4>곡 목록</h4>
				<table class="table next-center table-sm">
					<thead >
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>앨범</th>
						</tr>
					</thead>
					<tbody>
					<%
						for(Map<String, Object> music : musicList){
					%>
						<tr>
							<td> <%= music.get("id") %></td>
							<td> <a href="JSP/music-detail.jsp?id=<%= music.get("id") %>"><%= music.get("title") %></a></td>
							<td> <%= music.get("album") %></td>
						</tr>
					<% } %>	
					</tbody>
				</table>
			
			</article>
		</section>
		
		<jsp:include page="melong-footer.jsp"/>
		
		
		
		
	</div>
</body>
</html>