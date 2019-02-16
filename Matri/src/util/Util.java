package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Util {

	public static Connection getSqlConnection() {
		try {
			Class.forName("");
			Connection conn = DriverManager.getConnection("", "root", "root");
			return conn;
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	public static String getCommaSeparatedString(String[] checkedUser){
		if (checkedUser.length > 0) {
			StringBuilder sb = new StringBuilder();

			for (String n : checkedUser) {
				sb.append(n).append(",");
			}
			sb.deleteCharAt(sb.length() - 1);

			return sb.toString();
		} else {
			return "";
		}
	}
}
