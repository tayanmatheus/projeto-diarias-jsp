<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
	String mensagem = (String) request.getAttribute("mensagemParam");
%>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Erro</h1>
<h2><%=mensagem %></h2>
<a href="cadastroDiarias.jsp">Voltar Para o Cadastro</a>
</body>
</html>