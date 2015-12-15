<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<title>Lista Usuários</title>
</head>
<body>
	<spring:hasBindErrors name="usuario">
		<ul>
			<c:forEach var="error" items="${errors.allErrors }">
				<li>${error.code }-${error.field}</li>
			</c:forEach>
		</ul>
	</spring:hasBindErrors>

	<form:form action="saveUsuario" method="post" commandName="usuario">

		<div>
			<label for="codigo">Codigo: </label>
			<form:input path="codigo" />
			<form:errors path="codigo" />
		</div>
		<div>
			<label for="nome">Nome: </label>
			<form:input path="nome" />
			<form:errors path="nome" />
		</div>
		<div>
			<label for="login">Login: </label>
			<form:input path="login" />
			<form:errors path="login" />
		</div>
		<div>
			<label for="password">Password: </label>
			<form:input path="password" />
			<form:errors path="password" />
		</div>
		<div>
			<input type="submit" value="Cadastrar" />
		</div>
	</form:form>

</body>
</html>