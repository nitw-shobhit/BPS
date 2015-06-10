package com.bps.core.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import com.bps.core.beans.ProcessBean;
import com.bps.util.converter.BeanEntityConverter;
import com.inspiresoftware.lib.dto.geda.assembler.DTOAssembler;


/**
 * The persistent class for the bps_process database table.
 * 
 */
@Entity
@Table(name="bps_process")
@NamedQuery(name="BpsProcess.findAll", query="SELECT b FROM BpsProcess b")
public class BpsProcess implements Serializable, BeanEntityConverter<BpsProcess, ProcessBean> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	@Column(name="proc_author")
	private String procAuthor;

	@Column(name="proc_curr_ver")
	private String procCurrVer;

	@Column(name="proc_desc")
	private String procDesc;

	@Column(name="proc_id")
	private String procId;

	@Column(name="proc_name")
	private String procName;

	@Column(name="proc_notn")
	private String procNotn;

	public BpsProcess() {
	}

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
	public String toString() {
		StringBuffer tempBuffer = new StringBuffer("BPS_PROCESS['ID':").append(this.id).append(",'PROC_ID':")
			.append(this.procId).append(",'PROC_NAME':").append(this.procName).append(",'PROC_DESC':").append(this.procDesc)
			.append(",'PROC_AUTHOR':").append(this.procAuthor).append(",'PROC_CURR_VER':")
			.append(this.procCurrVer).append(",'PROC_NOTN':").append(this.procNotn).append("]");
		return tempBuffer.toString();
	}
	

	@Override
	public ProcessBean convertEntityToBean() {
		ProcessBean procBean = new ProcessBean();
		DTOAssembler.newAssembler(new ProcessBean().getClass(), this.getClass()).assembleDto(procBean, this, null, null);
		return procBean;
	}

	@Override
	public BpsProcess convertBeanToEntity() {
		return null;
	}

}