package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test/pr1_3")
public class pr1_3 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
		response.setContentType("text/html");    //EX)  html,plain
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		
		String dateString = formatter.format(now);
		
		out.println("<html><head><title>고양이 ~~</title></head><body>");
		
		out.println("<h1>[단독] 고양이가 야옹해</h1>");
		out.println("<p><small>기사 입력 시간 : "+ dateString);
		out.println("<hr> 끝 </small></p></body></html>");
		
	}
	
	
}
