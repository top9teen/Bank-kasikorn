package com.kasikorn.demo.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConDB {

	
	public Connection openConnect() {
		Connection connect = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			/*connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1/projectdb2?useUnicode=true&characterEncoding=utf-8" + "?user=root&password=");*/

			connect = DriverManager.getConnection("jdbc:mysql:///Agentdb?useUnicode=true&characterEncoding=utf-8", "root", "");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return connect;
	}
	
}
