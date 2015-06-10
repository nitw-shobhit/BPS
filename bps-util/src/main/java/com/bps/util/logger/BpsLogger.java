package com.bps.util.logger;

import java.io.Serializable;

import org.apache.log4j.Logger;

public class BpsLogger implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3146494286507189133L;

	private BpsLogger() {
	}
	
	static class LogHelper {
		public static Logger logger = Logger.getLogger(BpsLogger.class);
	}
	
	public static Logger createLoger() {
		return LogHelper.logger;
	}
}