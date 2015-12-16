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
<title>Lista Usuários</title>
</head>
<body>


	<div>${success}</div>
	<br>

	<nav class="navbar" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SG Management</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
			  <li ><a href="/sgmanagement/ola"><span class="glyphicon glyphicon-home"></span> Início</a></li>
				  <li class="dropdown">
				  	<a class="dropdown-toggle" data-toggle="dropdown" href="#">
				  		<span class="glyphicon glyphicon-file"></span> 
				  		Cadastros
				  		<b class="caret"></b>
				  	</a>
				  		<ul class="dropdown-menu">
					  		<li><a href="/sgmanagement/usuarios/form">Usuários</a></li>
					  	</ul>
				  </li>
				  <li class="dropdown">
				  	<a class="dropdown-toggle" data-toggle="dropdown" href="#" >
				  		<span class="glyphicon glyphicon-eye-open"></span> 
				  		Consultas
				  		<b class="caret"></b>
				  	</a>
				  	<ul class="dropdown-menu">
				  		<li><a href="/sgmanagement/usuarios/list">Usuários</a></li>
				  	</ul>
				  </li>
			  <li><a href="#"><span class="glyphicon glyphicon-calendar"></span> Agenda</a></li>
			  <li><a href="#"><span class="glyphicon glyphicon-cog"></span> Adminstração</a></li>
			  <li><a href="#"><span class="glyphicon glyphicon-wrench"></span> Sistema</a></li>
			  
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
	
	
	
	<br>

	<div align="center">
		<div class="panel panel-primary" style="width: 700px" align="center">
			<div class="panel-heading">Lista de Usuários</div>
			<div class="panel-body">
				<table class="table table-hover">
					<tr>
						<td>Código</td>
						<td>Nome</td>
						<td>Login</td>
					</tr>

					<c:forEach items="${listUsuarios}" var="usuario">
						<tr class="${usuario.status}">
							<td>${usuario.codigo }</td>
							<td>${usuario.nome}</td>
							<td>${usuario.login}</td>
						</tr>
					</c:forEach>
				</table>

			</div>
		</div>
	</div>

	<!-- Bootstrap e jQuery -->
	<script src="${path}/static/jquery/jquery-2.1.4.min.js"></script>
	<script src="${path}/static/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>

</body>
</html>