package com.bps.mng.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bps.core.beans.OrganizationBean;
import com.bps.model.service.OrganizationProcessService;
import com.bps.model.service.OrganizationService;
import com.bps.util.audit.Audit;
import com.bps.util.spring.JsonUtils;

@Controller
@RequestMapping("/mngOrg")
public class OrganizationController {

	@Resource
	private OrganizationService orgService;
	
	@Resource
	private OrganizationProcessService orgProcService;

	@Audit(event = "Organization", value = "Getting Organization Data")
	@RequestMapping(method = RequestMethod.GET, value="/getOrganizationData.do")
	public @ResponseBody String getOrganizationData() {
		return JsonUtils.toJson(orgService.getOrganizations());
	}
	
	@Audit(event = "Organization", value = "Getting Organization Processes")
	@RequestMapping(method = RequestMethod.GET, value="/getOrganizationProcesses.do")
	public @ResponseBody String getOrganizationProcesses(@RequestParam("orgId") Long orgId) {
		return JsonUtils.toJson(orgProcService.getOrganizationProcesses(orgId));
	}
	
	@Audit(event = "Organization", value = "Adding Process to Organization")
	@RequestMapping(method = RequestMethod.GET, value="/addProcessToOrganization.do")
	public @ResponseBody String addProcessToOrganization(@RequestParam("orgId") Long orgId, @RequestParam("processes") List<Long> procIds) {
		return JsonUtils.toJson(orgProcService.getOrganizationProcesses(orgId));
	}
	
	@Audit(event = "Organization", value = "Adding Organization")
	@RequestMapping(method = RequestMethod.GET, value="/addOrganization.do")
	public @ResponseBody String addOrganization(@RequestParam("org")String orgJson) throws JsonParseException, JsonMappingException, IOException {
		OrganizationBean orgBean = (OrganizationBean) JsonUtils.toPojo(orgJson, OrganizationBean.class);
		orgService.addOrganization(orgBean);
		return getOrganizationData();
	}
	
	@Audit(event = "Organization", value = "Editing Organization")
	@RequestMapping(method = RequestMethod.GET, value="/editOrganization.do")
	public @ResponseBody String editOrganization(@RequestParam("org")String orgJson) throws JsonParseException, JsonMappingException, IOException {
		OrganizationBean orgBean = (OrganizationBean) JsonUtils.toPojo(orgJson, OrganizationBean.class);
		orgService.editOrganization(orgBean);
		return getOrganizationData();
	}
	
	@Audit(event = "Organization", value = "Deleting Organization")
	@RequestMapping(method = RequestMethod.GET, value="/deleteOrganization.do")
	public @ResponseBody String deleteOrganization(@RequestParam("orgId") Long orgId) {
		orgService.deleteOrganization(orgId);
		return getOrganizationData();
	}

	public OrganizationService getOrgService() {
		return orgService;
	}

	public void setOrgService(OrganizationService orgService) {
		this.orgService = orgService;
	}

	public OrganizationProcessService getOrgProcService() {
		return orgProcService;
	}

	public void setOrgProcService(OrganizationProcessService orgProcService) {
		this.orgProcService = orgProcService;
	}
}
