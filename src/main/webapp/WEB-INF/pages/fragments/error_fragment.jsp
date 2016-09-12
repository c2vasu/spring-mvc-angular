<%@ page language="java"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="custCareNum" scope="session" value="${sessionScope.preference.customerCarePhone}" />
<spring:message code="cust.claims.number.${state}" var="custClaimsNum" text=""/>
<div class="container">
    <div class="row header">
        <div class="col-xs-6 col-sm-4">
            <a href="/" class="logo">Sample Spring MVC and AngularJS</a>
        </div>
        <div class="col-xs-6 col-sm-8">
            &nbsp;
        </div>
    </div>

    <div class="row">

        <div class="col-md-12 col-sm-12 centered-box">

                <div class="row l-rounded-box ">
                    <section class="box-msg-error">
                        <div class="col-md-12 ">
                            <h4>
                            	<c:choose>
                            		<c:when test="${empty quoteId}">
                            			<spring:message code="GENERIC.ERROR.NO.QUOTE" />
                            		</c:when>
                            		<c:otherwise>
                            			<spring:message code="GENERIC.ERROR" arguments="${quoteId}"/>
                            		</c:otherwise>
                            	</c:choose>
                            </h4>
                        </div>
                    </section>
                </div>
                <div class="row l-rounded-box">
                    <section class="box-msg-error" >

                        <div class="col-md-12 ">
                            <div class="row">
                                <div class="col-md-6">
                                    <h4><spring:message code="${state}.name" text=""/></h4>
                                </div>
                                <div class="col-md-6">
                                    <h4><spring:message code="cust.service.hours.title" /></h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 ">

                            <div class="row">
                                <div class="col-md-6 col-sm-6" >
                                       <a href="tel:${custCareNum}"><i class="fa fa-phone fa-2x"></i><p>${custCareNum}</p></a>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <ul class="ul-err-msg">
                                        <li><spring:message code="cust.care.hours.${state}" text=""/></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6" >
                                    <a href="tel:${custClaimsNum}"><i class="fa fa-phone fa-2x"></i><p><spring:message code="cust.claims.text.number.${state}" text=""/></p> </a>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <ul class="ul-err-msg">
                                        <li><spring:message code="cust.care.hours.${state}" text=""/></li>

                                    </ul>
                                </div>
                            </div>


                        </div>

                    </section>
                </div>
        </div>

    </div>

</div>