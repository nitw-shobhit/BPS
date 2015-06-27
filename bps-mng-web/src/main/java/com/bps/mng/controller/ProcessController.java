package com.bps.mng.controller;

import javax.annotation.Resource;

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
import com.google.gson.Gson;

@Controller
@RequestMapping("/mngProcess")
public class ProcessController {

	@Resource
	private ProcessService procService;
	
	@Resource
	private ProcessVersionService procVerService;
	
	@RequestMapping(method = RequestMethod.GET, value="/getProcessData.do")
	public @ResponseBody String getProcessData() {
		return new Gson().toJson(procService.getProcesses());
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/getProcessVersions.do")
	public @ResponseBody String getProcessVersions(@RequestParam("procId") Long procId) {
		return new Gson().toJson(procVerService.getProcessVersionsByProcessId(procId));
	}
	
	@RequestMapping(method = RequestMethod.GET, value="/deleteProcess.do")
	public ModelAndView deleteProcess(@RequestParam("idProcess") Long idProcess) {
		procService.deleteProcess(idProcess);
		return null;
//		ModelAndView targetView = getProcessData();
//		return targetView;
	}
	
	@RequestMapping(method = RequestMethod.POST, value="/addProcess.do")
	public ModelAndView addProcess(@ModelAttribute("bps-mng-web")ProcessBean procBean) {
		procService.addProcess(procBean);
		return null;
//		ModelAndView targetView = getProcessData();
//		return targetView;
	}

	public ProcessService getProcService() {
		return procService;
	}

	public void setProcService(ProcessService procService) {
		this.procService = procService;
	}

	public ProcessVersionService getProcVerService() {
		return procVerService;
	}

	public void setProcVerService(ProcessVersionService procVerService) {
		this.procVerService = procVerService;
	}
}
