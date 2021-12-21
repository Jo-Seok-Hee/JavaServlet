package db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex00")
public class databaseEx00 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			String url = "jdbc:mysql://localhost:3306/test";
			String userId = "root";
			String password = "root";
			
			Connection connection = DriverManager.getConnection(url, userId, password);
			Statement statement = connection.createStatement();
			
			String selectQuery = "SELECT * FROM `used_goods`";
			ResultSet resultSet = statement.executeQuery(selectQuery);
			
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				out.print("제품명 : "+ title);
				int price = resultSet.getInt("price");
				out.println("가격 : "+price+"<br>" );
			}
			
//			String insertQuery = "INSERT INTO `used_goods` \r\n"
//					
//			int count = statement.executeUpdated(insertQuery);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
