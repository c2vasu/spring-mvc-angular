<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%-- HEAD INCLUDE--%>
<%@include file="fragments/PlHeadFragment.jsp"  %>
<%-- /HEADER INCLUDE--%>

	<body data-controller="error-page" data-action="render" data-lang="${sessionScope.preference.language}" >
		
		<%-- no header --%>
		
		<%-- no progress bar --%>
		
		<!-- CONTENT -->			
		<jsp:include page="fragments/error_fragment.jsp">
   			<jsp:param name="policy_array" value="policy_array"/>
		</jsp:include>
		<!-- /CONTENT -->
			
        <%-- no footer --%>
				
		<%-- no libraries --%>		

	</body>

</html>
