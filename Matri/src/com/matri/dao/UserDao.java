package com.matri.dao;

import com.matri.bean.UserDetailsBean;

public interface UserDao {

	String insertUser(UserDetailsBean userDetailsBean);

	UserDetailsBean login(UserDetailsBean userDetailsBean);

}
