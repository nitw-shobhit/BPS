package com.bps.mng.controller.audit;

import org.aspectj.lang.JoinPoint;

import com.bps.core.beans.audit.AuditBean;
import com.bps.core.beans.audit.Event;
import com.bps.util.elasticsearch.ElasticSearchUtils;
import com.bps.util.spring.JsonUtils;

public abstract class AuditHelper {

	protected static AuditBean auditObj;
	protected static String documentId;
	protected static final String INDEX = "bps";
	protected static final String TYPE = "audit";
	
	abstract void exceptionAudit(JoinPoint join, Throwable exception);
	
	protected void createNewEvent(String data, String eventName) {
		if(auditObj != null) {
			Event event = new Event(eventName, data);
			auditObj.getAudit().getSession().getEvents().getEvent().add(event);
			ElasticSearchUtils.update(JsonUtils.toJson(auditObj), INDEX, TYPE, documentId);
		}
	}
}
