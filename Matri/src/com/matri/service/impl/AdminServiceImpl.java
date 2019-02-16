package com.matri.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.matri.bean.AdminProfileReqBean;
import com.matri.dao.AdminDao;
import com.matri.service.AdminService;

@Component(value="adminServiceImpl")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao adminDao;

	@Override
	public List<AdminProfileReqBean> getProfileList() {
		List<AdminProfileReqBean> adminProfileReqBeanList = adminDao.getProfileList();
		return adminProfileReqBeanList;
	}

	@Override
	public String approveRequest(String[] userid) {
		return adminDao.approveRequest(userid);		
	}

	@Override
	public List<Integer> getRegistrationPendingList() {
		// TODO Auto-generated method stub
		return adminDao.getRegistrationPendingList();
	}

	@Override
	public String approveRegistrationRequest(String[] checkedUserIdReg) {
		// TODO Auto-generated method stub
		return adminDao.approveRegistrationRequest(checkedUserIdReg);
	}

}
