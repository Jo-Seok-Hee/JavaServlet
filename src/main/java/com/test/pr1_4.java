package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test/pr1_4")
public class pr1_4 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");    //EX)  html,plain
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>리스트 만들기</title></head><body>");
		out.println("<table><ul>");
		
		for(int i = 0; i < 30; i++) {
			out.println("<li>"+i+"번째 리스트</li>");
		}
		
		out.println("</ul></table></body></html>");
	}
	
}
