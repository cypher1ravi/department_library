package com.jobsence.dao;

import java.sql.*;

public class DB {
public static Connection getCon(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3308/cslibrary", "root", "12345");
		
	}catch(Exception e){System.out.println(e);}
	return con;
}
}
