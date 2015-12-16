<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<title>Lista Usuários</title>

<!-- variaveis -->
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>

<!-- importando Bootstrat -->
<link
	href="<c:url value="/static/bootstrap-3.3.6-dist/css/bootstrap.min.css" />"
	rel="stylesheet" type="text/css" />
<link
	href="<c:url value="/static/bootstrap-3.3.6-dist/css/bootstrap-theme.min.css" />"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<spring:hasBindErrors name="usuario">
		<ul>
			<c:forEach var="error" items="${errors.allErrors }">
				<li>${error.code }-${error.field}</li>
			</c:forEach>
		</ul>
	</spring:hasBindErrors>
	<br>
	<div align="center">
	<small>
		<div class="panel panel-primary" style="width: 550px" align="left">
			<div class="panel-heading"><h3>Novo Usuário</h3></div>
			<div class="panel-body">
				<form action="saveUsuario" data-toggle="validator" method="post"
					role="form">
					
					<div class="form-group form-group-sm">
						<label for="nome">Nome</label> 
						<input id="nome" type="text" name="nome" class="form-control" required style="width: 500px">
					</div>
					<div class="form-group">
						<label for="email">E-mail</label> 
						<div class="input-group input-group-sm">
							<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-envelope"></span> </span>
							<input id="email" type="email" name="email" class="form-control span2" required style="width: 400px"  aria-describedby="basic-addon1">
						</div>
					</div>
					
  
					
					<div class="form-group form-group-sm">
						<label for="login">Login</label> 
						<input id="login" type="text" name="login" class="form-control" required style="width: 200px">
					</div>
					
					<div class="form-group form-group-sm">
						<label for="pass">Password</label> 
						<input id="password" type="password" name="password" class="form-control" required style="width: 200px">
					</div>
					<hr>
					<div align="right">
						<button type="submit" class="btn btn-primary bt-sm">Cadastrar</button>
					</div>
				</form>
			</div>
		</div>
		</small>
	</div>
	<!-- Bootstrap e jQuery -->
	<script src="${path}/static/jquery/jquery-2.1.4.min.js"></script>
	<script src="${path}/static/bootstrap-3.3.6-dist/js/bootstrap.min.js"></script>


</body>
</html>