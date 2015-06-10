package com.bps.core.beans;

import java.io.Serializable;
import java.sql.Timestamp;

import com.inspiresoftware.lib.dto.geda.annotations.Dto;
import com.inspiresoftware.lib.dto.geda.annotations.DtoField;

@Dto
public class ProcessVerBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 9041584920905579458L;

	@DtoField
	private Long id;
	@DtoField
	private String provComment;
	@DtoField
	private Long provId;
	@DtoField
	private String provModfBy;
	@DtoField
	private Timestamp provModfDt;
	@DtoField
	private String provNotn;
	@DtoField
	private String provVer;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProvComment() {
		return this.provComment;
	}

	public void setProvComment(String provComment) {
		this.provComment = provComment;
	}

	public Long getProvId() {
		return this.provId;
	}

	public void setProvId(Long provId) {
		this.provId = provId;
	}

	public String getProvModfBy() {
		return this.provModfBy;
	}

	public void setProvModfBy(String provModfBy) {
		this.provModfBy = provModfBy;
	}

	public Timestamp getProvModfDt() {
		return this.provModfDt;
	}

	public void setProvModfDt(Timestamp provModfDt) {
		this.provModfDt = provModfDt;
	}

	public String getProvNotn() {
		return this.provNotn;
	}

	public void setProvNotn(String provNotn) {
		this.provNotn = provNotn;
	}

	public String getProvVer() {
		return this.provVer;
	}

	public void setProvVer(String provVer) {
		this.provVer = provVer;
	}
}