package com.bps.core.beans;

import java.io.Serializable;

import com.bps.core.entities.BpsProcess;
import com.bps.util.converter.BeanEntityConverter;
import com.inspiresoftware.lib.dto.geda.annotations.Dto;
import com.inspiresoftware.lib.dto.geda.annotations.DtoField;
import com.inspiresoftware.lib.dto.geda.assembler.DTOAssembler;

@Dto
public class ProcessBean implements Serializable, BeanEntityConverter<BpsProcess, ProcessBean> {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -4945551774042853626L;
	@DtoField
	private Long id;
	@DtoField
	private String procAuthor;
	@DtoField
	private String procCurrVer;
	@DtoField
	private String procDesc;
	@DtoField
	private String procId;
	@DtoField
	private String procName;
	@DtoField
	private String procNotn;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProcAuthor() {
		return this.procAuthor;
	}

	public void setProcAuthor(String procAuthor) {
		this.procAuthor = procAuthor;
	}

	public String getProcCurrVer() {
		return this.procCurrVer;
	}

	public void setProcCurrVer(String procCurrVer) {
		this.procCurrVer = procCurrVer;
	}

	public String getProcDesc() {
		return this.procDesc;
	}

	public void setProcDesc(String procDesc) {
		this.procDesc = procDesc;
	}

	public String getProcId() {
		return this.procId;
	}

	public void setProcId(String procId) {
		this.procId = procId;
	}

	public String getProcName() {
		return this.procName;
	}

	public void setProcName(String procName) {
		this.procName = procName;
	}

	public String getProcNotn() {
		return this.procNotn;
	}

	public void setProcNotn(String procNotn) {
		this.procNotn = procNotn;
	}

	@Override
	public ProcessBean convertEntityToBean() {
		return null;
	}

	@Override
	public BpsProcess convertBeanToEntity() {
		BpsProcess procEntity = new BpsProcess();
		DTOAssembler.newAssembler(this.getClass(), new BpsProcess().getClass()).assembleEntity(this, procEntity, null, null);
		return procEntity;
	}
}
