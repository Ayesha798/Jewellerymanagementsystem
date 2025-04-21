package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.model.ContactForm;
import com.model.Customer;
import com.model.Jewellery;
public class JewelleryDAO {
Connection connection = null;
public List<Jewellery> findAll() throws ClassNotFoundException, SQLException{
	connection = ConnectionManager.getConnection();
	connection.setAutoCommit(true);
	String query = "select * from jewellery";
	PreparedStatement statement = connection.prepareStatement(query);
	ResultSet set = statement.executeQuery();
	List<Jewellery> jewelleryList = new ArrayList<Jewellery>();
	while(set.next()) {
		Jewellery jewellery = new Jewellery();
		jewellery.setId(set.getInt(1));
		jewellery.setName(set.getString(2));
		jewellery.setType(set.getString(3));
		jewellery.setPrice(set.getDouble(4));
		jewellery.setDescription(set.getString(5));
		jewelleryList.add(jewellery);
	}
	return jewelleryList;
}
	public boolean checkLogin(String email, String password) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
		connection.setAutoCommit(true);
		String query = "select count(*) from customer where email = ? and password = ?";
		PreparedStatement statement = connection.prepareStatement(query);
		statement.setString(1, email);
		statement.setString(2, password);
		ResultSet set = statement.executeQuery();
		int count = 0;
		if(set.next()) {
			count = set.getInt(1);
		}
		if(count ==1) {
			return true;
		}
		return false;
	}
	public boolean save(Customer customer) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
		String query = "insert into customer(name,email,password,mobile,address) values(?,?,?,?,?)";
		PreparedStatement statement = connection.prepareStatement(query);
		statement.setString(1,customer.getName());
		statement.setString(2,customer.getEmail());
		statement.setString(3,customer.getPassword());
		statement.setString(4,customer.getMobile());
		statement.setString(5,customer.getAddress());
		int count = statement.executeUpdate();
		if(count ==1) {
			return true;
		}
		return false;
	}
	public void commit() throws SQLException {
		connection.commit();
		connection.close();
	}
	public void rollback() throws SQLException {
		connection.rollback();
		connection.close();
	}
	public boolean deleteById(int id) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
		String query = "delete from jewellery where id= ?";
		PreparedStatement statement = connection.prepareStatement(query);
		statement.setInt(1, id);
		int count = statement.executeUpdate();
		if(count == 1) {
			return true;
		}

		return false;
	}
	public boolean edit(Jewellery jewellery) throws ClassNotFoundException, SQLException {
	    connection = ConnectionManager.getConnection();
	    connection.setAutoCommit(false);

	    String query = "update jewellery set name = ?, type = ?, price = ?, description = ? where id = ?";
	    PreparedStatement statement = connection.prepareStatement(query);

	    statement.setString(1, jewellery.getName());
	    statement.setString(2, jewellery.getType());
	    statement.setDouble(3, jewellery.getPrice());
	    statement.setString(4, jewellery.getDescription());
	    statement.setInt(5, jewellery.getId());

	    int count = statement.executeUpdate();

	    if (count == 1) {
	        connection.commit();
	        return true;
	    } else {
	        connection.rollback();
	        return false;
	    }
	}

	public Jewellery getJewellery(int id) throws ClassNotFoundException, SQLException {
	    connection = ConnectionManager.getConnection();
	    connection.setAutoCommit(true);
	    String query = "select  * from jewellery where id = ?";
	    PreparedStatement statement = connection.prepareStatement(query);
	    statement.setInt(1, id);
	    ResultSet set = statement.executeQuery();
	    
	    if (set.next()) { 
	        Jewellery jewellery = new Jewellery();
	        jewellery.setId(set.getInt(1));
	        jewellery.setName(set.getString(2));
	        jewellery.setType(set.getString(3));
	        jewellery.setPrice(set.getDouble(4));
	        jewellery.setDescription(set.getString(5));
	        return jewellery;
	    }
	    return null; 
	}
	public boolean save(ContactForm contact) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();
		String query = "insert into contact(name,email,mobile,subject,message) values(?,?,?,?,?)";
		PreparedStatement statement = connection.prepareStatement(query);
		statement.setString(1,contact.getName());
		statement.setString(2,contact.getEmail());
		statement.setString(3,contact.getMobile());
		statement.setString(4,contact.getSubject());
		statement.setString(5,contact.getMessage());
		int count = statement.executeUpdate();
		if(count ==1) {
			return true;
		}
		return false;
	}
	public void commit1() throws SQLException {
		connection.commit();
		connection.close();
	}
	public void rollback1() throws SQLException {
		connection.rollback();
		connection.close();
	}
	public boolean add(Jewellery jewellery) throws ClassNotFoundException, SQLException {
		connection = ConnectionManager.getConnection();

	    String query = "insert into jewellery(id,name,type,price,description) values(?,?,?,?,?)";
	    PreparedStatement statement = connection.prepareStatement(query);
	    statement.setInt(1, jewellery.getId());
	    statement.setString(2, jewellery.getName());
	    statement.setString(3, jewellery.getType());
	    statement.setDouble(4, jewellery.getPrice());
	    statement.setString(5, jewellery.getDescription());
	    

	    int count = statement.executeUpdate();

	    if (count == 1) {
	        connection.commit();
	        return true;
	    } else {
	        connection.rollback();
	        return false;
	    }
	
	}
	public boolean buy(Jewellery jewellery) throws ClassNotFoundException, SQLException {
	    connection = ConnectionManager.getConnection();
	    connection.setAutoCommit(false);

	   
	    String query = "insert into purchases (jewellery_id, name, type, price, description) VALUES (?, ?, ?, ?, ?)";
	    PreparedStatement statement = connection.prepareStatement(query);

	    statement.setInt(1, jewellery.getId());
	    statement.setString(2, jewellery.getName());
	    statement.setString(3, jewellery.getType());
	    statement.setDouble(4, jewellery.getPrice());
	    statement.setString(5, jewellery.getDescription());

	    int count = statement.executeUpdate();

	    if (count == 1) {
	        connection.commit();
	        return true;
	    } else {
	        connection.rollback();
	        return false;
	    }
	}

}
