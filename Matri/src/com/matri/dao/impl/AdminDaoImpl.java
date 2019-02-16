package com.matri.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.matri.bean.AdminProfileReqBean;
import com.matri.dao.AdminDao;

import util.Constants;
import util.Util;

@Component(value="adminDao")
public class AdminDaoImpl implements AdminDao{

	@Autowired	DataSource dataSource;

	public DataSource getDataSource() {
		return this.dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}


	@Override
	public List<AdminProfileReqBean> getProfileList() {
		Connection conn =null;
		PreparedStatement pstmt=null;
		List<AdminProfileReqBean> adminProfileReqBeanList = new ArrayList<AdminProfileReqBean>();
		String query= Constants.ADMIN_PROFILE_REQUEST;
		System.out.println(query);
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(query);

			ResultSet rs = pstmt.executeQuery();

			while(rs.next()) {
				AdminProfileReqBean adminProfileReqBean = new AdminProfileReqBean();
				adminProfileReqBean.setUserId((rs.getInt("userId")));
				adminProfileReqBean.setProfileRequested(rs.getString("profileRequested"));
				adminProfileReqBean.setRequestStatus(rs.getString("requestStatus"));
				adminProfileReqBean.setCreatedBy(rs.getString("createdBy"));
				adminProfileReqBean.setCreatedDatetime(rs.getString("createdDatetime"));

				adminProfileReqBeanList.add(adminProfileReqBean);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		}

		return adminProfileReqBeanList; 
	}

	@Override
	public String approveRequest(String[] userId) {
		Connection conn =null;
		PreparedStatement pstmt=null;
		StringBuilder userMasterId= new StringBuilder();
		StringBuilder requestedId=new StringBuilder();
		int result=0;
		
		for(int i=0;i<userId.length;i++){
			userMasterId.append(userId[i].substring(0, userId[i].indexOf(","))).append(",");
			requestedId.append("'").append(userId[i].substring(userId[i].indexOf(",")+1,userId[i].length())).append("',");
		}
		userMasterId.deleteCharAt(userMasterId.length()-1);
		requestedId.deleteCharAt(requestedId.length()-1);
		System.out.println("userMasterId ::"+userMasterId);
		System.out.println("requestedId ::"+requestedId);
		StringBuilder sb = new StringBuilder();
		String query= Constants.APPROVE_REQUEST_BASIC;
		String whereQuery=" user_master_id in ("+userMasterId+") and profile_requested in ("+requestedId+")";
		sb.append(query).append(whereQuery);
		System.out.println(sb.toString());
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(sb.toString());

			result=pstmt.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result>=1?"Successfuly Updated":"Something went wrong, please check";

	}

	@Override
	public List<Integer> getRegistrationPendingList() {
		Connection conn =null;
		PreparedStatement pstmt=null;
		String query=Constants.NOT_APPROVED_USER;
		List<Integer> userIds = new ArrayList<Integer>() ;
		try{
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				userIds.add((rs.getInt("user_master_id")));
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return userIds;
	}

	@Override
	public String approveRegistrationRequest(String[] checkedUserIdReg) {
		Connection conn =null;
		PreparedStatement pstmt=null;
		int result = 0;
		
		String query= Constants.APPROVE_REGISTRATION_REQUEST;
		String whereQuery=" user_master_id in ("+Util.getCommaSeparatedString(checkedUserIdReg)+") ";
		query+=whereQuery;
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(query);

			result=pstmt.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result>=1?"Successfuly Updated":"Something went wrong, please check";

	}

}