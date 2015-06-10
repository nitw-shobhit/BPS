package com.bps.dao.service;

import com.bps.core.entities.BpsProcess;
import com.bps.core.entities.BpsProcessVer;

public interface ProcessDaoService {
	
	BpsProcess addProcess(BpsProcess procEntity, BpsProcessVer procVerEntity);
}
