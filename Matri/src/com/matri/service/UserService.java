package com.matri.service;

import com.matri.bean.UserDetailsBean;

public interface UserService {

	String register(UserDetailsBean userDetailsBean);

	UserDetailsBean login(UserDetailsBean userDetailsBean);

}
