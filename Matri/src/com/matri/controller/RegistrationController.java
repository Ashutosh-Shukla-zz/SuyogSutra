package com.matri.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;
import org.springframework.web.servlet.ModelAndView;

import com.matri.bean.UserDetailsBean;
import com.matri.service.UserService;


@Controller
public class RegistrationController {
	
	@Autowired
	private UserService userService;
	


	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");
	    sdf.setLenient(true);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, true));
	    
	 // Convert multipart object to byte[]
		binder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
	}
	
	@RequestMapping(value = "/register")
	public ModelAndView displayRegistration(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("userDetailsBean") UserDetailsBean userDetailsBean) {
	return new ModelAndView(".matri.registration");
	
	}
	
	@RequestMapping(value = "/registration")
	public String registerUser(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("userDetailsBean") UserDetailsBean userDetailsBean) {
	
		CommonsMultipartFile multipartFile = userDetailsBean.getImageBean().getFile();

		if(multipartFile!=null){
				byte[] fileByte = multipartFile.getBytes();
				userDetailsBean.getImageBean().setImageFileByte(fileByte);
				
		}	
		
	String messageToDisplay = userService.register(userDetailsBean);	
	request.getSession().setAttribute("messageToDisplay", messageToDisplay);
	
	return "redirect:/welcome";
	}
	
	@RequestMapping(value ="/login", method = RequestMethod.POST)
	public String loginUser(HttpServletRequest request, HttpServletResponse response){
		
		String messageToDisplay = null;
		
		UserDetailsBean userDetailsBean = new UserDetailsBean();
		
		userDetailsBean.setEmailId(request.getParameter("login-email"));
		userDetailsBean.setPassword(request.getParameter("login-password"));
		
		userDetailsBean = userService.login(userDetailsBean);
		if(userDetailsBean.getIsLoggedIn()){
			request.getSession().setAttribute("currentUser", userDetailsBean);
			messageToDisplay="Login Successful";
		}
		else {
			messageToDisplay="Invalid username or password, please try again";
		}
		
		request.getSession().setAttribute("messageToDisplay", messageToDisplay);
		return "redirect:/welcome";
	}
	
	
	
}
 