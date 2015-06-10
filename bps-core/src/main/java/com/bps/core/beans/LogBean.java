package com.bps.core.beans;

import java.io.Serializable;
import java.sql.Timestamp;

import com.inspiresoftware.lib.dto.geda.annotations.Dto;
import com.inspiresoftware.lib.dto.geda.annotations.DtoField;

@Dto
public class LogBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5549475743344809940L;

	@DtoField
	private String id;
	@DtoField
	private Timestamp logDate;
	@DtoField
	private String logLevel;
	@DtoField
	private String logMessage;
	@DtoField
	private String logSource;
	@DtoField
	private String logUser;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getLogDate() {
		return logDate;
	}
	public void setLogDate(Timestamp logDate) {
		this.logDate = logDate;
	}
	public String getLogLevel() {
		return logLevel;
	}
	public void setLogLevel(String logLevel) {
		this.logLevel = logLevel;
	}
	public String getLogMessage() {
		return logMessage;
	}
	public void setLogMessage(String logMessage) {
		this.logMessage = logMessage;
	}
	public String getLogSource() {
		return logSource;
	}
	public void setLogSource(String logSource) {
		this.logSource = logSource;
	}
	public String getLogUser() {
		return logUser;
	}
	public void setLogUser(String logUser) {
		this.logUser = logUser;
	}
}
