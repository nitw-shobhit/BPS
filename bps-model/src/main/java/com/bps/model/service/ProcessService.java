package com.bps.model.service;

import java.util.List;

import com.bps.core.beans.ProcessBean;

public interface ProcessService {

	List<ProcessBean> getProcesses();

	void deleteProcess(Long id);

	void addProcess(ProcessBean procBean);
}
