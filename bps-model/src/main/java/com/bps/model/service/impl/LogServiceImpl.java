package com.bps.model.service.impl;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;

import com.bps.core.entities.BpsLog;
import com.bps.model.service.LogService;
import com.bps.model.service.ServiceHelper;
import com.bps.util.logger.BpsLogLevel;
import com.bps.util.logger.BpsLogger;
import com.bps.util.spring.SpringUtils;

public class LogServiceImpl<T> implements LogService<T> {

	@Override
	public void info(String message) throws IOException {
		BpsLog logObj = ServiceHelper.createLogObject(message, BpsLogLevel.INFO, getClazz()
				.toString(), SpringUtils.getCurrentUser());
		BpsLogger.createLoger().info(message);
		sendMessage(logObj);
	}

	@Override
	public void debug(String message) throws IOException {
		ServiceHelper.createLogObject(message, BpsLogLevel.DEBUG, getClazz()
				.toString(), SpringUtils.getCurrentUser());
		BpsLogger.createLoger().debug(message);
	}

	@Override
	public void trace(String message) throws IOException {
		ServiceHelper.createLogObject(message, BpsLogLevel.TRACE, getClazz()
				.toString(), SpringUtils.getCurrentUser());
		BpsLogger.createLoger().trace(message);
	}

	@Override
	public void warn(String message) throws IOException {
		ServiceHelper.createLogObject(message, BpsLogLevel.WARN, getClazz()
				.toString(), SpringUtils.getCurrentUser());
		BpsLogger.createLoger().warn(message);
	}

	@Override
	public void fatal(String message, Exception ex) throws IOException {
		ServiceHelper.createLogObject(message, BpsLogLevel.FATAL, getClazz()
				.toString(), SpringUtils.getCurrentUser());
		BpsLogger.createLoger().fatal(message, ex);
	}

	@Override
	public void error(String message, Exception ex) throws IOException {
		ServiceHelper.createLogObject(message, BpsLogLevel.ERROR, getClazz()
				.toString(), SpringUtils.getCurrentUser());
		BpsLogger.createLoger().error(message, ex);
	}

	@SuppressWarnings("unchecked")
	public String getClazz() {
		return ((Class<T>) ((ParameterizedType) getClass()
				.getGenericSuperclass()).getActualTypeArguments()[0]).getName();
	}

	private void sendMessage(BpsLog logMessage) throws IOException
    {
		ServiceHelper logger = null;    
		try {
	        logger = new ServiceHelper("java:jboss/exported/jms/RemoteConnectionFactory", "java:jboss/exported/jms/queue/bpsQueue");
	    } catch(Exception ex){
	        ex.printStackTrace ();
	    }
	    
	    try{
	        logger.sendMessage(logMessage);
	    }catch(Exception ex){
	        ex.printStackTrace ();
	    }
	}
}
