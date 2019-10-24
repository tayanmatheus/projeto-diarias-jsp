<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
String dataSaida = (String) request.getAttribute("dataSaidaParam");
String dataEntrada = (String) request.getAttribute("dataEntradaParam");
String valor = (String) request.getAttribute("valorParam");
String descricao = (String) request.getAttribute("descricaoParam");
String cidade = (String) request.getAttribute("cidadeParam");
Double valorComDesconto = (Double) request.getAttribute("valorComDesconto");

%>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Resultado:</h1>
<h2>Data de Saida: <%=dataSaida %></h2>
<h2>Data de Entrada: <%=dataEntrada %></h2>
<h2>Valor Total: <%=valor %></h2>
<%if (cidade.equals("Goiania")) { %>
	<h2>Valor para Goiânia <%=valorComDesconto %></h2>
	<% }%>
<%if (cidade.equals("Anapolis")) { %>
	<h2>Valor para Anapolis <%=valorComDesconto %></h2>
	<% }%>	
<%if (cidade.equals("Caldas Novas")) { %>
	<h2>Valor para Caldas Novas <%=valorComDesconto %></h2>
	<% }%>	
<%if (cidade.equals("Pirinopolis")) { %>
	<h2>Valor para Pirinopolis <%=valorComDesconto %></h2>
	<% }%>	
<h2>Descrição: <%=descricao %></h2>	
<h2>Cidade: <%=cidade %></h2>	

</body>
</html>