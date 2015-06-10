package com.bps.core.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the bps_proc_templ database table.
 * 
 */
@Entity
@Table(name="bps_proc_templ")
@NamedQuery(name="BpsProcTempl.findAll", query="SELECT b FROM BpsProcTempl b")
public class BpsProcTempl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;

	@Column(name="TEM_DESC")
	private String temDesc;

	@Column(name="TEM_ID")
	private String temId;

	@Column(name="TEM_NAME")
	private String temName;

	@Column(name="TEM_NOTN")
	private String temNotn;

	public BpsProcTempl() {
	}

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
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