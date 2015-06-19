package com.bps.mng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bps.core.beans.ProcessBean;
import com.bps.model.service.ProcessService;
import com.bps.model.service.ProcessVersionService;
import com.bps.model.service.factory.ServiceFactory;
import com.bps.util.service.ServiceType;
import com.google.gson.Gson;

@Controller
@RequestMapping("/mngProcess")
public class ProcessController {

	@RequestMapping(method = RequestMethod.GET, value="/getProcessData.do")
	public @ResponseBody String getProcessData() {
		ProcessService procService = (ProcessService) ServiceFactory.generateService(ServiceType.Process);
		return new Gson().toJson(procService.getProcesses());
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/getProcessVersions.do")
	public @ResponseBody String getProcessVersions(@RequestParam("procId") Long procId) {
		ProcessVersionService procVerService = (ProcessVersionService) ServiceFactory.generateService(ServiceType.ProcessVersion);
		return new Gson().toJson(procVerService.getProcessVersionsByProcessId(procId));
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/deleteProcess.do")
	public ModelAndView deleteProcess(@RequestParam("idProcess") Long idProcess) {
		ProcessService procService = (ProcessService)ServiceFactory.generateService(ServiceType.Process);
		procService.deleteProcess(idProcess);
		return null;
//		ModelAndView targetView = getProcessData();
//		return targetView;
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/addProcess.do")
	public ModelAndView addProcess(@ModelAttribute("bps-mng-web")ProcessBean procBean) {
		ProcessService procService = (ProcessService)ServiceFactory.generateService(ServiceType.Process);
		procService.addProcess(procBean);
		return null;
//		ModelAndView targetView = getProcessData();
//		return targetView;
	}
}
