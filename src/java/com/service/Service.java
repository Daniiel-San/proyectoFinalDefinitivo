package com.service;

import com.connection.ConnectionManager;
import com.connection.ConnectionMySQL;
import com.model.Pedido;
import com.model.Product;
import com.model.User;
import com.repository.Repository;
import com.util.UserAssembler;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

public class Service {
    
    Repository repositorio = new Repository();
    ConnectionManager manager = new ConnectionMySQL();
    
    public User assembleUserFromRequest(HttpServletRequest req) {
	return UserAssembler.assembleUser(req);
    }
    
    //Check if user exists.
    public Boolean checkUserfromService(String username, String password) throws InstantiationException, IllegalAccessException{
        try {
            PreparedStatement ps = ConnectionMySQL.getCon().prepareStatement(repositorio.getSqlSearchUser());
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            return rs.next();
        }catch(SQLException ex) {
            System.out.println("SQLException checkUserfromService method");
        }
        return false;
    }
    
    //Call insertUser from repository.
    public void insertUserfromService(User user) {
	repositorio.createTable();
        repositorio.insertUser(user);
    }
    
    //Call insertPedido from repository.
    public void insertPedidofromService(Pedido pedido) {
        repositorio.insertPedido(pedido);
    }
    
    //Call listProduct from repository.
    public List<Product> listProductsfromService() {
        return repositorio.listProduct();
    }
    
    //List users (must be delete).
    public List listarUsers(String username) throws InstantiationException, IllegalAccessException {
        List listaUsuarios = new ArrayList<>();
        
        Connection conn = manager.open(repositorio.getJdbc());
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            preparedStatement = conn.prepareStatement(repositorio.getSqlListarUsers());
            resultSet = preparedStatement.executeQuery();
            
            while(resultSet.next()) {
                listaUsuarios.add(resultSet.getString(username));
            }
        }catch(SQLException e) {
        }
        return listaUsuarios;
    }
  
    //Call deleteUser from repository.
    public void deleteUserfromService(User user) {
        repositorio.deleteUser(user);
    }

}
