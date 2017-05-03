package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnector {
	private static String driverName="com.mysql.jdbc.Driver";
	private static String url="jdbc:mysql://localhost/";
	private static String user="root";
	private static String password=""; //パスワードは各々のやつを書いてください　書いたあとはこのファイルだけコミットしないようお願いします
	public Connection getConnection(String databaseName){
		Connection con=null;
		try{
			Class.forName(driverName);
			con=(Connection)DriverManager.getConnection(url + databaseName,user,password);

		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return con;
	}

}
