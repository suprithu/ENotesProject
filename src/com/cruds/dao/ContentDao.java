package com.cruds.dao;

import java.net.ConnectException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cruds.entiry.UserContent;
import com.cruds.entiry.UserInfo;

public class ContentDao {
	Connection conn = DBConnectionManager.getConnection();
	int rows = 0;

	public boolean AddNotes(String ti, String co, int uid) //
	{
		String sql = "insert into post(title,content,uid) values(?,?,?)";

		try {
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, ti);
			st.setString(2, co);
			st.setInt(3, uid);

			rows = st.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rows > 0;
	}

	public List<UserContent> getData(int id) {
		List<UserContent> list = new ArrayList<UserContent>();
		UserContent users = null;
		String sql = "select * from post where uid=? order by id DESC";

		try {
			PreparedStatement st = conn.prepareStatement(sql);
			st.setInt(1, id);

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				users =  new UserContent();
				users.setId(rs.getInt("id"));
				users.setTitle(rs.getString("title"));
				users.setContent(rs.getString("content"));
				users.setPdate(rs.getTimestamp("date"));
				list.add(users);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}
	
	public UserContent getDataByID(int noteId)
	{
		UserContent uc = null;
		
		String sql = "select * from post where id=?";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, noteId);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				uc = new UserContent();
				uc.setId(rs.getInt(1));
				uc.setTitle(rs.getString(2));
				uc.setContent(rs.getString(3));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return uc;
	}
	
	public boolean update(int nId, String ti, String co)
	{
		
		String sql = "update post set title=?, content=? where id=?";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, ti);
			ps.setString(2, co);
			ps.setInt(3, nId);
			
			rows = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rows>0;
		
	}
	public boolean delete(int nId)
	{
		String sql = "delete from post where id =?";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, nId);
			
			rows = ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rows >0 ;
	}
}
