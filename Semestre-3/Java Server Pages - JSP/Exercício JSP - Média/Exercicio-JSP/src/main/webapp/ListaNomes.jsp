<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>Lista de Nomes</h1>
	
	<%-- Declaração de uma lista de nomes --%>
	<% 
		java.util.List<String> nomes = new java.util.ArrayList<>();
		nomes.add("João");
		nomes.add("Maria");
		nomes.add("Pedro");
	%>
	<%-- Iterar sobre a lista de nomes e exibir cada nome --%>
	<%for (String nome : nomes) {%>
		<p><%=nome %>
	<% } %>

</body>
</html>