package com.bps.model.service;

import java.util.List;
import java.util.Map;

import com.bps.core.beans.ProcessVerBean;

public interface ProcessVersionService {

	public Map<Long, List<ProcessVerBean>> getProcessVersions();
}
