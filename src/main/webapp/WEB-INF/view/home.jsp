<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>*REDACTED* Company Home Page</title>
</head>


<body>
	<h2>*REDACTED* Company Home Page</h2>
	<hr>
	
	<p>
	Welcome to *REDACTED* home page. 
	</p>
	
		User: <security:authentication property="principal.username" />
		<br><br>
		Role(s): <security:authentication property="principal.authorities" />
	
	<hr>
	
	<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath}/management">Management Page</a>
		</p>
	</security:authorize>
		
	<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems">Admin Dashboard</a>
		</p>
	</security:authorize>
	
	<hr>
	
	<form:form action="${pageContext.request.contextPath}/logout"
			   method="POST">
			   
		<input style="submit" value="logout" />
	
	</form:form>
	
</body>

</html>