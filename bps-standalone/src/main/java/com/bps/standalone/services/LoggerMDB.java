package com.bps.standalone.services;

import javax.ejb.ActivationConfigProperty;
import javax.ejb.MessageDriven;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.ObjectMessage;

import com.bps.core.entities.BpsLog;
import com.bps.dao.service.impl.LogDaoServiceImpl;

/**
 * Message-Driven Bean implementation class for: LoggerMDB
 */
@MessageDriven(
		activationConfig = { @ActivationConfigProperty(
				propertyName = "destinationType", propertyValue = "javax.jms.Queue"), @ActivationConfigProperty(
				propertyName = "destination", propertyValue = "java:jboss/exported/jms/queue/bpsQueue"), @ActivationConfigProperty(
				propertyName = "connectionFactoryJndiName", propertyValue = "java:/ConnectionFactory")
		}, 
		mappedName = "queue/bpsQueue")
@TransactionManagement(TransactionManagementType.BEAN)
public class LoggerMDB implements MessageListener {

    /**
     * Default constructor. 
     */
    public LoggerMDB() {
        // TODO Auto-generated constructor stub
    }
	
	/**
     * @see MessageListener#onMessage(Message)
     */
    public void onMessage(Message message) {
    	ObjectMessage objMsg = (ObjectMessage)message;
    	BpsLog logObj = null;
		try {
			logObj = (BpsLog) objMsg.getObject();
		} catch (JMSException ex) {
			ex.printStackTrace();
		}
    	new LogDaoServiceImpl().persist(logObj);
    }

}
