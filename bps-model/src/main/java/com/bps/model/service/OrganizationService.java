package com.bps.model.service;

import java.util.List;

import com.bps.core.beans.OrganizationBean;

public interface OrganizationService {

	List<OrganizationBean> getOrganizations();
	
	void addOrganization(OrganizationBean orgBean);
	
	void editOrganization(OrganizationBean orgBean);
	
	void deleteOrganization(Long id);
}
