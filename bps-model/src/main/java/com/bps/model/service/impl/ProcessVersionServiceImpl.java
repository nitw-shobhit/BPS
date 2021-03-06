package com.bps.model.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bps.core.beans.ProcessVerBean;
import com.bps.core.db.DBFacade;
import com.bps.core.entities.BpsProcessVer;
import com.bps.dao.service.factory.DaoServiceFactory;
import com.bps.model.service.ProcessVersionService;
import com.bps.util.db.Param;
import com.bps.util.service.ServiceType;

public class ProcessVersionServiceImpl implements ProcessVersionService {

	@SuppressWarnings("unchecked")
	@Override
	public Map<Long, List<ProcessVerBean>> getProcessVersions() {
		DBFacade<BpsProcessVer, Long> dbService = DaoServiceFactory.generateService(ServiceType.ProcessVersion);
		Map<Long, List<ProcessVerBean>> procVerBeanMap = new HashMap<Long, List<ProcessVerBean>>();
		for(BpsProcessVer procVerEntity : dbService.findAll("BpsProcessVer.findAll")) {
			ProcessVerBean procVerBean = procVerEntity.convertEntityToBean();
			List<ProcessVerBean> tempList;
			if(procVerBeanMap.containsKey(procVerBean.getProvId())) {
				tempList = procVerBeanMap.get(procVerBean.getProvId());
			} else {
				tempList = new ArrayList<ProcessVerBean>();
			}
			tempList.add(procVerBean);
			procVerBeanMap.put(procVerBean.getProvId(), tempList);
		}
		return procVerBeanMap;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProcessVerBean> getProcessVersionsByProcessId(Long procId) {
		DBFacade<BpsProcessVer, Long> dbService = DaoServiceFactory.generateService(ServiceType.ProcessVersion);
		List<ProcessVerBean> procVerBeanList = new ArrayList<ProcessVerBean>();
		Param [] params = new Param[1];
		params[0] = new Param("paramProvId", procId);
		List<BpsProcessVer> procVerEntList = dbService.findByParams("findProcessVersionsByProcessId", params);
		for(BpsProcessVer procVer : procVerEntList) {
			procVerBeanList.add(procVer.convertEntityToBean());
		}
		return procVerBeanList;
	}
}
