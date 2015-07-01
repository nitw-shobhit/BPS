package com.bps.util.bpm;

import java.util.List;

public class BpmApi5Impl implements BpmApi {

	@Override
	public long startProcess(String procDefId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void stopProcess(long procInstId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean validateProcess(String procDefId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Object> getPersonalTaskList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Object> getGroupTaskList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void startTask(long taskId, String userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void stopTask(long taskId, String userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void assignTask(long taskId, String userId, String newUserId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void claimTask(long taskId, String userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void releaseTask(long taskId, String userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void completeTask(long taskId, String userId) {
		// TODO Auto-generated method stub
		
	}
}
