package com.tech.blog.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.entities.User;

public class UserDao {  //Contructor of UserDao
	
	private Connection con;
	public UserDao(Connection con) {
		this.con=con;
	}
	
	//set user credentials
	
	public boolean saveUser(User user) {
		boolean f=false;
		try {
			String query="insert into user(name,email,password,gender,about) values(?,?,?,?,?)";
			PreparedStatement psmt= this.con.prepareStatement(query);
			psmt.setString(1,user.getName());
			psmt.setString(2, user.getEmail());
			psmt.setString(3, user.getPassword());
			psmt.setString(4, user.getGender());
			psmt.setString(5, user.getAbout());
			
			psmt.executeUpdate();
			
			f=true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	//get user by useremail and userpassword
	
	public User getUserByEmailAndPassword(String email,String password) {
		User user=null;
		try {
//			Class.forName("com.mysql.jdbc.Driver");
//			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","tiger");
			String query="select * from user where email=? and password=?";
			PreparedStatement psmt= con.prepareStatement(query);
			
			psmt.setString(1, email);
			psmt.setString(2, password);
			
			ResultSet st=psmt.executeQuery();
			
			if(st.next()) {
				
			 user= new User(0, query, query, query, query, query, query);
			 
			 //data from db
			 String name=st.getString("name");
			 
			 //set to user object
			 
			 user.setName(name);
			 
			 user.setId(st.getInt("id"));
			 user.setEmail(st.getString("email"));
			 user.setPassword(st.getString("password"));
			 user.setGender(st.getString("gender"));
			 user.setAbout(st.getString("about"));
			 //user.setDateTime(st.getTimestamp("rdate"));
			 user.setProfile(st.getString("profile"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
	 public boolean updateUser(User user) {

	        boolean f = false;
	        try {

	            String query = "update user set name=? , email=? , password=? , gender=? ,about=? , profile=? where  id =?";
	            PreparedStatement p = con.prepareStatement(query);
	            p.setString(1, user.getName());
	            p.setString(2, user.getEmail());
	            p.setString(3, user.getPassword());
	            p.setString(4, user.getGender());
	            p.setString(5, user.getAbout());
	            p.setString(6, user.getProfile());
	            p.setInt(7, user.getId());

	            p.executeUpdate();
	            f = true;

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return f;
	    }
	

}
