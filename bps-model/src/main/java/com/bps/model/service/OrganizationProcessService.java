package com.bps.model.service;

import java.util.List;

import com.bps.core.beans.ProcessBean;

public interface OrganizationProcessService {
	
	List<ProcessBean> getOrganizationProcesses(Long orgId);
}
