package com.bps.model.service.impl;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import com.bps.core.beans.ProcessBean;
import com.bps.core.db.DBFacade;
import com.bps.core.entities.BpsOrgProc;
import com.bps.core.entities.BpsProcess;
import com.bps.dao.service.factory.DaoServiceFactory;
import com.bps.model.service.OrganizationProcessService;
import com.bps.util.db.MultipleQueryBean;
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

	@SuppressWarnings("unchecked")
	@Override
	public void addProcessToOrganization(Long orgId, List<Long> procIds) {
		List<Long> processesToRemove = new ArrayList<Long>();
		List<Long> processesToAdd = new ArrayList<Long>();
		populateLists(orgId, processesToRemove, processesToAdd, procIds);
		DBFacade<BpsOrgProc, Long> orgProcService = DaoServiceFactory.generateService(ServiceType.OrganizationProcess);
//		for(Long procId : processesToAdd) {
//			BpsOrgProc orgProc = new BpsOrgProc();
//			orgProc.setOrpOrgId(orgId);
//			orgProc.setOrpProcId(procId);
//			orgProcService.persist(orgProc);
//		}
//
//		for(Long procId : processesToRemove) {
//			BpsOrgProc orgProc = new BpsOrgProc();
//			orgProc.setOrpOrgId(orgId);
//			orgProc.setOrpProcId(procId);
//			orgProcService.persist(orgProc);
//		}
	}

	private void populateLists(Long orgId, List<Long> processesToRemove,
			List<Long> processesToAdd, List<Long> procIds) {
		List<ProcessBean> processList = getOrganizationProcesses(orgId);
		for(ProcessBean procBean : processList) {
			if(!procIds.contains(procBean.getId())) {
				processesToRemove.add(procBean.getId());
			} else {
				procIds.remove(procBean.getId());
			}
		}
		processesToAdd.addAll(procIds);
	}
}
