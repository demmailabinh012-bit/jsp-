package db;

import java.sql.*;

public class database{
	Connection conn;//数据库连接
	Statement stmt;
	ResultSet rs;
	
	
	public  database(){
		//数据库连接
		try {
			Class.forName("org.sqlite.JDBC");//加载sqlite连接器
			conn=DriverManager.getConnection("jdbc:sqlite://C:/Users/Adminstrator/Desktop/web.db");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
	}
	
	
}