<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--To get the static files context --%>

<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="description" content=""/>
	<meta name="viewport"
		content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
	<meta name="description"
		content="Sample Spring MVC and AngularJS"/>
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
	
	<%-- Analytics --%>
	<%@include file="PlAnalyticsFragment.jsp" %>
	
	<link rel="shortcut icon" href="${resources}images/favicon/favicon.ico"
		type="image/x-icon" />
	<link rel="apple-touch-icon" sizes="57x57"
		href="${resources}images/favicon/apple-touch-icon-57x57.png?${ver}" />
	<link rel="apple-touch-icon" sizes="60x60"
		href="${resources}images/favicon/apple-touch-icon-60x60.png?${ver}" />
	<link rel="apple-touch-icon" sizes="72x72"
		href="${resources}images/favicon/apple-touch-icon-72x72.png?${ver}" />
	<link rel="apple-touch-icon" sizes="76x76"
		href="${resources}images/favicon/apple-touch-icon-76x76.png?${ver}" />
	<link rel="apple-touch-icon" sizes="114x114"
		href="${resources}images/favicon/apple-touch-icon-114x114.png?${ver}" />
	<link rel="apple-touch-icon" sizes="120x120"
		href="${resources}images/favicon/apple-touch-icon-120x120.png?${ver}" />
	<link rel="apple-touch-icon" sizes="144x144"
		href="${resources}images/favicon/apple-touch-icon-144x144.png?${ver}" />
	<link rel="apple-touch-icon" sizes="152x152"
		href="${resources}images/favicon/apple-touch-icon-152x152.png?${ver}" />
	<link rel="apple-touch-icon" sizes="180x180"
		href="${resources}images/favicon/apple-touch-icon-180x180.png?${ver}" />
	<link rel="icon" type="image/png"
		href="${resources}images/favicon/favicon-16x16.png?${ver}"
		sizes="16x16"/>
	<link rel="icon" type="image/png"
		href="${resources}images/favicon/favicon-32x32.png?${ver}"
		sizes="32x32"/>
	<link rel="icon" type="image/png"
		href="${resources}images/favicon/favicon-96x96.png?${ver}"
		sizes="96x96"/>
	<link rel="icon" type="image/png"
		href="${resources}images/favicon/android-chrome-192x192.png?${ver}"
		sizes="192x192"/>
	<meta name="msapplication-square70x70logo"
		content="${resources}images/favicon/smalltile.png?${ver}"/>
	<meta name="msapplication-square150x150logo"
		content="${resources}images/favicon/mediumtile.png?${ver}"/>
	<meta name="msapplication-wide310x150logo"
		content="${resources}images/favicon/widetile.png?${ver}"/>
	<meta name="msapplication-square310x310logo"
		content="${resources}images/favicon/largetile.png?${ver}"/>
	<link rel="apple-touch-icon" href="apple-touch-icon.png?${ver}"/>
	
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
			<script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
			<script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
</head>