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

import com.bps.core.beans.LogBean;
import com.bps.util.converter.BeanEntityConverter;
import com.inspiresoftware.lib.dto.geda.assembler.DTOAssembler;


/**
 * The persistent class for the bps_logs database table.
 * 
 */
@Entity
@Table(name="bps_logs")
@NamedQuery(name="BpsLog.findAll", query="SELECT b FROM BpsLog b")
public class BpsLog implements Serializable, BeanEntityConverter<BpsLog, LogBean> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private String id;

	@Column(name="LOG_DATE")
	private Timestamp logDate;

	@Column(name="LOG_LEVEL")
	private String logLevel;

	@Column(name="LOG_MESSAGE")
	private String logMessage;

	@Column(name="LOG_SOURCE")
	private String logSource;

	@Column(name="LOG_USER")
	private String logUser;

	public BpsLog() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Timestamp getLogDate() {
		return this.logDate;
	}

	public void setLogDate(Timestamp logDate) {
		this.logDate = logDate;
	}

	public String getLogLevel() {
		return this.logLevel;
	}

	public void setLogLevel(String logLevel) {
		this.logLevel = logLevel;
	}

	public String getLogMessage() {
		return this.logMessage;
	}

	public void setLogMessage(String logMessage) {
		this.logMessage = logMessage;
	}

	public String getLogSource() {
		return this.logSource;
	}

	public void setLogSource(String logSource) {
		this.logSource = logSource;
	}

	public String getLogUser() {
		return this.logUser;
	}

	public void setLogUser(String logUser) {
		this.logUser = logUser;
	}

	@Override
	public LogBean convertEntityToBean() {
		LogBean logBean = new LogBean();
		DTOAssembler.newAssembler(new LogBean().getClass(), this.getClass()).assembleDto(logBean, this, null, null);
		return logBean;
	}

	@Override
	public BpsLog convertBeanToEntity() {
		return null;
	}
}