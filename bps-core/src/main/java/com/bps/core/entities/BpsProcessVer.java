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

import com.bps.core.beans.ProcessVerBean;
import com.bps.util.converter.BeanEntityConverter;
import com.inspiresoftware.lib.dto.geda.assembler.DTOAssembler;


/**
 * The persistent class for the bps_process_ver database table.
 * 
 */
@Entity
@Table(name="bps_process_ver")
@NamedQuery(name="BpsProcessVer.findAll", query="SELECT b FROM BpsProcessVer b")
public class BpsProcessVer implements Serializable, BeanEntityConverter<BpsProcessVer, ProcessVerBean> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	@Column(name="prov_comment")
	private String provComment;

	@Column(name="prov_id")
	private Long provId;

	@Column(name="prov_modf_by")
	private String provModfBy;

	@Column(name="prov_modf_dt")
	private Timestamp provModfDt;

	@Column(name="prov_notn")
	private String provNotn;

	@Column(name="prov_ver")
	private String provVer;

	public BpsProcessVer() {
	}

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

	@Override
	public String toString() {
		StringBuffer tempBuffer = new StringBuffer("BPS_PROCESS_VER['ID':").append(this.id).append(",'PROV_ID':")
			.append(this.provId).append(",'PROV_VER':").append(this.provVer).append(",'PROV_NOTN':").append(this.provNotn)
			.append(",'PROV_COMMENT':").append(this.provComment).append(",'PROV_MODF_BY':")
			.append(this.provModfBy).append(",'PROV_MODF_DT':").append(this.provModfDt).append("]");
		return tempBuffer.toString();
	}
	
	@Override
	public ProcessVerBean convertEntityToBean() {
		ProcessVerBean procVerBean = new ProcessVerBean();
		DTOAssembler.newAssembler(new ProcessVerBean().getClass(), this.getClass()).assembleDto(procVerBean, this, null, null);
		return procVerBean;
	}

	@Override
	public BpsProcessVer convertBeanToEntity() {
		return null;
	}
}