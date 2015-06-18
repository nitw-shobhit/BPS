package com.bps.mng.controller;

import java.nio.file.AccessDeniedException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bps.core.beans.UserBean;
import com.bps.model.service.UserService;
import com.bps.model.service.factory.ServiceFactory;
import com.bps.util.service.ServiceType;
import com.google.gson.Gson;

@Controller
@RequestMapping("/mngLogin")
public class LoginController {

	@RequestMapping(method = RequestMethod.POST, value="/validateLogin.do")
	public @ResponseBody String validateLogin(@RequestParam("userId")String userId, @RequestParam("password")String password) throws AccessDeniedException {
		UserService userService = (UserService) ServiceFactory.generateService(ServiceType.User);
		UserBean inputBean = new UserBean();
		inputBean.setUserId(userId);
		inputBean.setUserPass(password);
		UserBean userBeanRet = userService.validateLogin(inputBean);
		if(userBeanRet == null) {
			throw new AccessDeniedException("Invalid Details");
		}
		return new Gson().toJson(userBeanRet);
	}
}
