package com.bps.model.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import com.bps.core.beans.OrganizationBean;
import com.bps.core.db.DBFacade;
import com.bps.core.entities.BpsOrganization;
import com.bps.dao.service.OrganizationDaoService;
import com.bps.dao.service.factory.CustomServiceFactory;
import com.bps.dao.service.factory.DaoServiceFactory;
import com.bps.model.service.OrganizationService;
import com.bps.util.db.MultipleQueryBean;
import com.bps.util.db.Param;
import com.bps.util.service.ServiceType;

public class OrganizationServiceImpl implements OrganizationService {

	@SuppressWarnings("unchecked")
	@Override
	public List<OrganizationBean> getOrganizations() {
		DBFacade<BpsOrganization, Long> dbService = DaoServiceFactory.generateService(ServiceType.Organization);	
		List<OrganizationBean> orgBeanList = new ArrayList<OrganizationBean>();
		for(BpsOrganization orgEntity : dbService.findAll("BpsOrganization.findAll")) {
			orgBeanList.add(orgEntity.convertEntityToBean());
		}
		return orgBeanList;
	}
	
	@Override
	public void addOrganization(OrganizationBean orgBean) {
		OrganizationDaoService dbService = (OrganizationDaoService) CustomServiceFactory.generateService(ServiceType.Organization);
		orgBean.setOrgCrDt(new Timestamp(new Date().getTime()));
		dbService.addOrganization(orgBean.convertBeanToEntity());
	}

	@SuppressWarnings("unchecked")
	@Override
	public void deleteOrganization(Long id) {
		DBFacade<BpsOrganization, Long> dbService = DaoServiceFactory.generateService(ServiceType.Organization);	
		Set<MultipleQueryBean> setQueries = new LinkedHashSet<MultipleQueryBean>();
		Param[] params1 = new Param[1];
		params1[0] = new Param("orpOrgId", id);
		Param[] params2 = new Param[1];
		params2[0] = new Param("id", id);
		MultipleQueryBean querybean1 = new MultipleQueryBean("deleteOrganizationprocesses", params1);
		MultipleQueryBean querybean2 = new MultipleQueryBean("deleteOrganization", params2);
		setQueries.add(querybean1);
		setQueries.add(querybean2);
		dbService.executeMultipleNamedQueries(setQueries);
	}

	@SuppressWarnings("unchecked")
	@Override
	public void editOrganization(OrganizationBean orgBean) {
		DBFacade<BpsOrganization, Long> dbService = DaoServiceFactory.generateService(ServiceType.Organization);
		BpsOrganization orgSource = dbService.findByPk(orgBean.getId());
		orgBean.setId(orgSource.getId());
		orgBean.setOrgCrDt(new Timestamp(new Date().getTime()));
		dbService.merge(orgBean.convertBeanToEntity());
	}
}
