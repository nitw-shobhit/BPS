package com.bps.util.bpm;

import java.util.List;

public interface BpmApi {

	
	long startProcess(String procDefId);
	void stopProcess(long procInstId);
	boolean validateProcess(String procDefId);
	List<Object> getPersonalTaskList(String userId);
	List<Object> getGroupTaskList(String userId);
	void startTask(long taskId, String userId);
	void stopTask(long taskId, String userId);
	void assignTask(long taskId, String userId, String newUserId);
	void claimTask(long taskId, String userId);
	void releaseTask(long taskId, String userId);
	void completeTask(long taskId, String userId);
}
