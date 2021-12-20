<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.lang.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>아이유 세부사항</title>
</head>
<body>
	<%@ include file="melong-data.jsp" %>
	<%
		String idString = request.getParameter("id");
		Map<String, Object> targetMap = null;
		if(idString != null){
			//id를 통한 검색
			Integer musicId = Integer.parseInt(idString);
			for(Map<String, Object> music : musicList){
				Integer id = (Integer)music.get("id");
				if(musicId.equals(id)){
					targetMap = music;
				}
			}
		}
		String title = request.getParameter("title");
		if(title != null){
			//title를 통한 검색
			for(Map<String, Object> music : musicList){
				if(title.equals(music.get("title"))){
					targetMap = music;
				}
			}
		}
		
		Integer time = (Integer)targetMap.get("time");
	%>
	
	<div class="container">
		<jsp:include page="melong-header.jsp"/>
		<jsp:include page="melong-menu.jsp"/>
		
		
		
		<section>
			<%
				for(Map<String, Object> music : musicList){
					
					Integer id = (Integer)music.get("id");
					if(idString.equals(id)){
						 time = (Integer)music.get("time");
					
			%>
			<article class="music-info mt-3">
				<h4> 곡정보 </h4>
				<div class="info-box d-flex " style="border:1px solid green;">
					<div class="album-img">
						<img width="150" src="<%= music.get("thumbnail") %>"> 
					</div>
					<div class="detail mt-3"> 
						<div class="display-4"><%= music.get("title") %></div>
						<div class="text-success font-weight-bold"><%= music.get("singer") %></div>
						<div><small>앨범 : <%= music.get("album") %></small></div>
						<div><small>재생시간 : <%= time / 60+" 분"+ time%60+" 초" %></small></div>
						<div><small>작곡가: <%= music.get("composer") %></small></div>
						<div><small>작사가: <%= music.get("lyricist") %></small></div>
					</div>
				</div>
			</article>
			
			<article class="music-lyrics">
			
			</article>
			
			<% } } %>
		
		</section>
		
		
		
		<jsp:include page="melong-footer.jsp"/>
	
	
	
	
	</div>
</body>
</html>