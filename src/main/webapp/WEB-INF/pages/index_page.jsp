<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html ng-app="limit">
<head>
	<spring:url value="/files/style.css" var="mainCss" />
	<spring:url value="/files/script.js" var="mainJs" />
	<spring:url value="/files/angular.js" var="angularJs" />
	<spring:url value="/files/jquery-2.1.4.min.js" var="jqueryJs" />
	
	<title>Spring MVC - AngularJs</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	<script data-require="jquery@2.1.4" data-semver="2.1.4" src="${jqueryJs}"></script>
  	<script data-require="angular.js@1.3.0" data-semver="1.3.0" src="${angularJs}"></script>
  	<link rel="stylesheet" href="${mainCss}" />
  	<script src="${mainJs}"></script>
</head>
<body ng-controller="example">
  <h2>Infinite Scroll Demo</h2>
  <div id="viewport" buffered-scroll="increaseLimit();" ng-init="limit=15;" >
    <table border=1>
      <thead>
	    <tr>
	      <th>ID</th>
	      <th>Name</th>
	      <th>Email Id</th>
	      <th>Address</th>
	    </tr>
	  </thead>
      <tbody>
        <tr ng-repeat="item in items | limitTo: limit">
          <td>{{item.guid}}</td>
          <td>{{item.name}}</td>
          <td>{{item.email}}</td>
          <td>{{item.address}}</td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>