package com.matri.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.matri.bean.ExpectationBean;
import com.matri.service.BaseService;

@Controller
public class WelcomeController {

	@Autowired
	private BaseService baseService;
	
	@RequestMapping(value = "/welcome")
	public ModelAndView displayIndex(HttpServletRequest request, HttpServletResponse response,@ModelAttribute ("expectationBean") ExpectationBean expectationBean) {
		ModelAndView model = new ModelAndView();
		String messageToDisplay = (String)request.getSession().getAttribute("messageToDisplay");
		request.getSession().removeAttribute("messageToDisplay");
		model.addObject("messageToDisplay", messageToDisplay);
		model.setViewName(".matri.home");
		return model;
	}
}
