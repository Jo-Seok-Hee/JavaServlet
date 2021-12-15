<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>    
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss"); --%>
	<% 
		Date now = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat timeFormat = new SimpleDateFormat("hh시 mm분 ss초");
	
		String nowDate = dateFormat.format(now);
		
		String nowTime = timeFormat.format(now);
		
		String display = request.getParameter("display");
		String formatString = null;
		if(display.equals("date")){
			formatString = nowDate;	
		} else if(display.equals("time")){
			formatString = nowTime;
		}
		
	%>
</body>
</html>