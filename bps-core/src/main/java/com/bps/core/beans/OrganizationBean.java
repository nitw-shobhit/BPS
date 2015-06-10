package com.bps.core.beans;

import java.io.Serializable;
import java.sql.Timestamp;

import com.bps.core.entities.BpsOrganization;
import com.bps.util.converter.BeanEntityConverter;
import com.inspiresoftware.lib.dto.geda.annotations.Dto;
import com.inspiresoftware.lib.dto.geda.annotations.DtoField;
import com.inspiresoftware.lib.dto.geda.assembler.DTOAssembler;

@Dto
public class OrganizationBean implements Serializable, BeanEntityConverter<BpsOrganization, OrganizationBean> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5121512624590146692L;

	@DtoField
	private Long id;
	@DtoField
	private String orgAddr;
	@DtoField
	private Timestamp orgCrDt;
	@DtoField
	private String orgDesc;
	@DtoField
	private String orgId;
	@DtoField
	private String orgName;
	@DtoField
	private String orgType;

	public OrganizationBean() {
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
		return null;
	}

	@Override
	public BpsOrganization convertBeanToEntity() {
		BpsOrganization orgEntity = new BpsOrganization();
		DTOAssembler.newAssembler(this.getClass(), new BpsOrganization().getClass()).assembleEntity(this, orgEntity, null, null);
		return orgEntity;
	}
}