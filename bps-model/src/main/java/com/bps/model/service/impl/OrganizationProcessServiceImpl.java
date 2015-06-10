package com.bps.model.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.bps.core.beans.ProcessBean;
import com.bps.core.db.DBFacade;
import com.bps.core.entities.BpsOrgProc;
import com.bps.dao.service.factory.DaoServiceFactory;
import com.bps.model.service.OrganizationProcessService;
import com.bps.util.db.Param;
import com.bps.util.service.ServiceType;

public class OrganizationProcessServiceImpl implements OrganizationProcessService {

	@SuppressWarnings("unchecked")
	@Override
	public List<ProcessBean> getOrganizationProcesses(Long orgId) {
		DBFacade<BpsOrgProc, Long> orgProcService = DaoServiceFactory.generateService(ServiceType.OrganizationProcess);
		List<ProcessBean> processList = new ArrayList<ProcessBean>();
		Param [] params = new Param[1];
		params[0] = new Param("paramOrgId", orgId);
		List<BpsOrgProc> orgProcList = orgProcService.findByParams("findProcessesByOrganizationId", params);
		for(BpsOrgProc orgProc : orgProcList) {
			processList.add(new ProcessServiceImpl().getProcessById(orgProc.getOrpProcId()));
		}
		return processList;
	}
}
