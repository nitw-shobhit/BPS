package com.bps.model.service;

import java.util.List;
import java.util.Map;

import com.bps.core.beans.ProcessVerBean;

public interface ProcessVersionService {

	Map<Long, List<ProcessVerBean>> getProcessVersions();
	List<ProcessVerBean> getProcessVersionsByProcessId(Long procId);
}
