<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Calcula Média</title>
</head>
<body>
	<%
	java.util.List<Double> nota1 = new java.util.ArrayList<>();
	java.util.List<Double> nota2 = new java.util.ArrayList<>();

	java.util.List<String> nomeAlunos = new java.util.ArrayList<>();

	nomeAlunos.add("Luiza");
	nomeAlunos.add("Maria");
	nomeAlunos.add("Clara");
	nomeAlunos.add("Carla");
	nomeAlunos.add("Carol");
	nomeAlunos.add("Rosana");
	nomeAlunos.add("Laura");
	nomeAlunos.add("Ana");
	nomeAlunos.add("Paula");
	nomeAlunos.add("Larissa");

	for (int i = 0; i < 10; i++) {
		nota1.add(Math.floor(Math.random() * 10));
		nota2.add(Math.floor(Math.random() * 10));
	}
	%>
	<h1>Calculo de média</h1>
	<table>
		<thead>
			<tr>
				<th>Nomes</th>
				<th>Nota 1</th>
				<th>Nota 2</th>
				<th>Média Final</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < 10; i++) {
			%>
			<tr>
				<td><%= nomeAlunos.get(i)%></td>
				<td><%= nota1.get(i) %></td>
				<td><%= nota2.get(i) %></td>
				<td><%= (nota1.get(i)+nota2.get(i))/2 %></td>
			</tr>
			<%} %>
		</tbody>
	</table>
</body>
</html>