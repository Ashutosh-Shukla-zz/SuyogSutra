package com.matri.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.matri.bean.UserDetailsBean;
import com.matri.dao.UserDao;
import com.matri.service.UserService;

import util.BCrypt;

@Component (value ="userService")
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao userDao;
	
	@Override
	public String register(UserDetailsBean userDetailsBean) {

		userDetailsBean.setPassword(BCrypt.hashpw(userDetailsBean.getPassword(), BCrypt.gensalt(12)));
		return userDao.insertUser(userDetailsBean);

	}

	@Override
	public UserDetailsBean login(UserDetailsBean userDetailsBean) {
		// TODO Auto-generated method stub
		return userDao.login(userDetailsBean);
	}

}
