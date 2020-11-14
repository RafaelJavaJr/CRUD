<%@page import="bean.BeanUsuario"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/cadastro.css" />
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<title>Cadastro de Usuário</title>
</head>
<body>
	<a href="acessoliberado.jsp"><img alt="Inicio" title="Inicio"
		src="resources/images/home.png" width="50px" height="50px"></a>
	<a href="index.jsp"><img alt="Sair" title="Sair"
		src="resources/images/sair.png" width="50px" height="50px"></a>

	<center>
		<h1>Cadastro de Usuário</h1>
		<h3 style="color: orange">${msg}</h3>
	</center>
	<form action="salvarUsuario" method="post" id="formUser"
		
		enctype="multipart/form-data">
		<ul class="form-style-1">
			<li>
				<table>
					<tr>
						<td>ID:</td>
						<td><input type="text" readonly="readonly" id="id" name="id"
							value="${user.id}" /></td>
					</tr>
					<tr>
						<td>Login:</td>
						<td><input type="text" id="login" name="login"
							value="${user.login}" maxlength="10" /></td>
						<td>Senha:</td>
						<td><input type="password" id="senha" name="senha"
							value="${user.senha}" maxlength="10" /></td>
					
					</tr>
					
					<tr>
						<td></td>
						<td><input type="submit" value="Salvar" style="width: 173px;" /></td>
						<td></td>
						<td>  <input type="submit" style="width: 173px;" value="Cancelar" onclick="document.getElementById('formUser').action = 'salvarUsuario?acao=reset'" /></td>
					</tr>
					
				</table>
			</li>
		</ul>
	</form>

	<form method="post" action="servletPesquisa" style="width: 90%">
		<ul class="form-style-1">
			<li>
				<table>
					<tr>
						<td>Descrição</td>
						<td><input type="text" id="descricaoconsulta"
							name="descricaoconsulta"></td>
						<td><input type="submit" value="Pesquisar"></td>
					</tr>
				</table>
			</li>
		</ul>
	</form>
		<div class="container">
		<table class="responsive-table">
			<caption>Lista de usuários</caption>
			<tr>
				<th>Id</th>				
				<th>Nome</th>
				<th>Delete</th>
				<th>Editar</th>
			</tr>
			<c:forEach items="${usuarios}" var="user">
				<tr>
					<td><c:out value="${user.id}" /></td>
					<td><c:out value="${user.login}" /></td>
					<td><a href="salvarUsuario?acao=delete&user=${user.id}" onclick="return confirm('Confirmar a exclusão?');" ><img src="resources/images/excluir.png" alt="Excluir" title="Excluir" width="32px" height="32px" /></a></td>
					<td><a href="salvarUsuario?acao=editar&user=${user.id}"><img src="resources/images/editar.jpg" alt="Editar" title="Editar" width="32px" height="32px"/></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
</body>
</html>