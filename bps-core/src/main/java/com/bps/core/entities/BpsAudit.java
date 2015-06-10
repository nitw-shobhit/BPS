package com.bps.core.entities;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import com.bps.core.beans.AuditBean;
import com.bps.core.beans.LogBean;
import com.bps.util.converter.BeanEntityConverter;
import com.inspiresoftware.lib.dto.geda.assembler.DTOAssembler;


/**
 * The persistent class for the bps_audit database table.
 * 
 */
@Entity
@Table(name="bps_audit")
@NamedQuery(name="BpsAudit.findAll", query="SELECT b FROM BpsAudit b")
public class BpsAudit implements Serializable, BeanEntityConverter<BpsAudit, AuditBean> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;

	@Column(name="AUD_ACTION")
	private String audAction;

	@Column(name="AUD_CURR_ENT")
	private String audCurrEnt;

	@Column(name="AUD_DATE")
	private Timestamp audDate;

	@Column(name="AUD_OBJECT")
	private String audObject;

	@Column(name="AUD_PREV_ENT")
	private String audPrevEnt;

	@Column(name="AUD_USER")
	private String audUser;

	public BpsAudit() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAudAction() {
		return this.audAction;
	}

	public void setAudAction(String audAction) {
		this.audAction = audAction;
	}

	public String getAudCurrEnt() {
		return this.audCurrEnt;
	}

	public void setAudCurrEnt(String audCurrEnt) {
		this.audCurrEnt = audCurrEnt;
	}

	public Timestamp getAudDate() {
		return this.audDate;
	}

	public void setAudDate(Timestamp audDate) {
		this.audDate = audDate;
	}

	public String getAudObject() {
		return this.audObject;
	}

	public void setAudObject(String audObject) {
		this.audObject = audObject;
	}

	public String getAudPrevEnt() {
		return this.audPrevEnt;
	}

	public void setAudPrevEnt(String audPrevEnt) {
		this.audPrevEnt = audPrevEnt;
	}

	public String getAudUser() {
		return this.audUser;
	}

	public void setAudUser(String audUser) {
		this.audUser = audUser;
	}

	@Override
	public AuditBean convertEntityToBean() {
		AuditBean auditBean = new AuditBean();
		DTOAssembler.newAssembler(new LogBean().getClass(), this.getClass()).assembleDto(auditBean, this, null, null);
		return auditBean;
	}

	@Override
	public BpsAudit convertBeanToEntity() {
		return null;
	}

}