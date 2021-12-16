<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//받는 파라미터만 정의  파라미터없으면 문제생김//
		String menu = request.getParameter("menu");
		String review = request.getParameter("review");
		
		
		//리스트 정의 List(map,map,map,map,map---)
		List<Map<String, Object>> list = new ArrayList<>();
		//map(menu,치킨)(name,치킨집)(별점,X.X)
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	%> 
	
	<h1 class="text-center">검색 결과</h1>
	<table class="table text-center">
		<thead>
			<tr>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</tr>
		</thead>
		<tbody>
		
		<%
			for(int i = 0; i < list.size(); i++){
				Map<String, Object> item = list.get(i);
				if(menu.equals(item.get("menu"))){
					if(review == null || review != null && (Double)item.get("point") >= 4.0){
		%>  
			<tr>
				<td><%= item.get("menu") %></td>
				<td><%= item.get("name") %></td>
				<td><%= item.get("point") %></td>
			
			</tr>
		<% }}} %>
		</tbody>
	
	
	</table>
	
</body>
</html>