package com.bps.core.beans;

import java.io.Serializable;

import com.inspiresoftware.lib.dto.geda.annotations.Dto;
import com.inspiresoftware.lib.dto.geda.annotations.DtoField;

@Dto
public class OrgProcBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1114061312242832830L;

	@DtoField
	private Long id;
	@DtoField
	private Long orpProcId;
	@DtoField
	private Long orpOrgId;

	public OrgProcBean() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getOrpProcId() {
		return this.orpProcId;
	}

	public void setOrpProcId(Long orpProcId) {
		this.orpProcId = orpProcId;
	}

	public Long getOrpOrgId () {
		return this.orpOrgId;
	}

	public void setOrpOrgId(Long orpOrgId) {
		this.orpOrgId = orpOrgId;
	}
}