package db;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/db/ex02_delete")
public class databaseEx02delete extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id= Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "DELETE FROM `new_user` WHERE `id` = "+id+";";
		//쿼리 수행
		mysqlService.update(query);
		//반복되지 않기위해 연결해재
		mysqlService.disconnect();
		
		response.sendRedirect("/db/ex02_1.jsp");
	}

}
