package com.bps.core.beans.audit;

public class Audit {
	
	private String user_id;
	private Session session;
	
	public Audit(String user_id) {
		this.user_id = user_id;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public Session getSession() {
		return session;
	}
	public void setSession(Session session) {
		this.session = session;
	}
}
