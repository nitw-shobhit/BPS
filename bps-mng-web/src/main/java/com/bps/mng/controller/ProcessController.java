package com.bps.mng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bps.core.beans.ProcessBean;
import com.bps.model.service.ProcessService;
import com.bps.model.service.ProcessVersionService;
import com.bps.model.service.factory.ServiceFactory;
import com.bps.util.service.ServiceType;

@Controller
@RequestMapping("/mngProcess")
@SessionAttributes({"processList", "processVerMap"})
public class ProcessController {

	@RequestMapping(method = RequestMethod.GET, value="/getProcessData.do")
	public ModelAndView getProcessData() {
		ModelAndView targetView = new ModelAndView("processes");
		ProcessService procService = (ProcessService) ServiceFactory.generateService(ServiceType.Process);
		targetView.addObject("processList", procService.getProcesses());
		ProcessVersionService procVerService = (ProcessVersionService) ServiceFactory.generateService(ServiceType.ProcessVersion);
		targetView.addObject("processVerMap", procVerService.getProcessVersions());
		return targetView;
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/deleteProcess.do")
	public ModelAndView deleteProcess(@RequestParam("idProcess") Long idProcess) {
		ProcessService procService = (ProcessService)ServiceFactory.generateService(ServiceType.Process);
		procService.deleteProcess(idProcess);
		ModelAndView targetView = getProcessData();
		return targetView;
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/addProcess.do")
	public ModelAndView addProcess(@ModelAttribute("bps-mng-web")ProcessBean procBean) {
		ProcessService procService = (ProcessService)ServiceFactory.generateService(ServiceType.Process);
		procService.addProcess(procBean);
		ModelAndView targetView = getProcessData();
		return targetView;
	}
}
