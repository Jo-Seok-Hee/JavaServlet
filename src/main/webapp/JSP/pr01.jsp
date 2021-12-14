<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--      연습문제 1번
	<%int[] scores = {80, 90, 100, 95, 80}; 
	 int sum = 0; 
	 for(int i = 0; i < 5; i++){
		sum = sum + scores[i];
	}  
		double avg = sum/5.0;
	%>
	
	평균 점수는 <%= avg %>입니다. --%>
	
	<%-- 연습문제 2번
	<% List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});%>
	
	<% int score = 0;
	
	   for(String i : scoreList){
		   if(i.equals("O")){
			   score = score + 10;
		   }
	   }
	
	
	
	%>
	
	시험무의 점슈는 <%= score %> 입니당. --%>
	
	
	<%-- 연습문제 3번  
	
	<%! 
		public int sum(int i){
			int sum = 0;
			for(int a=0; a <= i; a++){
				sum = sum + a;
			}
			
		return sum;
	}
	%> 
	
	1 부터 i 까지의 합은<%= sum(50) %> --%>
	
	
	<%-- 연습문제 4번 
	
	<% String birthDay = "20010820";%>
	
	<% String stringAge = birthDay.substring(6,8); 
	
		int age = Integer.parseInt(stringAge);
	
	%>
	
	<%= birthDay%>의 나이는 <%=age %>입니달.--%>
	
	
	
</body>
</html>