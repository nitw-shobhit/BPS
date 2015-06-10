package com.bps.mng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bps.core.beans.UserBean;
import com.bps.model.service.UserService;
import com.bps.model.service.factory.ServiceFactory;
import com.bps.util.service.ServiceType;

@Controller
@RequestMapping("/mngLogin")
@SessionAttributes({"userBeanRet"})
public class LoginController {

	@RequestMapping(method = RequestMethod.POST, value="/validateLogin.do")
	public ModelAndView validateLogin(@ModelAttribute("userBean")UserBean userBean) {
		ModelAndView targetView = null;
		UserService userService = (UserService) ServiceFactory.generateService(ServiceType.User);
		UserBean userBeanRet = userService.validateLogin(userBean);
		if(userBeanRet == null) {
			targetView = new ModelAndView("error");
			targetView.addObject("errorMessage", "User Validation Failed!!");
		} else {
			targetView = new ModelAndView("dashboard");
			targetView.addObject("userBeanRet", userBeanRet);
		}
		
		return targetView;
	}
}
