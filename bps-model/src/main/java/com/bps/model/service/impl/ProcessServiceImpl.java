package com.bps.model.service.impl;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import com.bps.core.beans.ProcessBean;
import com.bps.core.db.DBFacade;
import com.bps.core.entities.BpsProcess;
import com.bps.dao.service.ProcessDaoService;
import com.bps.dao.service.factory.CustomServiceFactory;
import com.bps.dao.service.factory.DaoServiceFactory;
import com.bps.model.service.ProcessService;
import com.bps.model.service.ServiceHelper;
import com.bps.util.db.MultipleQueryBean;
import com.bps.util.db.Param;
import com.bps.util.service.ServiceType;

public class ProcessServiceImpl implements ProcessService {

	@SuppressWarnings("unchecked")
	@Override
	public List<ProcessBean> getProcesses() {
		DBFacade<BpsProcess, Long> dbService = DaoServiceFactory.generateService(ServiceType.Process);
		List<ProcessBean> procBeanList = new ArrayList<ProcessBean>();
		for(BpsProcess procEntity : dbService.findAll("BpsProcess.findAll")) {
			procBeanList.add(procEntity.convertEntityToBean());
		}
		return procBeanList;
	}
	
	@SuppressWarnings("unchecked")
	public ProcessBean getProcessById(Long id) {
		DBFacade<BpsProcess, Long> dbService = DaoServiceFactory.generateService(ServiceType.Process);
		ProcessBean procBean = null;
		procBean = dbService.findByPk(id).convertEntityToBean();
		return procBean;
	}

	@Override
	public void addProcess(ProcessBean procBean) {
		ProcessDaoService dbService = (ProcessDaoService) CustomServiceFactory.generateService(ServiceType.Process);
		dbService.addProcess(procBean.convertBeanToEntity(), new ServiceHelper().createProcessVersionObject(procBean));
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public void deleteProcess(Long id) {
		DBFacade<BpsProcess, Long> dbService = DaoServiceFactory.generateService(ServiceType.Process);
		Set<MultipleQueryBean> setQueries = new LinkedHashSet<MultipleQueryBean>();
		Param[] params1 = new Param[1];
		params1[0] = new Param("provId", id);
		Param[] params2 = new Param[1];
		params2[0] = new Param("id", id);
		MultipleQueryBean querybean1 = new MultipleQueryBean("deleteProcessVersions", params1);
		MultipleQueryBean querybean2 = new MultipleQueryBean("deleteProcess", params2);
		setQueries.add(querybean1);
		setQueries.add(querybean2);
		dbService.executeMultipleNamedQueries(setQueries);
	}
}