package com.matri.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

import com.matri.bean.AdminProfileReqBean;
import com.matri.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminServiceImpl;
	
	@RequestMapping(value = "/adminDetails")
	public String getAdminDetails(HttpServletRequest request, HttpServletResponse response,ModelMap model) {
		List<AdminProfileReqBean> adminProfileReqBeanList = adminServiceImpl.getProfileList();
		List<Integer> userRegistrationList = adminServiceImpl.getRegistrationPendingList();
		model.addAttribute("adminProfileReqBeanList",adminProfileReqBeanList);
		model.addAttribute("userRegistrationList",userRegistrationList);
		String statusMessage = (String) request.getSession().getAttribute("statusMessage");
		model.addAttribute("statusMessage",statusMessage);
		request.getSession().removeAttribute("statusMessage");
		return ".matri.adminPage";
	}
	
	@RequestMapping(value = "/approveRequest")
	public String approveProfile(HttpServletRequest request, HttpServletResponse response) {
		String statusMessage=null;
		String[] checkedUserId= request.getParameterValues("selectCheck");
		if(null!=checkedUserId && checkedUserId.length>=1){
			
			statusMessage = adminServiceImpl.approveRequest(checkedUserId);
		}
		else{
			String[] checkedUserIdReg= request.getParameterValues("selectRegCheck");
			statusMessage = adminServiceImpl.approveRegistrationRequest(checkedUserIdReg);
		}
		request.getSession().setAttribute("statusMessage", statusMessage);
		return "redirect:/adminDetails";
	}
}
