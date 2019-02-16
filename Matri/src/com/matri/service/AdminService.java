package com.matri.service;

import java.util.List;

import com.matri.bean.AdminProfileReqBean;

public interface AdminService {

	List<AdminProfileReqBean> getProfileList();

	String approveRequest(String[] checkedUserId);

	List<Integer> getRegistrationPendingList();

	String approveRegistrationRequest(String[] checkedUserIdReg); 

}
