package com.bps.dao.service.impl;

import javax.persistence.EntityTransaction;

import com.bps.core.db.DBFacadeImpl;
import com.bps.core.entities.BpsOrganization;
import com.bps.dao.service.OrganizationDaoService;

public class OrganizationDaoServiceImpl extends DBFacadeImpl<BpsOrganization, Long> implements OrganizationDaoService {
	
	public BpsOrganization addOrganization(BpsOrganization orgEntity) {
		EntityTransaction etx = getEntityManager().getTransaction();
		BpsOrganization retOrgEnt = null;
		try {
			etx.begin();
			retOrgEnt = persist(orgEntity);
			etx.commit();
		} catch(Exception e) {
			etx.rollback();
			e.printStackTrace();
		}
		return retOrgEnt;
	}
}
