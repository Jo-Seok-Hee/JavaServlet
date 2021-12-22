package db;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;
@WebServlet("/db/pr02_delete")
public class databasePr02delete extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		String query = "DELETE FROM `favorites` WHERE `id` = "+id+";";
		
		mysqlService.update(query);
		mysqlService.disconnect();
		
		response.sendRedirect("/db/pr02_1.jsp");
		
	}
}
