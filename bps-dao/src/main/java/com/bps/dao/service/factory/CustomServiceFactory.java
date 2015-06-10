package com.bps.dao.service.factory;

import com.bps.dao.service.impl.OrganizationDaoServiceImpl;
import com.bps.dao.service.impl.ProcessDaoServiceImpl;
import com.bps.dao.service.impl.ProcessVersionDaoServiceImpl;
import com.bps.dao.service.impl.UserDaoServiceImpl;
import com.bps.util.service.ServiceType;

public class CustomServiceFactory {

	private CustomServiceFactory() {
	}
	
	public static Object generateService(ServiceType sType) {
		if(sType.equals(ServiceType.User)) {
			return new UserDaoServiceImpl();
		} else if(sType.equals(ServiceType.Process)) {
			return new ProcessDaoServiceImpl();
		} else if(sType.equals(ServiceType.ProcessVersion)) {
			return new ProcessVersionDaoServiceImpl();
		} else if(sType.equals(ServiceType.Organization)) {
			return new OrganizationDaoServiceImpl();
		} else {
			return null;
		}
	}
}
