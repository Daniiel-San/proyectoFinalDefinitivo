package com.test;

import com.connection.ConnectionMySQL;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

//Testing connection MySQL.
public class ConnectionTest {
    
    public static void main(String[] args) throws SQLException {
        
        String sql;
        sql = "SELECT * FROM users;";
        
        try {
            PreparedStatement ps=ConnectionMySQL.getCon().prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            
            
            
            while(rs.next()){
            
                System.out.println(rs.getString("username"));
            }
            
        } catch (InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(ConnectionTest.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
