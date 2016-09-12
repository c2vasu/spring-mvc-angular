<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="analyticsPreference" value="${sessionScope.preference}" scope="session" />
<c:set var="ver" value="${util.propertyVer}" scope="session" />
<c:set var="satelliteLib" value="${util.analyticsSatelliteLibUrl}" scope="session" />
<script src="${satelliteLib}"></script>


<script type="text/javascript">
var dtmQuote = {
  'pageinfo' : {
	  'page_name'  			: '${analyticsPreference.pageName}',
		'channel'   			: '${analyticsPreference.product} quote',
		'breadcrumb'			: '${analyticsPreference.breadcrumb}',
		'language'  			: '${analyticsPreference.language}',
		'region'    			: 'on', 
		'appname'   			: 'giquote',
		'groupnumber'			: '${analyticsPreference.groupNumber}',
		'groupflag'				: 'n'
	},

	'quotejourney'	: {
		  'producttype'			: '${analyticsPreference.product}',
		  'formname'			: '${analyticsPreference.pageForm}',
		  'step'				: '${analyticsPreference.step}',
		  'kickoutcode'			: '${analyticsPreference.kickoutCode}',
		  'lastfieldupdated'	: '${analyticsPreference.lastFiledUpdated}',
		  'errorlist'			: '${analyticsPreference.errorList}',
		  'error_count'			: '${analyticsPreference.errorCount}',
		  'pagemodified'		: '${analyticsPreference.pageModified}',
		  'car_make'			: '${analyticsPreference.carMake}',
		  'car_model'			: '${analyticsPreference.carModel}',
		  'car_year'			: '${analyticsPreference.carYear}',
	},
  	
  	'quotedetails'	: {
		  'transactionid'		: '${analyticsPreference.transactionId}',
		  'quoteid'				: '${analyticsPreference.quoteID}',
		  'vehiclecount'		: '${analyticsPreference.vehiclesCount}',
		  'drivercount'			: '${analyticsPreference.driversCount}',
		  'postalcode'			: '${analyticsPreference.postalcode}',
		  'quotepremium'		: '${analyticsPreference.annualPremium}',
		  'quotestarttime'		: '${analyticsPreference.quoteStartTime}',
		  'quoteendtime'		: '${analyticsPreference.quoteEndTime}',
		  'gender'				: '${analyticsPreference.gender}',
		  'dateofbirth'			: '${analyticsPreference.dateOfBirthOfPrimaryDriver}',
		  'age'					: '${analyticsPreference.age}',
		  'timestamp'			: '${analyticsPreference.pageLoadTimestamp}',
		  'car_make'			: '${analyticsPreference.carMake}',
		  'car_model'			: '${analyticsPreference.carModel}',
		  'car_year'			: '${analyticsPreference.carYear}',
		  'vehicleuse'			: '${analyticsPreference.vehicleUse}',
		  'phone'				: '${analyticsPreference.phoneNumber}',
		  'driversages'			: '${analyticsPreference.driversAge}',
		  'dwellingyear'		: '${analyticsPreference.dwellingYear}',
		  'heatingtype'			: '${analyticsPreference.heatingType}',
		  'contentsvalue'		: '${analyticsPreference.contentsValue}',
		  'materialtype'		: '${analyticsPreference.materialType}'
	  	}
};
</Script>
