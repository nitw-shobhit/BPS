package com.bps.mng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bps.core.beans.OrganizationBean;
import com.bps.model.service.OrganizationProcessService;
import com.bps.model.service.OrganizationService;
import com.bps.model.service.factory.ServiceFactory;
import com.bps.util.service.ServiceType;
import com.google.gson.Gson;

@Controller
@RequestMapping("/mngOrg")
public class OrganizationController {

	@RequestMapping(method = RequestMethod.GET, value="/getOrganizationData.do")
	public @ResponseBody String getOrganizationData() {
		OrganizationService orgService = (OrganizationService)ServiceFactory.generateService(ServiceType.Organization);
		return new Gson().toJson(orgService.getOrganizations());
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/getOrganizationProcesses.do")
	public @ResponseBody String getOrganizationProcesses(@RequestParam("orgId") Long orgId) {
		OrganizationProcessService orgProcService = (OrganizationProcessService)ServiceFactory.generateService(ServiceType.OrganizationProcess);
		return new Gson().toJson(orgProcService.getOrganizationProcesses(orgId));
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/addOrganization.do")
	public ModelAndView addOrganization(@ModelAttribute("bps-mng-web")OrganizationBean orgBean) {
		OrganizationService orgService = (OrganizationService)ServiceFactory.generateService(ServiceType.Organization);
		orgService.addOrganization(orgBean);
//		ModelAndView targetView = getOrganizationData();
//		return targetView;
		return null;
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/editOrganization.do")
	public ModelAndView editOrganization(@ModelAttribute("bps-mng-web")OrganizationBean orgBean) {
		OrganizationService orgService = (OrganizationService)ServiceFactory.generateService(ServiceType.Organization);
		orgService.addOrganization(orgBean);
//		ModelAndView targetView = getOrganizationData();
//		return targetView;
		return null;
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/deleteOrganization.do")
	public ModelAndView deleteOrganization(@RequestParam("idOrganization") Long idOrganization) {
		OrganizationService orgService = (OrganizationService)ServiceFactory.generateService(ServiceType.Organization);
		orgService.deleteOrganization(idOrganization);
//		ModelAndView targetView = getOrganizationData();
//		return targetView;
		return null;
	}
}
