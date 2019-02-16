<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <!-- BEGIN: PAGE CONTAINER -->
        <div class="c-layout-page">
            <!-- BEGIN: LAYOUT/BREADCRUMBS/BREADCRUMBS-1 -->
            <div class="c-layout-breadcrumbs-1 c-fonts-uppercase c-fonts-bold">
                <div class="container">

                    <div class="c-page-title c-pull-left">
                        <h3 class="c-font-uppercase c-font-sbold">Tabbed Contents</h3>
                    </div>
                    <ul class="c-page-breadcrumbs c-theme-nav c-pull-right c-fonts-regular">
                        <li>
                            <a href="#">Components</a>
                        </li>
                        <li>/</li>
                        <li>
                            <a href="javascript:;">Jango Components</a>
                        </li>
                        <li>/</li>
                        <li class="c-state_active">Tabbed Contents</li>
                    </ul>
                </div>
            </div>
            <!-- END: LAYOUT/BREADCRUMBS/BREADCRUMBS-1 -->
            <!-- BEGIN: PAGE CONTENT -->
            
            <div class="c-layout-breadcrumbs-1 c-fonts-uppercase c-fonts-bold c-bordered c-bordered-both">
                <div class="container">
                    <div class="c-page-title c-pull-left">
                        <h3 class="c-font-uppercase c-font-sbold">Registration</h3>
                    </div>
                    <ul class="c-page-breadcrumbs c-theme-nav c-pull-right c-fonts-regular">
                        <li>
                            <a href="javascript:;">Features</a>
                        </li>
                        <li>/</li>
                        <li>
                            <a href="#">Breadcrumbs</a>
                        </li>
                        <li>/</li>
                        <li>
                            <a href="breadcrumbs-default.html">Breadcrumbs - Default</a>
                        </li>
                        <li>/</li>
                        <li class="c-state_active"> Components</li>
                    </ul>
                </div>
            </div>
            
            <div class="c-content-box c-size-md">
                <div class="container">
                    <div class="c-content-tab-4 c-opt-5" role="tabpanel">
                        <ul class="nav nav-justified" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#tab-1" role="tab" data-toggle="tab">Personal Details</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab-2" role="tab" data-toggle="tab">Educational &amp; Professional Details</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab-3" role="tab" data-toggle="tab">Horoscope Details</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab-4" role="tab" data-toggle="tab">Family Details</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab-5" role="tab" data-toggle="tab">Expectations</a>
                            </li>
                        </ul>
                        
                        <!-- Registration Form -->
                        <form:form class="form-horizontal" modelAttribute="userDetailsBean" action="registration" enctype="multipart/form-data">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade in active" id="tab-1">
                            
                                <ul class="c-tab-items">
                                
                                    <li class="row">
                                        <div class="col-md-6 col-sm-12">
                                        
                                        <div class="form-group">
                                            <label for="firstName" class="col-md-4 control-label">First Name</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" path="firstName" id="firstName" placeholder="First Name" /> </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middleName" class="col-md-4 control-label">Middle Name</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" path="middleName" id="middleName" placeholder="Middle Name" /> </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="lastName" class="col-md-4 control-label">Last Name</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" path="lastName" id="lastName" placeholder="Last Name" /> </div>
                                        </div>
                                        <div class="form-group form-c-radios">
                                            <label class="col-md-4 control-label">Gender</label>
                                            <div class="col-md-6">
                                                <div class="c-radio-inline">
                                                    <div class="c-radio">
                                                        <form:radiobutton id="radio4-112" class="c-radio" path="gender" />
                                                        <label for="radio4-112">
                                                            <span></span>
                                                            <span class="check"></span>
                                                            <span class="box"></span>Male</label>
                                                    </div>
                                                    <div class="c-radio">
                                                        <form:radiobutton  id="radio5-112" class="c-radio" path="gender" />
                                                        <label for="radio5-112">
                                                            <span></span>
                                                            <span class="check"></span>
                                                            <span class="box"></span>Female</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="dateOfBirth" class="col-md-4 control-label">Date of Birth</label>
                                            <div class="col-md-6">
                                                <form:input type="date" class="form-control  c-square c-theme" path="dateOfBirth" id="dateOfBirth" placeholder="Date of Birth" /> </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="emailId" class="col-md-4 control-label">Email</label>
                                            <div class="col-md-6">
                                                <form:input type="email" class="form-control  c-square c-theme" id="emailId" path="emailId" placeholder="Email" /> </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="contactNumber1" class="col-md-4 control-label">Contact Number 1</label>
                                            <div class="col-md-6">
                                                <form:input type="number" class="form-control  c-square c-theme" id="contactNumber1" path="contactNumber1" placeholder="Contact Number 1" /> </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="contactNumber2" class="col-md-4 control-label">Contact Number 2</label>
                                            <div class="col-md-6">
                                                <form:input type="number" class="form-control  c-square c-theme" id="contactNumber2" path="contactNumber2" placeholder="Contact Number 2" /> </div>
                                        </div>
                                            <div class="form-group form-c-radios">
                                            <label class="col-md-4 control-label">Marital Status</label>
                                            <div class="col-md-6">
                                                <div class="c-radio-inline">
                                                    <div class="c-radio">
                                                        <form:radiobutton  id="maritalStatus1" class="c-radio" path="maritalStatus" />
                                                        <label for="maritalStatus1">
                                                            <span></span>
                                                            <span class="check"></span>
                                                            <span class="box"></span>Single</label>
                                                    </div>
                                                    <div class="c-radio">
                                                        <form:radiobutton id="maritalStatus2" class="c-radio" path="maritalStatus" />
                                                        <label for="maritalStatus2">
                                                            <span></span>
                                                            <span class="check"></span>
                                                            <span class="box"></span>Divorced</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="nationality" class="col-md-4 control-label">Nationality</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" id="nationality" path="nationality" placeholder="Nationality" /> </div>
                                        </div>
                                         <div class="form-group">
	                                            <label for="weight" class="col-md-4 control-label">Weight</label>
	                                            <div class="col-md-6">
	                                                <form:input type="number" class="form-control  c-square c-theme" id="weight" path="physicalAttributesBean.weight" placeholder="Weight" /> </div>
	                                        </div>
                                   </div>
                                        <div class="col-md-6 col-sm-12">
	                                       
	                                        <div class="form-group">
	                                            <label for="height" class="col-md-4 control-label">Height</label>
	                                            <div class="col-md-6">
	                                                <form:select class=" radio-inline   c-square c-theme" id="height" path="physicalAttributesBean.heightFeet" placeholder="Feet">
	                                                	<form:option value="4" />
	                                                	<form:option value="5" />
	                                                	<form:option value="6" />
	                                                	<form:option value="7" />
	                                                </form:select>
	                                                <span class="box">Feet</span>
	                                                <form:select class=" radio-inline  c-square c-theme" path="physicalAttributesBean.heightInch" placeholder="Inches">
	                                                	<form:option value="0" />
	                                                	<form:option value="1" />
	                                                	<form:option value="2" />
	                                                	<form:option value="3" />
	                                                	<form:option value="4" />
	                                                	<form:option value="5" />
	                                                	<form:option value="6" />
	                                                	<form:option value="7" />
	                                                	<form:option value="8" />
	                                                	<form:option value="9" />
	                                                	<form:option value="10" />
	                                                	<form:option value="11" />
	                                                </form:select>
	                                                <span class="box">Inches</span>
	                                            </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="complexion" class="col-md-4 control-label">Complexion</label>
	                                            <div class="col-md-6">
	                                                <form:select class="form-control  c-square c-theme" id="complexion" path="physicalAttributesBean.complexion" placeholder="Complexion">
	                                                	<form:option value="Fair" />
	                                                	<form:option value="Weatish" />
	                                                	<form:option value="Brown" />
	                                                	<form:option value="Dark Brown" />
	                                                </form:select>
	                                            </div>
	                                         </div>
	                                         <div class="form-group form-c-radios">
	                                            <label class="col-md-4 control-label">Specatcles/Lens</label>
	                                            <div class="col-md-6">
	                                                <div class="c-radio-inline">
	                                                    <div class="c-radio">
	                                                        <form:radiobutton  id="radioSpectacles1" class="c-radio" path="physicalAttributesBean.spectacles" />
	                                                        <label for="radioSpectacles1">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>Yes</label>
	                                                    </div>
	                                                    <div class="c-radio">
	                                                        <form:radiobutton id="radioSpectacles2" class="c-radio" path="physicalAttributesBean.spectacles" />
	                                                        <label for="radioSpectacles2">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>No</label>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                         </div>  
	                                         <div class="form-group form-c-radios">
	                                            <label class="col-md-4 control-label">Diet</label>
	                                            <div class="col-md-6">
	                                                <div class="c-radio-inline">
	                                                    <div class="c-radio">
	                                                        <form:radiobutton  id="radiodiet1" class="c-radio" path="physicalAttributesBean.diet" />
	                                                        <label for="radiodiet1">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>Veg</label>
	                                                    </div>
	                                                    <div class="c-radio">
	                                                        <form:radiobutton id="radiodiet2" class="c-radio" path="physicalAttributesBean.diet" />
	                                                        <label for="radiodiet2">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>Non Veg</label>
	                                                    </div>
	                                                </div>
	                                            </div>
                                        	</div>
                                        	<div class="form-group">
	                                            <label for="physicalDisability" class="col-md-4 control-label">Physical Disabilty</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" id="physicalDisability" path="physicalAttributesBean.physicalDisability" placeholder="Physical Disabilty" /> </div>
	                                        </div>
	                                        
	                                        <div class="form-group">
	                                            <label for="bloodGroup" class="col-md-4 control-label">Blood Group</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" id="bloodGroup" path="physicalAttributesBean.bloodGroup" placeholder="Blood Group" /> </div>
	                                        </div>
	                                        
	                                        <div class="form-group">
	                                            <label for="image" class="col-md-4 control-label">Image</label>
	                                            <div class="col-md-6">
	                                                <form:input type="file" class="form-control  c-square c-theme" path="imageBean.file" id="image" accept="image/*" placeholder="Image" /> </div>
	                                        </div>
	                                        <div class="form-group">
				                                <label for="password" class="col-md-4 control-label">Password</label>
				                                <div class="col-md-6">
				                                <form:input type="password" class="form-control input-lg c-square" id="password" path="password" placeholder="Password" /> 
				                                </div>
				                                </div>
	                                      
	                                      
			                                <div class="" role="presentation">
				                                        	<a href="#tab-2" class=" btn btn-primary btn-lg" role="tab" data-toggle="tab"  style="float:right; margin-right: 95px;">Next</a>
				                            </div>
	                                    </div>  
                                    </li>
                                       
                                </ul>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab-2">
                                <ul class="c-tab-items">
                                    <li class="row">
                                        <div class="col-md-6 col-sm-12">
                                        
	                                        <div class="form-group">
	                                            <label for="educationalQualification" class="col-md-4 control-label">Educational Qualification</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="educationProffessionBean.educationalQualification" id="educationalQualification" placeholder="Educational Qualification" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="typeOfOccupation" class="col-md-4 control-label">Occupation Type</label>
	                                            <div class="col-md-6">
	                                                <form:select class="form-control  c-square c-theme" id="typeOfOccupation" path="educationProffessionBean.typeOfOccupation" placeholder="Occupation Type">
	                                                	<form:option value="Business" />
	                                                	<form:option value="Private Sector Service" />
	                                                	<form:option value="Government Sector Service" />
	                                                </form:select>
	                                            </div>
	                                         </div>
	                                        <div class="form-group">
	                                            <label for="occupation" class="col-md-4 control-label">Occupation</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="educationProffessionBean.occupation" id="occupation" placeholder="Occupation" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="designation" class="col-md-4 control-label">Designation</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="educationProffessionBean.designation" id="designation" placeholder="Designation" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="companyName" class="col-md-4 control-label">Company Name</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="educationProffessionBean.companyName" id="companyName" placeholder="Company Name" /> </div>
	                                        </div>
                                        </div>
                                        
                                        <div class="col-md-6 col-sm-12">
	                                        <div class="form-group">
	                                            <label for="currentAddress" class="col-md-4 control-label">Current Address</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="educationProffessionBean.currentAddress" id="currentAddress" placeholder="Current Address" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="city" class="col-md-4 control-label">City</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="educationProffessionBean.city" id="city" placeholder="City" /> </div>
	                                        </div>
	                                        
	                                        <div class="form-group">
	                                            <label for="salary" class="col-md-4 control-label">Salary</label>
	                                            <div class="col-md-6">
	                                                <form:input type="number" class="form-control  c-square c-theme" path="educationProffessionBean.salary" id="salary" placeholder="Salary" /> </div>
	                                        </div>
	                                        
	                                        <div class="form-group">
	                                            <label for="assets" class="col-md-4 control-label">Assets</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="educationProffessionBean.assets" id="assets" placeholder="Assets" /> </div>
	                                        </div>
	                                        <div class="" role="presentation">
				                                        	<a href="#tab-3" class=" btn btn-primary btn-lg" role="tab" data-toggle="tab"  style="float:right; margin-right: 95px;">Next</a>
				                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab-3">
                                <ul class="c-tab-items">
                                    <li class="row">
                                        <div class="col-md-6 col-sm-12">
                                         
	                                        <div class="form-group">
	                                            <label for="caste" class="col-md-4 control-label">Caste</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="horoscopeBean.caste" id="caste" placeholder="Caste" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="subCaste" class="col-md-4 control-label">Sub Caste</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="horoscopeBean.subCaste" id="subCaste" placeholder="Sub Caste" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="nakshatra" class="col-md-4 control-label">Nakshatra</label>
	                                            <div class="col-md-6">
		                                        	<form:select size="1" path="horoscopeBean.nakshtra">
										              <form:option value="Ashwini" />
										              <form:option value="Ardra" />
										              <form:option value="Aslesha" />
										              <form:option value="Anuradha" />
										              <form:option value="Bharani" />
										              <form:option value="Chitra" />
										              <form:option value="Dhanishta" />
										              <form:option value="Hasta" />
										              <form:option value="Jyeshta" />
										              <form:option value="Krittika" />
										              <form:option value="Moola" />
										              <form:option value="Magha" />
										              <form:option value="Mrigasira" />
										              <form:option value="Pushya" />
										              <form:option value="Purva Phalgini" />
										              <form:option value="Purva Bhadra" />
										              <form:option value="Purva Shadha" />
										              <form:option value="Punarvasu" />
										              <form:option value="Rohini" />
										            </form:select>
								              </div>
								             </div>
	                                        <div class="form-group">
	                                            <label for="nadi" class="col-md-4 control-label">Nadi</label>
	                                            <div class="col-md-6">
		                                        	<form:select size="1" path="horoscopeBean.nadi">
										              <form:option value="Not Specified" />
										              <form:option value="Adhya" />
										              <form:option value="Antya" />
										              <form:option value="Madhya" />
										            </form:select>
								              </div>
                                        </div>
	                                        <div class="form-group">
	                                            <label for="gan" class="col-md-4 control-label">Gan</label>
	                                            <div class="col-md-6">
		                                        	<form:select size="1" path="horoscopeBean.gan">
										              <form:option value="Not Specified" />
										              <form:option value="Dev Gan" />
										              <form:option value="Manushya Gan" />
										              <form:option value="Rakhsash Gan" />
										            </form:select>
								              </div>
                                        	</div>
	                                         <div class="form-group form-c-radios">
	                                            <label class="col-md-4 control-label">Manglik</label>
	                                            <div class="col-md-6">
	                                                <div class="c-radio-inline">
	                                                    <div class="c-radio">
	                                                        <form:radiobutton  id="manglik1" class="c-radio" path="horoscopeBean.manglik" />
	                                                        <label for="manglik1">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>Yes</label>
	                                                    </div>
	                                                    <div class="c-radio">
	                                                        <form:radiobutton id="manglik2" class="c-radio" path="horoscopeBean.manglik" />
	                                                        <label for="manglik2">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>No</label>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                         </div> 
	                                        <div class="form-group">
	                                            <label for="placeOfBirth" class="col-md-4 control-label">Place of Birth</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="horoscopeBean.placeOfBirth" id="placeOfBirth" placeholder="Place of Birth" /> </div>
	                                        </div>
                                        </div>
                                         <div class="col-md-6 col-sm-12">
                                          
	                                        <div class="form-group">
	                                            <label for="gotra" class="col-md-4 control-label">Gotra</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="horoscopeBean.gotra" id="gotra" placeholder="Gotra" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="timepicker1" class="col-md-4 control-label">Time Of Birth</label>
	                                            <div class="col-md-6">
	                                            <div class="input-group bootstrap-timepicker timepicker">
	                                                <form:input type="text" id="timepicker1" path="horoscopeBean.timeOfBirth" />
	                                                <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
	                                            </div>
	                                            </div>
                                         </div>
                                          <div class="" role="presentation">
				                                        	<a href="#tab-4" class=" btn btn-primary btn-lg" role="tab" data-toggle="tab"  style="float:right; margin-right: 95px;">Next</a>
				                            </div>
                                         </div>
                                    </li>
                                </ul>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab-4">
                                <ul class="c-tab-items">
                                    <li class="row">
                                         <div class="col-md-6 col-sm-12">
                                         	<div class="form-group">
	                                            <label for="fathersName" class="col-md-4 control-label">Father's Name</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="familyDetailBean.fathersName" id="fathersName" placeholder="Father's Name" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="fathersOccupation" class="col-md-4 control-label">Father's Occupation</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="familyDetailBean.fathersOccupation" id="fathersOccupation" placeholder="Father's Occupation" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="mothersName" class="col-md-4 control-label">Mother's Name</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="familyDetailBean.mothersName" id="mothersName" placeholder="Mother's Name" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="mothersOccupation" class="col-md-4 control-label">Mother's Occupation</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="familyDetailBean.mothersOccupation" id="mothersOccupation" placeholder="Mother's Occupation" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="numberOfBrothers" class="col-md-4 control-label">Number of Brothers</label>
	                                            <div class="col-md-6">
	                                                <form:input type="number" class="form-control  c-square c-theme" path="familyDetailBean.numberOfBrothers" id="numberOfBrothers" placeholder="Number of Brothers" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="numberOfSisters" class="col-md-4 control-label">Number of Sisters</label>
	                                            <div class="col-md-6">
	                                                <form:input type="number" class="form-control  c-square c-theme" path="familyDetailBean.numberOfSisters" id="numberOfSisters" placeholder="Number of Sisters" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="parentsAddress" class="col-md-4 control-label">Parents Address</label>
	                                            <div class="col-md-6">
	                                                <form:textarea  class="form-control  c-square c-theme" path="familyDetailBean.parentsAddress" id="parentsAddress" placeholder="Parents Address" /> </div>
	                                        </div>
	                                        <div class="form-group form-c-radios">
	                                            <label class="col-md-4 control-label">Joint Family</label>
	                                            <div class="col-md-6">
	                                                <div class="c-radio-inline">
	                                                    <div class="c-radio">
	                                                        <form:radiobutton  id="jointFamily1" class="c-radio" path="familyDetailBean.jointFamily" />
	                                                        <label for="jointFamily1">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>Yes</label>
	                                                    </div>
	                                                    <div class="c-radio">
	                                                        <form:radiobutton id="jointFamily2" class="c-radio" path="familyDetailBean.jointFamily" />
	                                                        <label for="jointFamily2">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>No</label>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                         </div>
	                                         </div> 
	                                      <div class="col-md-6 col-sm-12">
	                                         <div class="form-group">
	                                            <label for="relativesLastNames" class="col-md-4 control-label">Relatives Last Names</label>
	                                            <div class="col-md-6">
	                                                <form:textarea  class="form-control  c-square c-theme" path="familyDetailBean.relativesLastNames" id="relativesLastNames" placeholder="Relatives Last Names" /> </div>
	                                        </div>
	                                         <div class="form-group">
	                                            <label for="fathersNativeAddress" class="col-md-4 control-label">Fathers Native city</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="familyDetailBean.fathersNativeAddress" id="fathersNativeAddress" placeholder="Fathers Native city" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="mothersNativeAddress" class="col-md-4 control-label">Mothers Native city</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="familyDetailBean.mothersNativeAddress" id="mothersNativeAddress" placeholder="Mothers Native city" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="parentNumber" class="col-md-4 control-label">Parents Number</label>
	                                            <div class="col-md-6">
	                                                <form:input type="number" class="form-control  c-square c-theme" path="familyDetailBean.parentNumber" id="parentNumber" placeholder="Parents Number" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="otherDescription" class="col-md-4 control-label">Other Description</label>
	                                            <div class="col-md-6">
	                                                <form:textarea  class="form-control  c-square c-theme" path="familyDetailBean.otherDescription" id="otherDescription" placeholder="Other Description" /> </div>
	                                        </div>
	                                        <div class="" role="presentation">
				                                        	<a href="#tab-5" class=" btn btn-primary btn-lg" role="tab" data-toggle="tab"  style="float:right; margin-right: 95px;">Next</a>
				                            </div>
                                         </div>
                                    </li>
                                </ul>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab-5">
                                <ul class="c-tab-items">
                                    <li class="row">
                                       <div class="col-md-6 col-sm-12">
	                                       <div class="form-group">
		                                            <label for="height" class="col-md-4 control-label">Minimum Height</label>
		                                            <div class="col-md-6">
		                                                <form:select class=" radio-inline   c-square c-theme" id="height" path="expectationBean.heightMin" placeholder="Feet">
		                                                	<form:option value="4" />
		                                                	<form:option value="5" />
		                                                	<form:option value="6" />
		                                                	<form:option value="7" />
		                                                </form:select>
		                                                <span class="box">Feet</span>
		                                                
		                                            </div>
		                                    </div>
		                                     <div class="form-group">
	                                            <label for="weight" class="col-md-4 control-label">Weight</label>
	                                            <div class="col-md-6">
	                                                <form:input type="number" class="form-control  c-square c-theme" id="weight" path="expectationBean.weight" placeholder="Weight" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="complexion1" class="col-md-4 control-label">Complexion</label>
	                                            <div class="col-md-6">
	                                                <form:select class="form-control  c-square c-theme" id="complexion1" path="expectationBean.complexion" placeholder="Complexion">
	                                                	<form:option value="Fair" />
	                                                	<form:option value="Weatish" />
	                                                	<form:option value="Brown" />
	                                                	<form:option value="Dark Brown" />
	                                                </form:select>
	                                            </div>
	                                         </div>
	                                         <div class="form-group form-c-radios">
	                                            <label class="col-md-4 control-label">Specatcles/Lens</label>
	                                            <div class="col-md-6">
	                                                <div class="c-radio-inline">
	                                                    <div class="c-radio">
	                                                        <form:radiobutton  id="radioSpectacles3" class="c-radio" path="expectationBean.spectacles" />
	                                                        <label for="radioSpectacles3">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>Yes</label>
	                                                    </div>
	                                                    <div class="c-radio">
	                                                        <form:radiobutton id="radioSpectacles4" class="c-radio" path="expectationBean.spectacles" />
	                                                        <label for="radioSpectacles4">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>No</label>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                         </div>  
	                                         <div class="form-group">
	                                            <label for="caste1" class="col-md-4 control-label">Caste</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="expectationBean.caste" id="caste1" placeholder="Caste" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="subCaste1" class="col-md-4 control-label">Sub Caste</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="expectationBean.subCaste" id="subCaste1" placeholder="Sub Caste" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="gotra1" class="col-md-4 control-label">Gotra</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="expectationBean.gotra" id="gotra1" placeholder="Gotra" /> </div>
	                                        </div>
	                                        <div class="form-group form-c-radios">
	                                            <label class="col-md-4 control-label">Manglik</label>
	                                            <div class="col-md-6">
	                                                <div class="c-radio-inline">
	                                                    <div class="c-radio">
	                                                        <form:radiobutton  id="manglik3" class="c-radio" path="expectationBean.manglik" />
	                                                        <label for="manglik3">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>Yes</label>
	                                                    </div>
	                                                    <div class="c-radio">
	                                                        <form:radiobutton id="manglik4" class="c-radio" path="expectationBean.manglik" />
	                                                        <label for="manglik4">
	                                                            <span></span>
	                                                            <span class="check"></span>
	                                                            <span class="box"></span>No</label>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                         </div> 
	                                       </div>
	                                       <div class="col-md-6 col-sm-12">
	                                          <div class="form-group">
	                                            <label for="prefferedCity" class="col-md-4 control-label">Preffered City</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="expectationBean.prefferedCity" id="prefferedCity" placeholder="Preffered City" /> </div>
	                                        </div>
	                                        <div class="form-group form-c-radios">
                                            <label class="col-md-4 control-label">Marital Status</label>
                                            <div class="col-md-6">
                                                <div class="c-radio-inline">
                                                    <div class="c-radio">
                                                        <form:radiobutton  id="radio4-113" class="c-radio" path="expectationBean.maritalStatus" />
                                                        <label for="radio4-113">
                                                            <span></span>
                                                            <span class="check"></span>
                                                            <span class="box"></span>Single</label>
                                                    </div>
                                                    <div class="c-radio">
                                                        <form:radiobutton id="radio5-114" class="c-radio" path="expectationBean.maritalStatus" />
                                                        <label for="radio5-114">
                                                            <span></span>
                                                            <span class="check"></span>
                                                            <span class="box"></span>Divorced</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="form-group">
	                                            <label for="ageFrom" class="col-md-4 control-label">Age From</label>
	                                            <div class="col-md-6">
	                                                <form:input type="number" class="form-control  c-square c-theme" id="ageFrom" path="expectationBean.ageFrom" placeholder="Age From" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="ageTo" class="col-md-4 control-label">Age To</label>
	                                            <div class="col-md-6">
	                                                <form:input type="number" class="form-control  c-square c-theme" id="ageTo" path="expectationBean.ageTo" placeholder="Age To" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="educationalQualification" class="col-md-4 control-label">Educational Qualification</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="expectationBean.educationalQualification" id="educationalQualification" placeholder="Educational Qualification" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="occupation" class="col-md-4 control-label">Occupation</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="expectationBean.occupation" id="occupation" placeholder="Occupation" /> </div>
	                                        </div>
	                                        <div class="" role="presentation">
				                                        	<input type="submit" value="Submit" class=" btn btn-primary btn-lg" style="float:right; margin-right: 95px;" ></input>
				                            </div>
                                       </div>
                                    </li>
                                </ul>
                            </div>
                            
                        </div>
                        
                        </form:form>
                        
                    </div>
                </div>
            </div>
            <!-- END: CONTENT/TABS/TAB-3 -->
            <!-- END: PAGE CONTENT -->
        </div>
        <!-- END: PAGE CONTAINER -->
        
