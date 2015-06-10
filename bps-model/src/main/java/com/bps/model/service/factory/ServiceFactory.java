package com.bps.model.service.factory;

import com.bps.model.service.impl.OrganizationProcessServiceImpl;
import com.bps.model.service.impl.OrganizationServiceImpl;
import com.bps.model.service.impl.ProcessServiceImpl;
import com.bps.model.service.impl.ProcessVersionServiceImpl;
import com.bps.model.service.impl.UserServiceImpl;
import com.bps.util.service.ServiceType;

public class ServiceFactory {

	private ServiceFactory() {
	}
	
	public static Object generateService(ServiceType sType) {
		if(sType.equals(ServiceType.User)) {
			return new UserServiceImpl();
		} else if(sType.equals(ServiceType.Process)) {
			return new ProcessServiceImpl();
		} else if(sType.equals(ServiceType.ProcessVersion)) {
			return new ProcessVersionServiceImpl();
		} else if(sType.equals(ServiceType.Organization)) {
			return new OrganizationServiceImpl();
		} else if(sType.equals(ServiceType.OrganizationProcess)) {
			return new OrganizationProcessServiceImpl();
		} else {
			return null;
		}
	}
}
