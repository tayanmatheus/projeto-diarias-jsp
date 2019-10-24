<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro da Diaria</title>
</head>
<body>
<h1>Cadastro de Diaria:</h1>
<form action="verifica.jsp" method="post">
<table>
<tr>
<td>Data saida:</td>
<td><input type="text" name="dataSaida"></td>
</tr>
<tr>
<td>Data Entrada:</td>
<td><input type="text" name="dataEntrada"></td>
</tr>
<tr>
<td>Valor:</td>
<td><input type="text" name="valor"></td>
</tr>
<tr>
<td>Descrição:</td>
<td><textarea name="descricao" roons="5" cols="20">
</textarea><td>
</tr>
<tr>
<td>Cidade:</td>
<td><select name="cidade">
<option value="">Selecionar</option>
<option value="1">Goiânia</option>
<option value="2">Anapolis</option>
<option value="3">Caldas Novas</option>
<option value="4">Pirinopolis</option>
</select></td>
</tr>
<tr>
<td><input type="submit" value="cadastrar"></td>
</tr>
</table>
</form>
</body>
</html>