package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/pr1_7")
public class pr1_7 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");    //EX)  html,plain
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String priceString = request.getParameter("price");
		
		int price = Integer.parseInt(priceString);
		
		
		out.println("<html><head><title>주문하기</title></head><body>");
		
		if(!(address.contains("서울시"))) {
			out.println("<h1>배달 불가 지역!!</h1>");
		} else if(card.equals("신한카드")) {
			out.println("<h1>결제 불가능 카드</h1>");
		} else {
			out.println("<h3>"+ address +" 배달 준비중</h3><hr>");
		
			out.println("결제 금액 : "+ price);
		}
		
	
	}
}
