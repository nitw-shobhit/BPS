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

import com.bps.core.beans.OrganizationBean;
import com.bps.util.converter.BeanEntityConverter;
import com.inspiresoftware.lib.dto.geda.assembler.DTOAssembler;


/**
 * The persistent class for the bps_organization database table.
 * 
 */
@Entity
@Table(name="bps_organization")
@NamedQuery(name="BpsOrganization.findAll", query="SELECT b FROM BpsOrganization b")
public class BpsOrganization implements Serializable, BeanEntityConverter<BpsOrganization, OrganizationBean> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	@Column(name="ORG_ADDR")
	private String orgAddr;

	@Column(name="ORG_CR_DT")
	private Timestamp orgCrDt;

	@Column(name="ORG_DESC")
	private String orgDesc;

	@Column(name="ORG_ID")
	private String orgId;

	@Column(name="ORG_NAME")
	private String orgName;

	@Column(name="ORG_TYPE")
	private String orgType;

	public BpsOrganization() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOrgAddr() {
		return this.orgAddr;
	}

	public void setOrgAddr(String orgAddr) {
		this.orgAddr = orgAddr;
	}

	public Timestamp getOrgCrDt() {
		return this.orgCrDt;
	}

	public void setOrgCrDt(Timestamp orgCrDt) {
		this.orgCrDt = orgCrDt;
	}

	public String getOrgDesc() {
		return this.orgDesc;
	}

	public void setOrgDesc(String orgDesc) {
		this.orgDesc = orgDesc;
	}

	public String getOrgId() {
		return this.orgId;
	}

	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}

	public String getOrgName() {
		return this.orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getOrgType() {
		return this.orgType;
	}

	public void setOrgType(String orgType) {
		this.orgType = orgType;
	}

	@Override
	public OrganizationBean convertEntityToBean() {
		OrganizationBean orgBean = new OrganizationBean();
		DTOAssembler.newAssembler(new OrganizationBean().getClass(), this.getClass()).assembleDto(orgBean, this, null, null);
		return orgBean;
	}

	@Override
	public BpsOrganization convertBeanToEntity() {
		return null;
	}
}