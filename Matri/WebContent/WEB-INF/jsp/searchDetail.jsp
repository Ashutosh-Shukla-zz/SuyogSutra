<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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
                        <h3 class="c-font-uppercase c-font-sbold">User Details</h3>
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
            
            
            
            <div class="c-content-box c-size-md">
                <div class="container">
                <div class="c-shop-product-details-2">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="c-product-gallery">
                                    <div class="c-product-gallery-content" style="height:300px">
                                        <div class="c-zoom">
                                            <img src="assets/base/img/content/shop8/34.jpg"> </div>
                                    </div>
                                </div>
                            </div>
                           <div class="col-md-9">
                            <div class="c-content-accordion-2 c-theme">
                                <div class="panel-group" id="" role="tablist">
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title">
                                                <a class="c-font-bold c-font-19" data-toggle="collapse" data-parent="" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">PERSONAL DETAILS</a>
                                            </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body c-font-18"> 
													
														
															<div class="col-md-6">
																<table class="table">
							                                        <tbody>
							                                        	<tr>
							                                                <td><b>First Name</b></td>
							                                                <td>${userDetail.firstName }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Middle Name</b></td>
							                                                <td>${userDetail.middleName }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Last Name</b></td>
							                                                <td>${userDetail.lastName }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Gender</b></td>
							                                                <td>${userDetail.gender }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Date of birth</b></td>
							                                                <td>${userDetail.dateOfBirth }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Email</b></td>
							                                                <td>${userDetail.emailId}</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Contact Number</b></td>
							                                                <td>${userDetail.contactNumber1 }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Alternate Number</b></td>
							                                                <td>${userDetail.contactNumber2 }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Marital Status</b></td>
							                                                <td>${userDetail.maritalStatus }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Nationality</b></td>
							                                                <td>${userDetail.nationality }</td>
							                                            </tr>
							                                        </tbody>
							                                    </table>
															</div>
														<div class="col-md-6">
														<table class="table">
							                                        <tbody>
							                                        <tr>
							                                                <td><b>Height</b></td>
							                                                <td>${userDetail.physicalAttributesBean.heightFeet }&nbsp;Feet
							                                                	${userDetail.physicalAttributesBean.heightInch}&nbsp;Inches
							                                                </td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Weight</b></td>
							                                                <td>${userDetail.physicalAttributesBean.weight }&nbsp; Kg</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Complexion</b></td>
							                                                <td>${userDetail.physicalAttributesBean.complexion }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Spectatcles</b></td>
							                                                <td>${userDetail.physicalAttributesBean.spectacles }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Blood Group</b></td>
							                                                <td>${userDetail.physicalAttributesBean.bloodGroup }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Physical Disability</b></td>
							                                                <td>${userDetail.physicalAttributesBean.physicalDisability }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Type of Diet</b></td>
							                                                <td>${userDetail.physicalAttributesBean.diet }</td>
							                                            </tr>
							                                        </tbody>
							                                    </table>
														</div>
												</div>
												
											</div>
                                        </div>
                                    </div>
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title">
                                                <a class=" c-font-bold c-font-19" data-toggle="collapse" data-parent="" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">HOROSCOPE DETAILS</a>
                                            </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body c-font-18"> 
                                            	<div class="col-md-6">
														<table class="table">
							                                        <tbody>
							                                        <tr>
							                                                <td><b>Caste</b></td>
							                                                <td>${userDetail.horoscopeBean.caste }
							                                                </td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Sub Caste</b></td>
							                                                <td>${userDetail.horoscopeBean.subCaste }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Gotra</b></td>
							                                                <td>${userDetail.horoscopeBean.gotra }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Place of birth</b></td>
							                                                <td>${userDetail.horoscopeBean.placeOfBirth }</td>
							                                            </tr>
							                                            <tr>
							                                                <td><b>Time of Birth</b></td>
							                                                <td>${userDetail.horoscopeBean.timeOfBirth }</td>
							                                            </tr>
							                                        </tbody>
							                                    </table>														
												</div>
												<div class="col-md-6">
													<table class="table">
				                                        <tbody>
				                                        <tr>
				                                            <tr>
				                                                <td><b>Gan</b></td>
				                                                <td>${userDetail.horoscopeBean.gan }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Nadi</b></td>
				                                                <td>${userDetail.horoscopeBean.nadi }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Nakshatra</b></td>
				                                                <td>${userDetail.horoscopeBean.nakshtra }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Manglik</b></td>
				                                                <td>${userDetail.horoscopeBean.manglik }</td>
				                                            </tr>
				                                        </tbody>
				                                    </table>		
													
												</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title">
                                                <a class=" c-font-bold c-font-19" data-toggle="collapse" data-parent="" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">FAMILY DETAILS</a>
                                            </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingThree">
                                           <div class="panel-body c-font-18"> 
                                            	<div class="col-md-6">
													<table class="table">
				                                        <tbody>
				                                        <tr>
				                                            <tr>
				                                                <td><b>Father's Name</b></td>
				                                                <td>${userDetail.familyDetailBean.fathersName }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Father's Occupation</b></td>
				                                                <td>${userDetail.familyDetailBean.fathersOccupation }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Mothers Name</b></td>
				                                                <td>${userDetail.familyDetailBean.mothersName }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Mother's Occupation</b></td>
				                                                <td>${userDetail.familyDetailBean.mothersOccupation }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Number of Brothers</b></td>
				                                                <td>${userDetail.familyDetailBean.numberOfBrothers }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Number of Sisters</b></td>
				                                                <td>${userDetail.familyDetailBean.numberOfSisters }</td>
				                                            </tr>
				                                        </tbody>
				                                    </table>		
														
												</div>
												<div class="col-md-6">
													<table class="table">
				                                        <tbody>
				                                            <tr>
				                                                <td><b>Parent's Address</b></td>
				                                                <td>${userDetail.familyDetailBean.parentsAddress }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Joint Family</b></td>
				                                                <td>${userDetail.familyDetailBean.jointFamily }</td>
				                                            </tr>
				                                        <tr>
				                                            <tr>
				                                                <td><b>Relatives last names</b></td>
				                                                <td>${userDetail.familyDetailBean.relativesLastNames }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Father's Native City</b></td>
				                                                <td>${userDetail.familyDetailBean.fathersNativeAddress }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Mothers Native City</b></td>
				                                                <td>${userDetail.familyDetailBean.mothersNativeAddress }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Parent's Contact Number</b></td>
				                                                <td>${userDetail.familyDetailBean.parentNumber }</td>
				                                            </tr>
				                                        </tbody>
				                                    </table>
													
												</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingFour">
                                            <h4 class="panel-title">
                                                <a class=" c-font-bold c-font-19 c-right" data-toggle="collapse" data-parent="" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">EXPECTATION DETAILS</a>
                                                
                                            </h4>
                                        </div>
                                        <div id="collapseFour" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingFour">
                                            <div class="col-md-6">
													<table class="table">
				                                        <tbody>
				                                        <tr>
				                                            <tr>
				                                                <td><b>Minimum Height</b></td>
				                                                <td>${userDetail.expectationBean.heightMin }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Weight</b></td>
				                                                <td>${userDetail.expectationBean.weight }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Complexion</b></td>
				                                                <td>${userDetail.expectationBean.complexion }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Spectacles</b></td>
				                                                <td>${userDetail.expectationBean.spectacles }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Caste</b></td>
				                                                <td>${userDetail.expectationBean.caste }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Subcaste</b></td>
				                                                <td>${userDetail.expectationBean.subCaste }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Gotra</b></td>
				                                                <td>${userDetail.expectationBean.gotra }</td>
				                                            </tr>
				                                        </tbody>
				                                    </table>
													
												</div>
												 <div class="col-md-6">
													<table class="table">
				                                        <tbody>
				                                        <tr>
				                                            <tr>
				                                                <td><b>Manglik</b></td>
				                                                <td>${userDetail.expectationBean.manglik }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Preferred City</b></td>
				                                                <td>${userDetail.expectationBean.prefferedCity }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Marital Status</b></td>
				                                                <td>${userDetail.expectationBean.maritalStatus }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Age From</b></td>
				                                                <td>${userDetail.expectationBean.ageFrom }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Age To</b></td>
				                                                <td>${userDetail.expectationBean.ageTo }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Education</b></td>
				                                                <td>${userDetail.expectationBean.educationalQualification }</td>
				                                            </tr>
				                                            <tr>
				                                                <td><b>Occupation</b></td>
				                                                <td>${userDetail.expectationBean.occupation }</td>
				                                            </tr>
				                                        </tbody>
				                                    </table>
													
												</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            
                        </div>
                  </div>
                </div>
            </div>
            <!-- END: CONTENT/TABS/TAB-3 -->
            <!-- END: PAGE CONTENT -->
        
        <!-- END: PAGE CONTAINER -->
        
                