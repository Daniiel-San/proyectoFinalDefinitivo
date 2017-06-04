package com.repository;

import com.connection.ConnectionManager;
import com.connection.ConnectionMySQL;
import com.model.Pedido;
import com.model.Product;
import com.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Repository {
    
    private String sqlCrearUser = "create table IF NOT EXISTS users (username varchar(25) PRIMARY KEY, email varchar(25), password varchar(25));";
    private String sqlInsertUser = "insert into users(username, email, password) values (?, ?, ?)";
    private String sqlSearchUser = "select username, password from users where username = ? and password = ?";
    private String sqlListarUsers = "select * from users";
    private String sqlListarProducts = "select * from inventory";
    private String sqlListarPedidos = "select * from pedidos";
    private String sqlDeleteUser = "delete from users where username = ?";
    private String sqlInsertPedido = "insert into pedidos(nomProduct) values (?)";
    
    private static String jdbc = "jdbc:mysql://localhost/schema_example";
    ConnectionManager manager = new ConnectionMySQL();
    Connection conn = null;
    
    //Create table if not exists.
    public void createTable(){
	Statement statement = null;
	try{
            Connection conn = manager.open(jdbc);
            statement = conn.createStatement();
            statement.execute(sqlCrearUser);
	}catch (SQLException e) {
            System.out.println("SQLException createTable method");
	}finally{
            if(statement != null){
		try{
                    statement.close();
		}catch (SQLException e) {
                    System.out.println("SQLException createTable method");
		}
            }
            if(conn != null){
		try{
                    conn.close();
		}catch (SQLException e) {
                    System.out.println("SQLException createTable method");
		}
            }
	}
    }

    //Search Users in DB.
    /*public User searchUser(User userDelFormulario){
	User userEnLaBase = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	Connection conn = manager.open(jdbc);
	try{	
            preparedStatement = conn.prepareStatement(sqlSearchUser);
            preparedStatement.setString(1, userDelFormulario.getUsername());
            preparedStatement.setString(2, userDelFormulario.getPassword());
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
		userEnLaBase = new User();
		userEnLaBase.setUsername(resultSet.getString(1));
		userEnLaBase.setPassword(resultSet.getString(2));
            }
	}catch(SQLException e){
            System.out.println("SQLException createTable method");
            throw new RuntimeException(e);
	}finally{
            close(preparedStatement);
            close(resultSet);
	}
        manager.close(conn);
	return userEnLaBase;
	}*/
    
    //Insert a new user.
    public void insertUser(User user){
	PreparedStatement preparedstatement = null;
	Connection conn = manager.open(jdbc);
	try{
            preparedstatement = conn.prepareStatement(sqlInsertUser);
            preparedstatement.setString(1, user.getUsername());
            preparedstatement.setString(2, user.getPassword());
            preparedstatement.setString(3, user.getEmail());
            preparedstatement.executeUpdate();
	}catch (SQLException e) {
            System.out.println("SQLException createTable method");
            throw new RuntimeException(e);
	}finally{
            close(preparedstatement);
	}
        manager.close(conn);
    }
    
    //Insert a new pedido.
    public void insertPedido(Pedido pedido){
	PreparedStatement preparedstatement = null;
	Connection conn = manager.open(jdbc);
	try{
            preparedstatement = conn.prepareStatement(sqlInsertPedido);
            preparedstatement.setString(1, pedido.getNomPedido());
            preparedstatement.executeUpdate();
	}catch (SQLException e) {
            System.out.println("SQLException insertPedido method");
            throw new RuntimeException(e);
	}finally{
            close(preparedstatement);
	}
        manager.close(conn);
    }
    
    //List Users.
    public List<User> listUsers() {
        List<User> listaU = new ArrayList<User>();
        Connection conn = manager.open(jdbc);
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            preparedStatement = conn.prepareStatement(sqlListarUsers);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()) {
                //Empezamos con un dos ya que cuenta tambien el id del producto.
                //Añadir id al modelo.
                //Dejarlo asi.
                User user = new User(resultSet.getString(2), resultSet.getString(3), resultSet.getString(4));
                listaU.add(user);
                        
            }
        }catch ( SQLException e) {
            System.out.println("SQLException listProduct method");
            throw new RuntimeException(e);
        }finally {
            close(preparedStatement);
            close(resultSet);
        }
        manager.close(conn);
        return listaU;
    }
    
    public List listarUsers(String username) throws InstantiationException, IllegalAccessException {
        List listaUsuarios = new ArrayList<>();
        
        Connection conn = manager.open(jdbc);
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            preparedStatement = conn.prepareStatement(sqlListarUsers);
            resultSet = preparedStatement.executeQuery();
            
            while(resultSet.next()) {
                listaUsuarios.add(resultSet.getString(username));
            }
        }catch(SQLException e) {
        }
        return listaUsuarios;
    }
    
    //List Products.
    public List<Product> listProduct() {
        List<Product> listaP = new ArrayList<Product>();
        Connection conn = manager.open(jdbc);
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            preparedStatement = conn.prepareStatement(sqlListarProducts);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()) {
                //Empezamos con un dos ya que cuenta tambien el id del producto.
                //Añadir id al modelo.
                //Dejarlo asi.
                Product product = new Product(resultSet.getString(2), resultSet.getString(3), resultSet.getInt(4));
                listaP.add(product);
                        
            }
        }catch ( SQLException e) {
            System.out.println("SQLException listProduct method");
            throw new RuntimeException(e);
        }finally {
            close(preparedStatement);
            close(resultSet);
        }
        manager.close(conn);
        return listaP;
    }
    
    //List Pedidos.
    public List<Pedido> listPedidos() {
        List<Pedido> listaPe = new ArrayList<Pedido>();
        Connection conn = manager.open(jdbc);
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            preparedStatement = conn.prepareStatement(sqlListarPedidos);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()) {
                //Empezamos con un dos ya que cuenta tambien el id del producto.
                //Añadir id al modelo.
                //Dejarlo asi.
                Pedido pedido = new Pedido(resultSet.getString(2));
                listaPe.add(pedido);
                        
            }
        }catch ( SQLException e) {
            System.out.println("SQLException listProduct method");
            throw new RuntimeException(e);
        }finally {
            close(preparedStatement);
            close(resultSet);
        }
        manager.close(conn);
        return listaPe;
    }
    
    //Delete users.
    public void deleteUser(User user){
	PreparedStatement preparedstatement = null;
	Connection conn = manager.open(jdbc);
	try{
            preparedstatement = conn.prepareStatement(sqlDeleteUser);
            preparedstatement.setString(1, user.getUsername());
            preparedstatement.executeUpdate();
	}catch (SQLException e) {
            System.out.println("SQLException deleteUser method");
            throw new RuntimeException(e);
	}finally{
            close(preparedstatement);
	}
        manager.close(conn);
    }
    
    public void close(PreparedStatement preparedStatement){
	try{
            preparedStatement.close();
	}catch (SQLException e) {
            System.out.println("SQLException close PreparedStatement method");
            throw new RuntimeException(e);
	}
    }
	
    public void close(ResultSet resultSet){
	try{
            resultSet.close();
	}catch (SQLException e) {
            System.out.println("SQLException ResultSet method");
            throw new RuntimeException(e);
	}
    }

    public String getSqlCrearUser() {
        return sqlCrearUser;
    }

    public void setSqlCrearUser(String sqlCrearUser) {
        this.sqlCrearUser = sqlCrearUser;
    }

    public String getSqlInsertUser() {
        return sqlInsertUser;
    }

    public void setSqlInsertUser(String sqlInsertUser) {
        this.sqlInsertUser = sqlInsertUser;
    }

    public String getSqlSearchUser() {
        return sqlSearchUser;
    }

    public void setSqlSearchUser(String sqlSearchUser) {
        this.sqlSearchUser = sqlSearchUser;
    }
    
    public String getSqlListarUsers() {
        return sqlListarUsers;
    }

    public void setSqlListarUsers(String sqlListarUsers) {
        this.sqlListarUsers = sqlListarUsers;
    }

    public static String getJdbc() {
        return jdbc;
    }

    public static void setJdbc(String jdbc) {
        Repository.jdbc = jdbc;
    }

    public String getSqlDeleteUser() {
        return sqlDeleteUser;
    }

    public void setSqlDeleteUser(String sqlDeleteUser) {
        this.sqlDeleteUser = sqlDeleteUser;
    }

    public String getSqlListarProducts() {
        return sqlListarProducts;
    }

    public void setSqlListarProducts(String sqlListarProducts) {
        this.sqlListarProducts = sqlListarProducts;
    }

    public String getSqlInsertPedido() {
        return sqlInsertPedido;
    }

    public void setSqlInsertPedido(String sqlInsertPedido) {
        this.sqlInsertPedido = sqlInsertPedido;
    }

    public String getSqlListarPedidos() {
        return sqlListarPedidos;
    }

    public void setSqlListarPedidos(String sqlListarPedidos) {
        this.sqlListarPedidos = sqlListarPedidos;
    }
    
    
    
    
    
}
