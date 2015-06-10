package com.bps.core.beans;

import java.io.Serializable;

import com.inspiresoftware.lib.dto.geda.annotations.Dto;
import com.inspiresoftware.lib.dto.geda.annotations.DtoField;

@Dto
public class ProcTemplBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3752997941427566025L;

	@DtoField
	private String id;
	@DtoField
	private String temDesc;
	@DtoField
	private String temId;
	@DtoField
	private String temName;
	@DtoField
	private String temNotn;

	public ProcTemplBean() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTemDesc() {
		return this.temDesc;
	}

	public void setTemDesc(String temDesc) {
		this.temDesc = temDesc;
	}

	public String getTemId() {
		return this.temId;
	}

	public void setTemId(String temId) {
		this.temId = temId;
	}

	public String getTemName() {
		return this.temName;
	}

	public void setTemName(String temName) {
		this.temName = temName;
	}

	public String getTemNotn() {
		return this.temNotn;
	}

	public void setTemNotn(String temNotn) {
		this.temNotn = temNotn;
	}
}