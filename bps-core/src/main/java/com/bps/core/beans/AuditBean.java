package com.bps.core.beans;

import java.io.Serializable;
import java.sql.Timestamp;

import com.inspiresoftware.lib.dto.geda.annotations.Dto;
import com.inspiresoftware.lib.dto.geda.annotations.DtoField;

@Dto
public class AuditBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5604565439765037996L;

	@DtoField
	private String id;
	@DtoField
	private String audAction;
	@DtoField
	private String audCurrEnt;
	@DtoField
	private Timestamp audDate;
	@DtoField
	private String audObject;
	@DtoField
	private String audPrevEnt;
	@DtoField
	private String audUser;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAudAction() {
		return audAction;
	}
	public void setAudAction(String audAction) {
		this.audAction = audAction;
	}
	public String getAudCurrEnt() {
		return audCurrEnt;
	}
	public void setAudCurrEnt(String audCurrEnt) {
		this.audCurrEnt = audCurrEnt;
	}
	public Timestamp getAudDate() {
		return audDate;
	}
	public void setAudDate(Timestamp audDate) {
		this.audDate = audDate;
	}
	public String getAudObject() {
		return audObject;
	}
	public void setAudObject(String audObject) {
		this.audObject = audObject;
	}
	public String getAudPrevEnt() {
		return audPrevEnt;
	}
	public void setAudPrevEnt(String audPrevEnt) {
		this.audPrevEnt = audPrevEnt;
	}
	public String getAudUser() {
		return audUser;
	}
	public void setAudUser(String audUser) {
		this.audUser = audUser;
	}
}
