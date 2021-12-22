package db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/db/ex02_insert")
public class databaseEx02Insert extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		
		PrintWriter out = response.getWriter(); 
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`,`yyyymmdd`,`introduce`,`email`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "('"+name+"','"+birth+"','"+email+"','"+introduce+"',now(),now())";
		
		//mysqlService.update(query);
		
		mysqlService.disconnect();
		
		// 다른페이지 바로 이동하
		// redirect ( page >> page ) 변환
		
		response.sendRedirect("/db/ex02_1.jsp");
		
		
	}
}
