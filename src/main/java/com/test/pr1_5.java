package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//여기에다 준비 해둔다 이런뜻인가
@WebServlet("/servlet/pr1_5")
public class pr1_5 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");    //EX)  html,plain
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		int number = Integer.parseInt(request.getParameter("number")); 
		
		out.println("<html><head><title>구구단 링크</title></head><body>");
		
		out.println("<table><ul>");
		
		for(int i = 0; i < 9; i++) {
			out.println("<li> "+number+" X "+ (i+1) +" = "+ (number*(i+1))+"</li>");
		}
		
		out.println("</ul></table></body></html>");
	}
	
}
