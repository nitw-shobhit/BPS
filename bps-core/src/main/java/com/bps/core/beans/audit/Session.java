package com.bps.core.beans.audit;

import java.sql.Timestamp;
import java.util.Date;


public class Session {

	private String audit_date;
	private Events events;
	
	public Session() {
		this.audit_date = new Timestamp(new Date().getTime()).toString();
		this.events = new Events();
	}

	public String getAudit_date() {
		return audit_date;
	}
	public void setAudit_date(String audit_date) {
		this.audit_date = audit_date;
	}
	public Events getEvents() {
		return events;
	}
	public void setEvents(Events events) {
		this.events = events;
	}
}
