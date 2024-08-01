package dbconnections;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class studentdb {
		private static final String driver="com.mysql.cj.jdbc.Driver";
		private static final String url="jdbc:mysql://localhost:3306/student";
		private static final String username="root";
		private static final String password="Geethu@2212";
		private static Connection conn;
		
		public static Connection getConnection() {
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, username, password);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return conn;
		}

}
