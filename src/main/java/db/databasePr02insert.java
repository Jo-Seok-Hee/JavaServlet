package db;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;


@WebServlet("/db/pr02_insert")
public class databasePr02insert extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "INSERT INTO `favorites`\r\n"
				+ "(`name`,`url`,`createdAt`,`updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('"+name+"','"+url+"',now(),now())";
		
		mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/db/pr02_1.jsp");
	}
}
