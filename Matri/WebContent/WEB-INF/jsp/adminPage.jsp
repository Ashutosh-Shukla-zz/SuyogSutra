<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.matri.bean.AdminProfileReqBean"%>

<!-- BEGIN: PAGE CONTAINER -->
<div class="c-layout-page">
	<!-- BEGIN: LAYOUT/BREADCRUMBS/BREADCRUMBS-1 -->
	<div class="c-layout-breadcrumbs-1 c-fonts-uppercase c-fonts-bold">
		<div class="container">

			<div class="c-page-title c-pull-left">
				<h3 class="c-font-uppercase c-font-sbold">User Details</h3>
			</div>
			<ul
				class="c-page-breadcrumbs c-theme-nav c-pull-right c-fonts-regular">
				<li><a href="#">Components</a></li>
				<li>/</li>
				<li><a href="javascript:;">Jango Components</a></li>
				<li>/</li>
				<li class="c-state_active">Tabbed Contents</li>
			</ul>
		</div>
	</div>
	<!-- END: LAYOUT/BREADCRUMBS/BREADCRUMBS-1 -->
	<!-- BEGIN: PAGE CONTENT -->



	<div class="c-content-box c-size-md">
		<div class="container">
			<div class="panel-body">
				<form:form class="form-horizontal" action="approveRequest">
					<div class="form-group">
						<div class="c-content-panel">
							<div class="c-label">Requests</div>
							<div class="c-body">
								<div class="row">
								<c:if test="${not empty statusMessage }">
									<div class="alert alert-success alert-dismissible" role="alert">${statusMessage }
									
		                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
		                                    <span aria-hidden="true">×</span>
		                                </button>
		                            </div>
		                         </c:if>
									<div class="col-md-12">
										<table class="table table-striped">
                                        <thead>
                                            <tr>
                                            	<th>Select</th>
												<th>User Id</th>
												<th>Profile Requested Id</th>
												<th>Request Status</th>
												<th>Created By</th>
												<th>Created Datetime</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${adminProfileReqBeanList}" var="admin">
                                            <tr>
                                                <th scope="row"><input type="checkbox" name="selectCheck" value="<c:out value="${admin.userId},${admin.profileRequested}"></c:out>"></th>
                                                <td><u><a href="<c:url value="detailSearch?userid=${admin.userId}"></c:url>"><c:out value="${admin.userId}"/></a></u></td>
                                                <td><u><a href="<c:url value="detailSearch?userid=${admin.profileRequested}"></c:url>"><c:out value="${admin.profileRequested}"/></td>
                                                <td>${admin.requestStatus }</td>
                                                <td>${admin.createdBy }</td>
                                                <td>${admin.createdDatetime}</td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
        
									</div>
								</div>
							</div>
						</div>
						<div align="center" class="form-group">
							<input type="submit" value="Approve Requests"
								name="approve" class=" btn btn-primary btn-lg"></input>
						</div>
					</div>
				</form:form>
			</div>
			
			<div class="panel-body">
				<form:form class="form-horizontal" action="approveRequest">
					<div class="form-group">
						<div class="c-content-panel">
							<div class="c-label">Registration Requests</div>
							<div class="c-body">
								<div class="row">
								
									<div class="col-md-12">
										<table class="table table-striped">
                                        <thead>
                                            <tr>
                                            	<th>Select</th>
												<th>User Id</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${userRegistrationList}" var="user">
                                            <tr>
                                                <th scope="row"><input type="checkbox" name="selectRegCheck" value="<c:out value="${user}"></c:out>"></th>
                                                <td><u><a href="<c:url value="detailSearch?userid=${user}"></c:url>"><c:out value="${user}"/></a></u></td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
        
									</div>
								</div>
							</div>
						</div>
						<div align="center" class="form-group">
							<input type="submit" value="Approve Registration Requests"
								name="approve" class=" btn btn-primary btn-lg"></input>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</div>
<!-- END: CONTENT/TABS/TAB-3 -->
<!-- END: PAGE CONTENT -->

<!-- END: PAGE CONTAINER -->

