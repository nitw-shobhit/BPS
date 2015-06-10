package com.bps.core.db;

import java.util.List;
import java.util.Set;

import com.bps.util.db.MultipleQueryBean;
import com.bps.util.db.Param;

public interface DBFacade<T, PK> {

	T persist(T obj);
	
	void merge(T obj);
	
	void remove(T obj);
	
	T findByPk(PK obj);
	
	List<T> findAll(String query);
	
	List<T> findByParams(String query, Param[] param);
	
	int executeNamedQuery(String query, Param[] param);
	
	void executeMultipleNamedQueries(Set<MultipleQueryBean> queries);
}
