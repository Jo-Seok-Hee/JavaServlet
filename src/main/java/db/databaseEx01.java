package db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MysqlService;

@WebServlet("/db/ex01")
public class databaseEx01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "SELECT * FROM `used_goods`";
		ResultSet resultSet = mysqlService.select(query);
		
		try {
			while(resultSet.next()) {
				String title = (resultSet.getString("title"));
				int price = (resultSet.getInt("price"));
				
				out.println(title+" ㅇㅇㅇㅇ"+price);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		 
		
		
		
		
	}
}
