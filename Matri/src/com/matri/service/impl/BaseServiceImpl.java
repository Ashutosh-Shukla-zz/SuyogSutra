package com.matri.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.matri.dao.BaseDao;
import com.matri.service.BaseService;

@Component(value = "baseService")
public class BaseServiceImpl implements BaseService {

	@Autowired
	private BaseDao baseDao;

	

}
