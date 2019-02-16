<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <form:form modelAttribute="expectationBean" action="showSearch" class="form-horizontal">
    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="search-form">
        
            <div class="modal-dialog modal-lg">
                <div class="modal-content c-square">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        <h4 class="modal-title" id="myLargeModalLabel">Search for Profiles</h4>
                       
                    </div>
                   
                    <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                         			<div class="form-group">
                                            <label for="caste" class="col-md-4 control-label">Caste</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" path="caste" id="caste" placeholder="Caste" /> </div>
                                    </div>
                                    <div class="form-group">
                                            <label for="subCaste" class="col-md-4 control-label">Sub Caste</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" path="subCaste" id="subCaste" placeholder="Sub Caste" /> </div>
                                    </div>
                                    <div class="form-group">
                                            <label for="complexion" class="col-md-4 control-label">Complexion</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" path="complexion" id="complexion" placeholder="Complexion" /> </div>
                                    </div>
                                    
                                    <div class="form-group">
                                            <label for="spectacles" class="col-md-4 control-label">Spectacles</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" path="spectacles" id="spectacles" placeholder="Spectacles" /> </div>
                                    </div>
                                    <div class="form-group">
                                            <label for="minHeight" class="col-md-4 control-label">Minimum Height</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" path="heightMin" id="minHeight" placeholder="Minimum Height" /> </div>
                                    </div>
                                    <div class="form-group">
                                            <label for="weight" class="col-md-4 control-label">Weight</label>
                                            <div class="col-md-6">
                                                <form:input type="text" class="form-control  c-square c-theme" path="weight" id="weight" placeholder="Weight" /> </div>
                                    </div>
                         			<div class="form-group">
	                                            <label for="gotra1" class="col-md-4 control-label">Gotra</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="gotra" id="gotra1" placeholder="Gotra" /> </div>
	                                </div>
	                                </div>
	                                <div class="col-md-6 col-sm-12">
	                                <div class="form-group form-c-radios">
                                        <label class="col-md-4 control-label">Manglik</label>
                                        <div class="col-md-6">
                                            <div class="c-radio-inline">
                                                <div class="c-radio">
                                                    <form:radiobutton  id="manglik3" class="c-radio" path="manglik" />
                                                    <label for="manglik3">
                                                        <span></span>
                                                        <span class="check"></span>
                                                        <span class="box"></span>Yes</label>
                                                </div>
                                                <div class="c-radio">
                                                    <form:radiobutton id="manglik4" class="c-radio" path="manglik" />
                                                    <label for="manglik4">
                                                        <span></span>
                                                        <span class="check"></span>
                                                        <span class="box"></span>No</label>
                                                </div>
                                            </div>
                                        </div>
                                     </div> 
                                     <div class="form-group">
                                         <label for="prefferedCity" class="col-md-4 control-label">Preffered City</label>
                                         <div class="col-md-6">
                                             <form:input type="text" class="form-control  c-square c-theme" path="prefferedCity" id="prefferedCity" placeholder="Preffered City" /> </div>
                                     </div>
                                     
                                     <div class="form-group form-c-radios">
                                            <label class="col-md-4 control-label">Marital Status</label>
                                            <div class="col-md-6">
                                                <div class="c-radio-inline">
                                                    <div class="c-radio">
                                                        <form:radiobutton  id="radio4-113" class="c-radio" path="maritalStatus" />
                                                        <label for="radio4-113">
                                                            <span></span>
                                                            <span class="check"></span>
                                                            <span class="box"></span>Single</label>
                                                    </div>
                                                    <div class="c-radio">
                                                        <form:radiobutton id="radio5-114" class="c-radio" path="maritalStatus" />
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
	                                                <form:input type="number" class="form-control  c-square c-theme" id="ageFrom" path="ageFrom" placeholder="Age From" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="ageTo" class="col-md-4 control-label">Age To</label>
	                                            <div class="col-md-6">
	                                                <form:input type="number" class="form-control  c-square c-theme" id="ageTo" path="ageTo" placeholder="Age To" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="educationalQualification" class="col-md-4 control-label">Educational Qualification</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="educationalQualification" id="educationalQualification" placeholder="Educational Qualification" /> </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="occupation" class="col-md-4 control-label">Occupation</label>
	                                            <div class="col-md-6">
	                                                <form:input type="text" class="form-control  c-square c-theme" path="occupation" id="occupation" placeholder="Occupation" /> </div>
	                                        </div>
	                                         
                         		</div>
                       
                    </div>
                    </div>
                    <div class="modal-footer">
                    	<input type="submit" value="Submit" class="btn c-btn-dark c-btn-square c-btn-bold c-btn-uppercase" ></input>
                    	
                        <button type="button" class="btn c-btn-dark c-btn-border-2x c-btn-square c-btn-bold c-btn-uppercase" data-dismiss="modal">Close</button>
                    </div>
                   
                </div>
                
            </div>
             
        </div>
         </form:form>
        <!-- BEGIN: PAGE CONTAINER -->
        <div class="c-layout-page">
            <!-- BEGIN: PAGE CONTENT -->
            <!-- BEGIN: LAYOUT/SLIDERS/REVO-SLIDER-7 -->
            <section class="c-layout-revo-slider c-layout-revo-slider-7">
                <div class="tp-banner-container tp-fullscreen tp-fullscreen-mobile">
                    <div class="c-singup-form">
                        <h3 class="c-font-54 c-font-thin c-font-white c-margin-b-40 c-font-uppercase"> We're Here To Find Your
                            <span class="c-theme-font c-font-bold">Match</span> </h3>
                        <!-- <h5 class="c-font-24 c-font-thin c-font-uppercase c-font-white c-subtitle c-margin-b-40"> SIGN UP & GET 90 DAYS FREE ACCESS </h5> -->
                           <c:if
								test="${not empty requestScope.messageToDisplay}">
				                <div class="alert alert-info" role="alert">
				                	${requestScope.messageToDisplay}
				                </div>
			               	 </c:if>
                            <a class="btn btn-lg btn-danger c-btn-uppercase c-btn-square c-btn-bold" href="<c:url value="register" />">Register</a>
                            <a href="#" class="btn btn-lg btn-danger c-btn-uppercase c-btn-square c-btn-bold c-search-toggler" data-toggle="modal" data-target="#search-form">Search</a>
                    </div>
                    <div class="tp-banner rev_slider" data-version="5.0">
                        <ul>
                            <!--BEGIN: SLIDE #1 -->
                            <li data-transition="fade" data-slotamount="1" data-masterspeed="400" data-style="dark">
                                <img alt="" src="assets/base/img/content/backgrounds/mybg1.jpg" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat"> </li>
                            <!--END -->
                            <!--BEGIN: SLIDE #2 -->
                            <li data-transition="fade" data-slotamount="1" data-masterspeed="1000" data-style="dark">
                                <img alt="" src="assets/base/img/content/backgrounds/mybg2.jpg" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat"> </li>
                            <!--END -->
                        </ul>
                    </div>
                </div>
            </section>
            <!-- END: LAYOUT/SLIDERS/REVO-SLIDER-7 -->
            <!-- BEGIN: CONTENT/STEPS/STEPS-1 -->
            <div class="c-content-box c-size-md c-bg-white">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="c-content-title-1 c-margin-b-60">
                                <h3 class="c-center c-font-uppercase c-font-bold">Let's Begin </h3>
                                <div class="c-line-center"></div>
                                <p class="c-center c-font-uppercase c-font-17"> Steps to follow to find your perfect match </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 col-sm-6 wow animate fadeInLeft">
                            <div class="c-content-step-1 c-opt-1">
                                <div class="c-icon">
                                    <span class="c-hr c-hr-first">
                                        <span class="c-content-line-icon c-icon-14 c-theme"></span>
                                    </span>
                                </div>
                                <div class="c-title c-font-20 c-font-bold c-font-uppercase">1. First Important STEP</div>
                                <div class="c-description c-font-17"> Register your self with a descriptive profile </div>
                                <button class="btn c-btn-square c-theme-btn c-btn-border1-2x c-btn-uppercase c-btn-bold">Begin</button>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 wow animate fadeInLeft" data-wow-delay="0.2s">
                            <div class="c-content-step-1 c-opt-1">
                                <div class="c-icon">
                                    <span class="c-hr">
                                        <span class="c-content-line-icon c-icon-21 c-theme"></span>
                                    </span>
                                </div>
                                <div class="c-title c-font-20 c-font-bold c-font-uppercase">2. Second Step</div>
                                <div class="c-description c-font-17"> Find a perfect match by going through profiles </div>
                                <button class="btn c-btn-square c-theme-btn c-btn-uppercase c-btn-bold">Start</button>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-12 wow animate fadeInLeft" data-wow-delay="0.4s">
                            <div class="c-content-step-1 c-opt-1">
                                <div class="c-icon">
                                    <span class="c-hr c-hr-last">
                                        <span class="c-content-line-icon c-icon-32 c-theme"></span>
                                    </span>
                                </div>
                                <div class="c-title c-font-20 c-font-bold c-font-uppercase">3. Final Action</div>
                                <div class="c-description c-font-17"> Resuest for the contact information and interact </div>
                                <button class="btn c-btn-square c-theme-btn c-btn-uppercase c-btn-bold">Connect</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: CONTENT/STEPS/STEPS-1 -->
            
            <!-- BEGIN: CONTENT/TESTIMONIALS/TESTIMONIALS-6-3 -->
            <div class="c-content-box c-size-md c-bg-white">
                <div class="container">
                    <div class="c-content-blog-post-card-1-slider" data-slider="owl" data-items="3" data-auto-play="8000">
                        <div class="c-content-title-1">
                            <h3 class="c-center c-font-uppercase c-font-bold">User Stories</h3>
                            <div class="c-line-center c-theme-bg"></div>
                            <p class="c-center c-font-uppercase1">This is how happy our users are</p>
                        </div>
                        <div class="owl-carousel owl-theme c-theme">
                            <div class="item">
                                <div class="c-content-testimonial-3 c-option-light">
                                    <div class="c-content"> I got an interest in my profile from her. Then I got called by her family. Later on we noticed that we are from same hometown. Its love marriage arranged by you. Thanks </div>
                                    <div class="c-person">
                                        <img src="assets/base/img/content/avatars/team1.jpg" class="img-responsive">
                                        <div class="c-person-detail c-font-uppercase">
                                            <h4 class="c-name">some some</h4>
                                            <p class="c-position c-font-bold c-theme-font">Business Owner</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="c-content-testimonial-3 c-option-light">
                                    <div class="c-content"> My parents were searching a guy for me since 5 years but couldn't get suitable match. They searched everywhere in UP/Delhi/NCR. Then they registered here and started searching my match and got it. Thanks</div>
                                    <div class="c-person">
                                        <img src="assets/base/img/content/avatars/team6.jpg" class="img-responsive">
                                        <div class="c-person-detail c-font-uppercase">
                                            <h4 class="c-name">Test Test</h4>
                                            <p class="c-position c-font-bold c-theme-font">Manager</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="c-content-testimonial-3 c-option-light">
                                    <div class="c-content">"You are mine and I am yours. I love you! " Showered with immense love and blessings, not a single day passes without the quintessential romance in our lives :) Our wonderful journey began here </div>
                                    <div class="c-person">
                                        <img src="assets/base/img/content/avatars/team4.jpg" class="img-responsive">
                                        <div class="c-person-detail c-font-uppercase">
                                            <h4 class="c-name">Nina Kunis</h4>
                                            <p class="c-position c-font-bold c-theme-font">CEO</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="c-content-testimonial-3 c-option-light">
                                    <div class="c-content">Every love story is beautiful but ours is my favorite.Its true marriages are made in heaven,even after being miles apart, Test Test who is now my Husband and I Try Try who is now Try Test </div>
                                    <div class="c-person">
                                        <img src="assets/base/img/content/avatars/team8.jpg" class="img-responsive">
                                        <div class="c-person-detail c-font-uppercase">
                                            <h4 class="c-name">Try Try</h4>
                                            <p class="c-position c-font-bold c-theme-font">CFO</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: CONTENT/TESTIMONIALS/TESTIMONIALS-6-3 -->
            <!-- BEGIN: CONTENT/STATS/COUNTER-4 -->
            <div class="c-content-box c-size-lg c-bg-parallax" style="background-image: url(assets/base/img/content/backgrounds/mybg3.jpg)">
                <div class="container">
                    <div class="c-content-counter-1">
                        <div class="c-content-title-1">
                            <h3 class="c-center c-font-uppercase c-font-white c-font-bold">We proove by numbers</h3>
                            <div class="c-line-center c-bg-white"></div>
                        </div>
                        <div class="row c-margin-t-60">
                            <div class="col-md-4">
                                <div class="c-counter c-font-white c-bordered c-border-red c-font-white" data-counter="counterup">130</div>
                                <h4 class="c-title c-first c-font-white c-font-uppercase c-font-bold">Matches Done</h4>
                                <p class="c-content c-font-white c-opacity-08">Happily getting together...</p>
                            </div>
                            <div class="col-md-4">
                                <div class="c-counter c-font-white c-bordered c-border-blue c-font-white" data-counter="counterup">35,500</div>
                                <h4 class="c-title c-font-white c-font-uppercase c-font-bold">Registered and verified users</h4>
                                <p class="c-content c-font-white c-opacity-08">This is the number of people you can filter</p>
                            </div>
                            <div class="col-md-4">
                                <div class="c-counter c-font-white c-bordered c-border-green c-font-white" data-counter="counterup">101,865</div>
                                <h4 class="c-title c-font-white c-font-uppercase c-font-bold">Site visits</h4>
                                <p class="c-content c-font-white c-opacity-08">Site visited so far and counting</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: CONTENT/STATS/COUNTER-4 -->
            
            <!-- END: PAGE CONTENT -->
        </div>
        <!-- END: PAGE CONTAINER -->