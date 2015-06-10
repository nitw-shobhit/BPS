package com.bps.dao.service.impl;

import javax.persistence.EntityTransaction;

import com.bps.core.db.DBFacadeImpl;
import com.bps.core.entities.BpsProcess;
import com.bps.core.entities.BpsProcessVer;
import com.bps.dao.service.ProcessDaoService;

public class ProcessDaoServiceImpl extends DBFacadeImpl<BpsProcess, Long> implements ProcessDaoService {
	
	@Override
	public BpsProcess addProcess(BpsProcess procEntity, BpsProcessVer procVerEntity) {
		EntityTransaction etx = getEntityManager().getTransaction();
		BpsProcess retProcEnt = null;
		try {
			etx.begin();
			retProcEnt = persist(procEntity);
			procVerEntity.setProvId(retProcEnt.getId());
			new ProcessVersionDaoServiceImpl().persist(procVerEntity);
			etx.commit();
		} catch(Exception e) {
			etx.rollback();
			e.printStackTrace();
		}
		
		return retProcEnt;
	}
}
