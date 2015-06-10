package com.bps.core.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import com.bps.core.beans.OrgProcBean;
import com.bps.core.beans.ProcessVerBean;
import com.bps.util.converter.BeanEntityConverter;
import com.inspiresoftware.lib.dto.geda.assembler.DTOAssembler;


/**
 * The persistent class for the bps_org_proc database table.
 * 
 */
@Entity
@Table(name="bps_org_proc")
@NamedQuery(name="BpsOrgProc.findAll", query="SELECT b FROM BpsOrgProc b")
public class BpsOrgProc implements Serializable, BeanEntityConverter<BpsOrgProc, OrgProcBean> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	@Column(name="ORP_PROC_ID")
	private Long orpProcId;

	@Column(name="ORP_ORG_ID")
	private Long orpOrgId;

	public BpsOrgProc() {
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

	@Override
	public OrgProcBean convertEntityToBean() {
		OrgProcBean orgProcBean = new OrgProcBean();
		DTOAssembler.newAssembler(new ProcessVerBean().getClass(), this.getClass()).assembleDto(orgProcBean, this, null, null);
		return orgProcBean;
	}

	@Override
	public BpsOrgProc convertBeanToEntity() {
		// TODO Auto-generated method stub
		return null;
	}
}