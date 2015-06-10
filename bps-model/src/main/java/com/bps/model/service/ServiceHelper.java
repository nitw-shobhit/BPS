package com.bps.model.service;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Properties;

import javax.jms.Connection;
import javax.jms.ConnectionFactory;
import javax.jms.DeliveryMode;
import javax.jms.MessageProducer;
import javax.jms.ObjectMessage;
import javax.jms.Queue;
import javax.jms.Session;
import javax.naming.Context;
import javax.naming.InitialContext;

import com.bps.core.beans.OrganizationBean;
import com.bps.core.beans.ProcessBean;
import com.bps.core.entities.BpsLog;
import com.bps.core.entities.BpsOrganization;
import com.bps.core.entities.BpsProcessVer;
import com.bps.util.logger.BpsLogLevel;
import com.bps.util.logger.BpsLogger;

public class ServiceHelper {

	private Context bContext = null;
	private Queue bQueue = null;
	private Connection bConnection = null;
	private Session bSession = null;
	private MessageProducer bSender = null;
	private ConnectionFactory bConnFact = null;

	private static final String INITIAL_CONTEXT_FACTORY = "org.jnp.interfaces.NamingContextFactory";
	private static final String PROVIDER_URL = "jnp://localhost:1099";

	public ServiceHelper() {
	}
	
	public ServiceHelper(String connectionFactory, String queue)
			throws IOException {
		Properties props = new Properties();
		props.put(Context.INITIAL_CONTEXT_FACTORY, INITIAL_CONTEXT_FACTORY);
		props.put(Context.PROVIDER_URL, PROVIDER_URL);
		try {
			bContext = new InitialContext(props);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		try {
			bQueue = (Queue) bContext.lookup(queue);
			bConnFact = (ConnectionFactory) bContext.lookup(connectionFactory);
			bConnection = bConnFact.createConnection();
			bSession = bConnection.createSession(false,
					Session.AUTO_ACKNOWLEDGE);
			bSender = bSession.createProducer(bQueue);
			bSender.setDeliveryMode(DeliveryMode.NON_PERSISTENT);
			bSender.setPriority(9);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public void sendMessage(Object message) {
		try {
			BpsLogger logMesg = (BpsLogger) message;
			ObjectMessage objectMessage = bSession.createObjectMessage(logMesg);
			bSender.send(objectMessage);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public BpsProcessVer createProcessVersionObject(ProcessBean procEntity) {
		BpsProcessVer procVerEntity = new BpsProcessVer();
		procVerEntity.setProvComment(procEntity.getProcDesc());
		procVerEntity.setProvModfBy(procEntity.getProcAuthor());
		procVerEntity.setProvModfDt(new Timestamp(new Date().getTime()));
		procVerEntity.setProvNotn(procEntity.getProcNotn());
		procVerEntity.setProvVer(procEntity.getProcCurrVer());
		return  procVerEntity;
	}
	
	public static BpsLog createLogObject(String logMessg, BpsLogLevel logLevel, String logSource, String logUser) {
		BpsLog logObj = new BpsLog();
		logObj.setLogLevel(logLevel.toString());
		logObj.setLogSource(logSource);
		logObj.setLogMessage(logMessg);
		logObj.setLogUser(logUser);
		logObj.setLogDate(new Timestamp(new Date().getTime()));	
		return logObj;
	}

	public BpsOrganization createOrganizationObject(OrganizationBean orgBean) {
		BpsOrganization orgObj = new BpsOrganization();
		orgObj.setOrgAddr(orgBean.getOrgAddr());
		orgObj.setOrgCrDt(new Timestamp(new Date().getTime()));
		orgObj.setOrgDesc(orgBean.getOrgDesc());
		orgObj.setOrgId(orgBean.getOrgId());
		orgObj.setOrgName(orgBean.getOrgName());
		orgObj.setOrgType(orgBean.getOrgType());
		return orgObj;
	}
}
