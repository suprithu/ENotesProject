package com.cruds.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cruds.entiry.UserInfo;

public class UserLogDao 
{
	Connection conn = DBConnectionManager.getConnection();
	PreparedStatement st;
	public boolean addUser(UserInfo user) 
	{
	
		String sql = "INSERT INTO loguser (fname, email, passwd)"+"VALUES (?, ?, ?)";

		try {
			st = conn.prepareStatement(sql);
			st.setString(1, user.getName());
			st.setString(2, user.getEmail());
			st.setString(3, user.getPassword());
			
			int rs = st.executeUpdate();
			
			if(rs==1)
			{
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return false;
	}
	
	public UserInfo	retrive(UserInfo ui)
	{
		
		String sql ="select * from loguser where email = ? and passwd = ?";
		
		UserInfo user = null;
		try {
			st = conn.prepareStatement(sql);
			st.setString(1, ui.getEmail());
			st.setString(2, ui.getPassword());
			
			ResultSet rs = st.executeQuery();
			
			if(rs.next())
			{
				user = new UserInfo();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("fname"));
				user.setEmail(rs.getString("email"));
				
				user.setPassword(rs.getString("passwd"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return user;
		
	}
}
