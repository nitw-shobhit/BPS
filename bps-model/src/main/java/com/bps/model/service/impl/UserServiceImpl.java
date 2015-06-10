package com.bps.model.service.impl;

import java.util.List;

import com.bps.core.beans.UserBean;
import com.bps.core.db.DBFacade;
import com.bps.core.entities.BpsUserInfo;
import com.bps.dao.service.factory.DaoServiceFactory;
import com.bps.model.service.UserService;
import com.bps.util.db.Param;
import com.bps.util.service.ServiceType;

public class UserServiceImpl implements UserService {

	@SuppressWarnings("unchecked")
	@Override
	public UserBean validateLogin(UserBean userBean) {
		DBFacade<BpsUserInfo, Long> dbService = DaoServiceFactory.generateService(ServiceType.User);
		UserBean userBeanRet = null;
		Param [] params = new Param[2];
		params[0] = new Param("paramUserId", userBean.getUserId());
		params[1] = new Param("paramUserPass", userBean.getUserPass());
		List<BpsUserInfo> resultList = dbService.findByParams("validateLogin", params);
		if(resultList != null && resultList.size() == 1) {
			userBeanRet = resultList.get(0).convertEntityToBean();
		}
		return userBeanRet;
	}
}
