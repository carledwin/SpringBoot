<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!-- variaveis -->
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<!-- importando Bootstrat -->
<link
	href="<c:url value="/static/bootstrap-3.3.6-dist/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/static/bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" />"
	rel="stylesheet" type="text/css" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>
	<br>
	<ul class="nav nav-pills">
		<li class="active"><a href="#">Home</a></li>
		<li><a href="/sgmanagement/usuarios/form">Menu 1</a></li>
		<li><a href="#">Menu 2</a></li>
		<li><a href="#">Menu 3</a></li>
	</ul>
	<br>
	<!-- Bootstrap e jQuery -->
	<script src="${path}/static/jquery/jquery-2.1.4.min.js"></script>
	<script src="${path}/static/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>

</body>
</html>