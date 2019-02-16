<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                	<form:form class="form-horizontal" modelAttribute="expectationBean" action="requestAllDetails">
                	<div class="panel panel-default">
                         <div class="panel-heading">
                             <h3 class="panel-title">SEARCH PROFILES</h3>
                         </div>
                         <div class="panel-body">
                         
                         		<div class="col-md-4 col-sm-12">
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
                                    </div>
                         			<div class="col-md-4 col-sm-12">
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
                                         <label for="prefferedCity" class="col-md-4 control-label">Preferred City</label>
                                         <div class="col-md-6">
                                             <form:input type="text" class="form-control  c-square c-theme" path="prefferedCity" id="prefferedCity" placeholder="Preffered City" /> </div>
                                     </div>
                                      </div>
                         			<div class="col-md-4 col-sm-12">
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
	                                         <div align="center" class="form-group">
	                                         	<input type="submit" value="Submit" class=" btn btn-primary btn-lg" ></input>
	                                         </div>
                         	
                         	
                         </div>
                     </div>
                    <div class="panel panel-default">
                         <div class="panel-heading">
                             <h3 class="panel-title">SEARCH RESULTS</h3>
                         </div>
                         <div class="panel-body">
                         
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                            	<th>Select</th>
												<th>User Id</th>
												<th>DOB</th>
												<th>Height</th>
												<th>Complexion</th>
												<th>Occupation</th>
												<th>Salary</th>
												<th>City</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${expectationBean.searchResultBeanList}" var="search">
                                            <tr>
                                                <th scope="row"><input type="checkbox" name="selectCheck" value="<c:out value="${search.userId}"></c:out>"></th>
                                                <td><u><a href="<c:url value="detailSearch?userid=${search.userId}"></c:url>"><c:out value="${search.userId}"/></a></u></td>
                                                <td>${search.dob }</td>
                                                <td>${search.height }</td>
                                                <td>${search.complexion }</td>
                                                <td>${search.occupation}</td>
                                                <td>${search.salary }</td>
                                                <td>${search.city}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                    <div align="center"  class="form-group">
									<input type="submit" value="Request for Details" name="requestDetails"
										class=" btn btn-primary btn-lg"></input>
								</div>
                                </div>
                            </div>
                        </div>
                    </div>
                     
                </form:form>
                </div>
                </div>
            </div>
            <!-- END: CONTENT/TABS/TAB-3 -->
            <!-- END: PAGE CONTENT -->
        <!-- END: PAGE CONTAINER -->
        
                