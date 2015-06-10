package com.bps.mng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bps.core.beans.OrganizationBean;
import com.bps.model.service.OrganizationProcessService;
import com.bps.model.service.OrganizationService;
import com.bps.model.service.factory.ServiceFactory;
import com.bps.util.service.ServiceType;

@Controller
@RequestMapping("/mngOrg")
@SessionAttributes({"organizationList", "orgProcList"})
public class OrganizationController {
	
	@RequestMapping(method = RequestMethod.GET, value="/getOrganizationData.do")
	public ModelAndView getOrganizationData() {
		ModelAndView targetView = new ModelAndView("organizations");
		OrganizationService orgService = (OrganizationService)ServiceFactory.generateService(ServiceType.Organization);
		targetView.addObject("organizationList", orgService.getOrganizations());
		return targetView;
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/getOrganizationProcesses.do")
	public ModelAndView getOrganizationProcesses(Long orgId) {
		ModelAndView targetView = new ModelAndView("organizations");
		OrganizationProcessService orgProcService = (OrganizationProcessService)ServiceFactory.generateService(ServiceType.OrganizationProcess);
		targetView.addObject("orgProcList", orgProcService.getOrganizationProcesses(orgId));
		return targetView;
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/addOrganization.do")
	public ModelAndView addOrganization(@ModelAttribute("bps-mng-web")OrganizationBean orgBean) {
		OrganizationService orgService = (OrganizationService)ServiceFactory.generateService(ServiceType.Organization);
		orgService.addOrganization(orgBean);
		ModelAndView targetView = getOrganizationData();
		return targetView;
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/editOrganization.do")
	public ModelAndView editOrganization(@ModelAttribute("bps-mng-web")OrganizationBean orgBean) {
		OrganizationService orgService = (OrganizationService)ServiceFactory.generateService(ServiceType.Organization);
		orgService.addOrganization(orgBean);
		ModelAndView targetView = getOrganizationData();
		return targetView;
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/deleteOrganization.do")
	public ModelAndView deleteOrganization(@RequestParam("idOrganization") Long idOrganization) {
		OrganizationService orgService = (OrganizationService)ServiceFactory.generateService(ServiceType.Organization);
		orgService.deleteOrganization(idOrganization);
		ModelAndView targetView = getOrganizationData();
		return targetView;
	}
}
