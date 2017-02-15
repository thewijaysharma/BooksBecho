package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class connect {
	
	private static Connection c;
	static {
		
		try{
		Class.forName("com.mysql.jdbc.Driver");
		c=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookoldbooks","root","");
	}
catch(Exception e){
	e.printStackTrace();
	}
}
		
public static Connection getcon() {
	
	  return c;
  }
		
	}
