package com.restn.DBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConfig {

	  public static Connection getConn() {
		    Connection con = null;
		    String loadDriver = "com.mysql.jdbc.Driver";
		    String dbURL = "jdbc:mysql://localhost:3305";
		    String dbUSERNAME = "root";
		    String dbPASSWORD = "root";
		    try {
		    	Class.forName("com.mysql.jdbc.Driver");
		      con = DriverManager.getConnection(dbURL, dbUSERNAME, dbPASSWORD);
		    } catch (ClassNotFoundException e) {
		      // TODO Auto-generated catch block
		      e.printStackTrace();
		    } catch (SQLException e) {
		      // TODO Auto-generated catch block
		      e.printStackTrace();
		    }
		    return con;
		  }

	
}
