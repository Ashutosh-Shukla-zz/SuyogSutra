package com.matri.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.stereotype.Component;

import com.matri.bean.UserDetailsBean;
import com.matri.dao.UserDao;

import util.BCrypt;

@Component(value = "userDao")
public class UserDaoImpl implements UserDao {

	DataSource dataSource;

	public DataSource getDataSource() {
		return this.dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public String insertUser(UserDetailsBean userDetailsBean) {
		Connection con = null;
		int result = 0;
		String queryForUserDetails, queryForAttribute, queryForHoroscope, queryForFamily, queryForExpectaion,
				queryForEducation,queryForImageBean,status = null;

		try{
		queryForUserDetails = "insert into user_master(first_name,middle_name,last_name,gender,date_of_birth,email_id,mobile_number1,mobile_number2,marital_status,nationality,password)"
				+ " values(?,?,?,?,?,?,?,?,?,?,?)";
		con = dataSource.getConnection();
		con.setAutoCommit(false);
		
		PreparedStatement pstmt = con.prepareStatement(queryForUserDetails);
		pstmt.setString(1, userDetailsBean.getFirstName());
		pstmt.setString(2, userDetailsBean.getMiddleName());
		pstmt.setString(3, userDetailsBean.getLastName());
		pstmt.setString(4, userDetailsBean.getGender());
		pstmt.setDate(5, (Date) userDetailsBean.getDateOfBirth());
		pstmt.setString(6, userDetailsBean.getEmailId());
		pstmt.setLong(7, (userDetailsBean.getContactNumber1()==null)?0:userDetailsBean.getContactNumber1());
		pstmt.setLong(8, (userDetailsBean.getContactNumber2()==null)?0:userDetailsBean.getContactNumber2());
		pstmt.setString(9, userDetailsBean.getMaritalStatus());
		pstmt.setString(10, userDetailsBean.getNationality());
		pstmt.setString(11, userDetailsBean.getPassword());

		pstmt.executeUpdate();	
		
			queryForAttribute = "insert into physical_attributes(user_master_id, height_feet, height_inches, weight, complexion, spectacles, blood_group, diet, physical_disability) "
					+ " values((SELECT MAX(user_master_id) FROM USER_MASTER),?,?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(queryForAttribute);
		pstmt.setInt(1, userDetailsBean.getPhysicalAttributesBean().getHeightFeet());
		pstmt.setInt(2, userDetailsBean.getPhysicalAttributesBean().getHeightInch());
		pstmt.setInt(3, userDetailsBean.getPhysicalAttributesBean().getWeight());
		pstmt.setString(4, userDetailsBean.getPhysicalAttributesBean().getComplexion());
		pstmt.setString(5, userDetailsBean.getPhysicalAttributesBean().getBloodGroup());
		pstmt.setString(6, userDetailsBean.getPhysicalAttributesBean().getSpectacles());
		pstmt.setString(7, userDetailsBean.getPhysicalAttributesBean().getDiet());
		pstmt.setString(8, userDetailsBean.getPhysicalAttributesBean().getPhysicalDisability());

		pstmt.executeUpdate();
		
		queryForEducation = "insert into education_proffession (user_master_id, educatioonal_qualification, occupation, type_of_occupation, Designation, company_name, current_address, city, salary, assets)"
				+ "  values ((SELECT MAX(user_master_id) FROM USER_MASTER),?,?,?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(queryForEducation);
		pstmt.setString(1, userDetailsBean.getEducationProffessionBean().getEducationalQualification());
		pstmt.setString(2,  userDetailsBean.getEducationProffessionBean().getOccupation());
		pstmt.setString(3,  userDetailsBean.getEducationProffessionBean().getTypeOfOccupation());
		pstmt.setString(4,  userDetailsBean.getEducationProffessionBean().getDesignation());
		pstmt.setString(5,  userDetailsBean.getEducationProffessionBean().getCompanyName());
		pstmt.setString(6,  userDetailsBean.getEducationProffessionBean().getCurrentAddress());
		pstmt.setString(7,  userDetailsBean.getEducationProffessionBean().getCity());
		pstmt.setInt(8,  userDetailsBean.getEducationProffessionBean().getSalary());
		pstmt.setString(9,  userDetailsBean.getEducationProffessionBean().getAssets());
		
		pstmt.executeUpdate();
		
		queryForHoroscope = "insert into horoscope_details(user_master_id, place_of_birth, time_of_birth, nakshatra, nadi, gan, gotra, manglik, caste, sub_caste) "
				+ " values ((SELECT MAX(user_master_id) FROM USER_MASTER),?,?,?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(queryForHoroscope);
		pstmt.setString(1, userDetailsBean.getHoroscopeBean().getPlaceOfBirth());
		pstmt.setString(2, userDetailsBean.getHoroscopeBean().getTimeOfBirth());
		pstmt.setString(3, userDetailsBean.getHoroscopeBean().getNakshtra());
		pstmt.setString(4,userDetailsBean.getHoroscopeBean().getNadi());
		pstmt.setString(5, userDetailsBean.getHoroscopeBean().getGan());
		pstmt.setString(6, userDetailsBean.getHoroscopeBean().getGotra());
		pstmt.setString(7, userDetailsBean.getHoroscopeBean().getManglik());
		pstmt.setString(8, userDetailsBean.getHoroscopeBean().getCaste());
		pstmt.setString(9, userDetailsBean.getHoroscopeBean().getSubCaste());

		pstmt.executeUpdate();
		
		queryForFamily = "insert into family_details(user_master_id, fathers_name, fathers_occupation, mothers_name, mothers_occupation, number_of_brothers, number_of_sisters, parents_address, joint_family, relative_last_names, fathers_native_address, mothers_native_address, fathers_number, secondary_contact_number, landline_number, description) "
				+ "values ((SELECT MAX(user_master_id) FROM USER_MASTER),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(queryForFamily);
		pstmt.setString(1, userDetailsBean.getFamilyDetailBean().getFathersName());
		pstmt.setString(2, userDetailsBean.getFamilyDetailBean().getFathersOccupation());
		pstmt.setString(3, userDetailsBean.getFamilyDetailBean().getMothersName());
		pstmt.setString(4, userDetailsBean.getFamilyDetailBean().getMothersOccupation());
		pstmt.setInt(5, userDetailsBean.getFamilyDetailBean().getNumberOfBrothers());
		pstmt.setInt(6, userDetailsBean.getFamilyDetailBean().getNumberOfSisters());
		pstmt.setString(7, userDetailsBean.getFamilyDetailBean().getParentsAddress());
		pstmt.setString(8, userDetailsBean.getFamilyDetailBean().getJointFamily());
		pstmt.setString(9, userDetailsBean.getFamilyDetailBean().getRelativesLastNames());
		pstmt.setString(10, userDetailsBean.getFamilyDetailBean().getFathersNativeAddress());
		pstmt.setString(11, userDetailsBean.getFamilyDetailBean().getMothersNativeAddress());
		pstmt.setLong(12, (userDetailsBean.getFamilyDetailBean().getParentNumber()==null)?0:userDetailsBean.getFamilyDetailBean().getParentNumber());
		pstmt.setLong(13, (userDetailsBean.getFamilyDetailBean().getSecondaryContactNumber()==null)?0:userDetailsBean.getFamilyDetailBean().getSecondaryContactNumber());
		pstmt.setLong(14, (userDetailsBean.getFamilyDetailBean().getLandLineNumber()==null)?0:userDetailsBean.getFamilyDetailBean().getLandLineNumber());
		pstmt.setString(15, userDetailsBean.getFamilyDetailBean().getOtherDescription());
		
		pstmt.executeUpdate();
		
		queryForExpectaion = "insert into user_expectations(user_master_id, complexion, caste, sub_caste, age_from, age_to, education, occupation, height_min, weight, preffered_city, gotra, spectacles, manglik, marital_status) "
				+ "values ((SELECT MAX(user_master_id) FROM USER_MASTER),?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = con.prepareStatement(queryForExpectaion);
		pstmt.setString(1, userDetailsBean.getExpectationBean().getComplexion());
		pstmt.setString(2, userDetailsBean.getExpectationBean().getCaste());
		pstmt.setString(3, userDetailsBean.getExpectationBean().getSubCaste());
		pstmt.setInt(4, userDetailsBean.getExpectationBean().getAgeFrom());
		pstmt.setInt(5, userDetailsBean.getExpectationBean().getAgeTo());
		pstmt.setString(6, userDetailsBean.getExpectationBean().getEducationalQualification());
		pstmt.setString(7, userDetailsBean.getExpectationBean().getOccupation());
		pstmt.setInt(8, userDetailsBean.getExpectationBean().getHeightMin());
		pstmt.setInt(9, userDetailsBean.getExpectationBean().getWeight());
		pstmt.setString(10, userDetailsBean.getExpectationBean().getPrefferedCity());
		pstmt.setString(11, userDetailsBean.getExpectationBean().getGotra());
		pstmt.setString(12, userDetailsBean.getExpectationBean().getSpectacles());
		pstmt.setString(13, userDetailsBean.getExpectationBean().getManglik());
		pstmt.setString(14, userDetailsBean.getExpectationBean().getMaritalStatus());
		
		pstmt.executeUpdate();
		
		queryForImageBean = "insert into images (user_master_id,image_path)"
				+ " values((SELECT MAX(user_master_id) FROM USER_MASTER),?)";
		
		pstmt = con.prepareStatement(queryForImageBean);
		pstmt.setBytes(1, userDetailsBean.getImageBean().getImageFileByte());
		
		result = pstmt.executeUpdate();
		if(result==1){
			status="Done";
			con.setAutoCommit(true);
		}
		else {
			status="NotDone";
		}
		
		}
		catch(Exception e){
			e.printStackTrace();
			status="A problem occured please try again!";
		}
		return status;
	}

	@Override
	public UserDetailsBean login(UserDetailsBean userDetailsBean) {
		String query = "Select user_master_id,password from user_master where email_id = ?";
		PreparedStatement pstmt = null;
		Connection con = null;
		ResultSet resultSet = null;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, userDetailsBean.getEmailId());
			resultSet = pstmt.executeQuery();
			
			
			if (resultSet.next()) {
				if(BCrypt.checkpw(userDetailsBean.getPassword(), resultSet.getString("password")))
				{
				userDetailsBean.setUserDetailId(resultSet.getInt("user_master_id"));
				userDetailsBean = getUserDetailsByUserId(userDetailsBean);
				userDetailsBean.setIsLoggedIn(true);
				}
				userDetailsBean.setIsLoggedIn(false);
			}

			else
				userDetailsBean.setIsLoggedIn(false);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return userDetailsBean;
	}

	private UserDetailsBean getUserDetailsByUserId(UserDetailsBean userDetailsBean) {
		// TODO Auto-generated method stub
		return userDetailsBean;
	}

}
