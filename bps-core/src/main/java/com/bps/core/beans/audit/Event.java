package com.bps.core.beans.audit;

import java.sql.Timestamp;
import java.util.Date;

public class Event {

	private String name;
	private String start_time;
	private String end_time;
	private String data;
	
	public Event(String name, String data) {
		this.name = name;
		this.start_time = new Timestamp(new Date().getTime()).toString();
		this.end_time = new Timestamp(new Date().getTime()).toString();
		this.data = data;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
}
