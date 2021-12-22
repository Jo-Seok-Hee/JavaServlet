package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/pr1_9")
public class pr1_9 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");    //EX)  html,plain
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println("<html><head><title>입사지원</title></head><body>");
		
		out.println("<h1>"+name+"님 지원이 완료 되었습니다 </h1><hr>");
		
		out.println("지원 내용 <br>" + introduce);
		out.println("</body></html");
		
		
	}
	
}
