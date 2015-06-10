package com.bps.core.db;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

public class EntityManagerFactory {

	private EntityManagerFactory() {
	}
	
	static class EmHelper {
		public static EntityManager em = Persistence.createEntityManagerFactory("bps-core").createEntityManager();
	}
	
	public static EntityManager createEntityManager() {
		return EmHelper.em;
	}
}
