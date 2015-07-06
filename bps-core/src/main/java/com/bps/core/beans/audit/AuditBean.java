package com.bps.core.beans.audit;


public class AuditBean {
	
	private Audit audit;

	public AuditBean(String user_id) {
		this.audit = new Audit(user_id);
	}
	
	public Audit getAudit() {
		return audit;
	}
	public void setAudit(Audit audit) {
		this.audit = audit;
	}
}