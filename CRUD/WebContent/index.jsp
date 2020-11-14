<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meu primeiro sistema CRUD</title>
<link rel="stylesheet" href="resources/css/estilo.css">
</head>
<body>

<div id="login">
  <form action="LoginServlet" method="post" class="login-form">
    <h1>Rafa</h1>
    <input type="text" placeholder="Usuário" id="Login" name="Login">
    <input type="password" placeholder="Senha" id="senha" name="senha">
    <button type="submit" value="Logar">Logar</button>
  </form>
</div>

</body>
</html>