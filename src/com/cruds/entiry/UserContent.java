package com.cruds.entiry;

import java.util.Date;

public class UserContent 
{
	private int id;
	private String title;
	private String content;
	private Date pdate;	
	private UserInfo user;
	public UserContent() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserContent(int id, String title, String content, Date pdate, UserInfo user) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.pdate = pdate;
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}
	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	
	
	
}
