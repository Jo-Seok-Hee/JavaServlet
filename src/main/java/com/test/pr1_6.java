package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/pr1_6")
public class pr1_6 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("application/json");    //EX)  html,plain
		response.setCharacterEncoding("utf-8");
		

		PrintWriter out = response.getWriter();
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		out.println("{");
		
		out.println("더하기:" + (number1 + number2) + ",");
		out.println("뺴기:" + (number1 - number2) + ",");
		out.println("고파기:" + (number1 * number2) + ",");
		out.println("나눠버리기:" + (number1 / number2));
		
		out.print("}");
		
		
		
		
		
	}
	
}
