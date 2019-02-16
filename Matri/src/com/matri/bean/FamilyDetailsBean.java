package com.matri.bean;

import java.util.ArrayList;

public class FamilyDetailsBean {

	private int familyDetailsBeanId;

	private String fathersName;

	private String fathersOccupation;

	private String mothersName;

	private String mothersOccupation;

	private int numberOfBrothers;

	private int numberOfSisters;

	private String parentsAddress;

	private String jointFamily;

	private String relativesLastNames;

	private String fathersNativeAddress;

	private String mothersNativeAddress;

	private Long parentNumber;

	private Long secondaryContactNumber;

	private Long landLineNumber;

	private String otherDescription;

	private ArrayList<SiblingDetailsBean> siblingList;

	
	
	public FamilyDetailsBean() {
		parentNumber = new Long(0);
		secondaryContactNumber = new Long(0);
		landLineNumber = new Long(0);
	}

	public int getFamilyDetailsBeanId() {
		return familyDetailsBeanId;
	}

	public void setFamilyDetailsBeanId(int familyDetailsBeanId) {
		this.familyDetailsBeanId = familyDetailsBeanId;
	}

	public String getFathersName() {
		return fathersName;
	}

	public void setFathersName(String fathersName) {
		this.fathersName = fathersName;
	}

	public String getFathersOccupation() {
		return fathersOccupation;
	}

	public void setFathersOccupation(String fathersOccupation) {
		this.fathersOccupation = fathersOccupation;
	}

	public String getMothersName() {
		return mothersName;
	}

	public void setMothersName(String mothersName) {
		this.mothersName = mothersName;
	}

	public String getMothersOccupation() {
		return mothersOccupation;
	}

	public void setMothersOccupation(String mothersOccupation) {
		this.mothersOccupation = mothersOccupation;
	}

	public int getNumberOfBrothers() {
		return numberOfBrothers;
	}

	public void setNumberOfBrothers(int numberOfBrothers) {
		this.numberOfBrothers = numberOfBrothers;
	}

	public int getNumberOfSisters() {
		return numberOfSisters;
	}

	public void setNumberOfSisters(int numberOfSisters) {
		this.numberOfSisters = numberOfSisters;
	}

	public String getParentsAddress() {
		return parentsAddress;
	}

	public void setParentsAddress(String parentsAddress) {
		this.parentsAddress = parentsAddress;
	}

	public String getJointFamily() {
		return jointFamily;
	}

	public void setJointFamily(String jointFamily) {
		this.jointFamily = jointFamily;
	}

	public String getRelativesLastNames() {
		return relativesLastNames;
	}

	public void setRelativesLastNames(String relativesLastNames) {
		this.relativesLastNames = relativesLastNames;
	}

	public String getFathersNativeAddress() {
		return fathersNativeAddress;
	}

	public void setFathersNativeAddress(String fathersNativeAddress) {
		this.fathersNativeAddress = fathersNativeAddress;
	}

	public String getMothersNativeAddress() {
		return mothersNativeAddress;
	}

	public void setMothersNativeAddress(String mothersNativeAddress) {
		this.mothersNativeAddress = mothersNativeAddress;
	}

	public Long getParentNumber() {
		return parentNumber;
	}

	public void setParentNumber(Long parentNumber) {
		this.parentNumber = parentNumber;
	}

	public Long getSecondaryContactNumber() {
		return secondaryContactNumber;
	}

	public void setSecondaryContactNumber(Long secondaryContactNumber) {
		this.secondaryContactNumber = secondaryContactNumber;
	}

	public Long getLandLineNumber() {
		return landLineNumber;
	}

	public void setLandLineNumber(Long landLineNumber) {
		this.landLineNumber = landLineNumber;
	}

	public String getOtherDescription() {
		return otherDescription;
	}

	public void setOtherDescription(String otherDescription) {
		this.otherDescription = otherDescription;
	}

	public ArrayList<SiblingDetailsBean> getSiblingList() {
		return siblingList;
	}

	public void setSiblingList(ArrayList<SiblingDetailsBean> siblingList) {
		this.siblingList = siblingList;
	}

}
