package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionMySQL implements ConnectionManager{
    
    //MySQL connection 1
    public static Connection getCon() throws SQLException, InstantiationException, IllegalAccessException
    {
       Connection con = null;
        try {
             String url="jdbc:mysql://localhost/schema_example";   
             Class.forName("com.mysql.jdbc.Driver").newInstance();
            
             con= DriverManager.getConnection(url,"root","root");
            
            
        }catch(SQLException | ClassNotFoundException ex){
            Logger.getLogger(ConnectionMySQL.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }

    /*-----------------------------------------------------------------------------------------------*/
    
    //MySQL connection 2
    @Override
    public Connection open(String jdbcUrl) {
        Connection conn = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, "root", "root");
            } catch (ClassNotFoundException | SQLException e) {
		throw new RuntimeException(e);
            }
        return conn;
    }

    @Override
    public Connection executeSql(Connection conn, String sql) {
        PreparedStatement prepareStatement;
            try {
		prepareStatement = conn.prepareStatement(sql);
		prepareStatement.execute(sql);
            } catch (SQLException e) {
                throw new RuntimeException(e);
		}
        return conn;
    }

    @Override
    public void close(Connection conn) {
        try {
            conn.close();
	} catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
