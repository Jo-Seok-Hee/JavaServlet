package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null;
	
	//접속 주소, 아이디, 패스워드
	
	private String url;
	private String id;
	private String password;
	
	//접속 객체 관리
	private Connection conn;
	private Statement statement;
	
	//객체 생성해서 돌려주는 메소드
	//싱글턴 패턴 ???
	public static MysqlService getInstance() {
		if(mysqlService == null){
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	private MysqlService() {
		this.url = "jdbc:mysql://localhost:3306/test";
		this.id = "root";
		this.password = "root";
		
		
	}
	
	// 접속 기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			this.conn = DriverManager.getConnection(this.url, this.id, this.password);
			this.statement = this.conn.createStatement();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	// 접속 끊기 기능
	
	public void disconnect() {
		try {
			this.statement.close();
			this.conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// select 쿼리 수행 기능
	public ResultSet select(String query) {
		try {
			return this.statement.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
		
	//insert, update , delete 쿼리 수행기능
	
	public int update(String query) {
		
		try {
			return this.statement.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
			return 0;
		}
	}
}
