<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Atual</title>
</head>
<body>
	<h1>Data Atual</h1>
	<p>
	<%-- Obtém a data atual --%>
	
	
	<% java.util.Date dataAtual = new java.util.Date(); %>
	
	<%-- Formata a data para o formato brasileiro --%>
	<% java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd/MM/yyyy"); %>
	<% String dataFormatada = sdf.format(dataAtual); %>
	
	<%-- Exibe a data formatada --%>
	<p>
		A data atual formatada é:
		<%=dataFormatada %>
	</p>
</body>
</html>