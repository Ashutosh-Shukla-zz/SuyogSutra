package com.matri.bean;

import java.util.List;

public class ExpectationBean {
	Object obj=new Object();

	public void setObj(Object obj) {
		this.obj = obj;
	}

	private int expectationBeanId;

	private int heightMin;

	private int weight;

	private String complexion;

	private String spectacles;

	private String caste;

	private String subCaste;

	private String gotra;

	private String manglik;

	private String prefferedCity;

	private String maritalStatus;

	private int ageFrom;

	private int ageTo;

	private String educationalQualification;

	private String occupation;

	private List<SearchResultBean> searchResultBeanList;

	public List<SearchResultBean> getSearchResultBeanList() {
		return searchResultBeanList;
	}

	public void setSearchResultBeanList(List<SearchResultBean> searchResultBeanList) {
		this.searchResultBeanList = searchResultBeanList;
	}

	public int getExpectationBeanId() {
		return expectationBeanId;
	}

	public void setExpectationBeanId(int expectationBeanId) {
		this.expectationBeanId = expectationBeanId;
	}

	public int getHeightMin() {
		return heightMin;
	}

	public void setHeightMin(int heightMin) {
		this.heightMin = heightMin;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getComplexion() {
		return complexion;
	}

	public void setComplexion(String complexion) {
		this.complexion = complexion;
	}

	public String getSpectacles() {
		return spectacles;
	}

	public void setSpectacles(String spectacles) {
		this.spectacles = spectacles;
	}

	public String getCaste() {
		return caste;
	}

	public void setCaste(String caste) {
		this.caste = caste;
	}

	public String getSubCaste() {
		return subCaste;
	}

	public void setSubCaste(String subCaste) {
		this.subCaste = subCaste;
	}

	public String getGotra() {
		return gotra;
	}

	public void setGotra(String gotra) {
		this.gotra = gotra;
	}

	public String getManglik() {
		return manglik;
	}

	public void setManglik(String manglik) {
		this.manglik = manglik;
	}

	public String getPrefferedCity() {
		return prefferedCity;
	}

	public void setPrefferedCity(String prefferedCity) {
		this.prefferedCity = prefferedCity;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public int getAgeFrom() {
		return ageFrom;
	}

	public void setAgeFrom(int ageFrom) {
		this.ageFrom = ageFrom;
	}

	public int getAgeTo() {
		return ageTo;
	}

	public void setAgeTo(int ageTo) {
		this.ageTo = ageTo;
	}

	public String getEducationalQualification() {
		return educationalQualification;
	}

	public void setEducationalQualification(String educationalQualification) {
		this.educationalQualification = educationalQualification;
	}

	public String getOccupation() {
		return occupation;
	}

	public void setOccupation(String occupation) {
		occupation = occupation;
	}

}
