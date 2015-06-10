package com.bps.dao.service.factory;

import com.bps.core.db.DBFacade;
import com.bps.dao.service.impl.OrganizationDaoServiceImpl;
import com.bps.dao.service.impl.OrganizationProcessDaoServiceImpl;
import com.bps.dao.service.impl.ProcessDaoServiceImpl;
import com.bps.dao.service.impl.ProcessVersionDaoServiceImpl;
import com.bps.dao.service.impl.UserDaoServiceImpl;
import com.bps.util.service.ServiceType;


public class DaoServiceFactory {

	private DaoServiceFactory() {
	}
	
	@SuppressWarnings("rawtypes")
	public static DBFacade generateService(ServiceType sType) {
		if(sType.equals(ServiceType.User)) {
			return new UserDaoServiceImpl();
		} else if(sType.equals(ServiceType.Process)) {
			return new ProcessDaoServiceImpl();
		} else if(sType.equals(ServiceType.ProcessVersion)) {
			return new ProcessVersionDaoServiceImpl();
		} else if(sType.equals(ServiceType.Organization)) {
			return new OrganizationDaoServiceImpl();
		} else if(sType.equals(ServiceType.OrganizationProcess)) {
			return new OrganizationProcessDaoServiceImpl();
		} else {
			return null;
		}
	}
}
