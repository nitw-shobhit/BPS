package com.bps.core.beans.audit;

import java.util.ArrayList;
import java.util.List;

public class Events {

	private List<Event> event;

	public Events() {
		this.event = new ArrayList<Event>();
	}
	
	public List<Event> getEvent() {
		return event;
	}
	public void setEvent(List<Event> event) {
		this.event = event;
	}
}
