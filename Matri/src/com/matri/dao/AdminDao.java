package com.matri.dao;

import java.util.List;

import com.matri.bean.AdminProfileReqBean;

public interface AdminDao {

	public List<AdminProfileReqBean> getProfileList();

	public String approveRequest(String[] userid);

	public List<Integer> getRegistrationPendingList();

	public String approveRegistrationRequest(String[] checkedUserIdReg);

}
