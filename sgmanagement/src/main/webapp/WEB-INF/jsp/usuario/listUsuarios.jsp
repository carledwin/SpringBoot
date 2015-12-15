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
	

	<div>
		${success}
	</div>

	<ul>
		<li>
			<a href="#">Novo Usuário</a>
		</li>
	</ul>


	<table>
		<tr>
			<td>Código</td>
			<td>Nome</td>
			<td>Login</td>
			<td>Password</td>
		</tr>
		
		<c:forEach items="${usuarios} var="usuario">
			<tr>
				<td><a href="#" >${usuario.login }</a></td>
				<td>${usuario.nome}</td>
				<td>${usuario.login}</td>
			</tr>	
		</c:forEach>
	</table>
	
</body>
</html>