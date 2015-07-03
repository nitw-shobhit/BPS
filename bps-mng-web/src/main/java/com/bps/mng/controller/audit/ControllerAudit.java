package com.bps.mng.controller.audit;

import java.io.IOException;
import java.util.UUID;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;

import com.bps.core.beans.audit.AuditBean;
import com.bps.core.beans.audit.Event;
import com.bps.core.beans.audit.Session;
import com.bps.util.audit.Audit;
import com.bps.util.elasticsearch.ElasticSearchUtils;
import com.bps.util.spring.JsonUtils;

@Aspect
public class ControllerAudit extends AuditHelper {
	
	@Before("execution(public String com.bps.mng.controller.*Controller.*(..)) && @annotation(auditAnnotation) ")
	public void auditOrganization(JoinPoint join, Audit auditAnnotation) {
		if("Login".equals(auditAnnotation.event())) {
			documentId = UUID.randomUUID().toString();
			if(join.getArgs().length > 0) {
				auditObj = new AuditBean((String) join.getArgs()[0]);
				auditObj.getAudit().setSession(new Session());
				Event event = new Event(auditAnnotation.event(), "Initiate - "+ auditAnnotation.value());
				auditObj.getAudit().getSession().getEvents().getEvent().add(event);
				ElasticSearchUtils.create(JsonUtils.toJson(auditObj), INDEX, TYPE, documentId);
			}
		} else {
			createNewEvent("Initiate - "+ auditAnnotation.value(), auditAnnotation.event());
		}
	}

	@AfterReturning(
	    pointcut = "execution(public String com.bps.mng.controller.*Controller.*(..)) && @annotation(auditAnnotation) ",
	    returning= "result")
	public void validateLoginAfterReturnAudit(JoinPoint join, Object result, Audit auditAnnotation) throws JsonParseException, JsonMappingException, IOException {
		createNewEvent("Tear Down - "+ auditAnnotation.value(), auditAnnotation.event());
	}
	
	@AfterThrowing(
		pointcut = "execution(public String com.bps.mng.controller.*Controller.*(..)) && @annotation(auditAnnotation) ",
		throwing= "exception")
	public void exceptionAudit(JoinPoint join, Throwable exception, Audit auditAnnotation) {
		createNewEvent("Something bad happened @ "+ join.getSignature().getName() + " - " + exception.getMessage(), auditAnnotation.event());
	}

	@Override
	void exceptionAudit(JoinPoint join, Throwable exception) {
		// TODO Auto-generated method stub
		
	}
}
