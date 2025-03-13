<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css" />
<meta charset="UTF-8">
<title>Bus Checked</title>
</head>
<body>
	<%
	String nome = request.getParameter("txtNome");
	%>
	<%
	String idade = request.getParameter("txtIdade");
	%>
	<%
	int idadeUser = Integer.parseInt(idade);
	%>

	<%
	if (idadeUser < 12) {
	%>
	<header>
		<h1>Bus Checked</h1>
	</header>

	<main>
		<div class="caixa2">
			<div class="sub">
				<h2>
					Olá
					<%=nome%>.
				</h2>
			</div>
			<h3>
				Verificamos que você(<%=nome%>) não possui idade suficiente para
				viajar sem um responsável.
			</h3>
		</div>
	</main>


	<%
	}
	%>
	<%
	if (idadeUser >= 12 && idadeUser < 16) {
	%>
	<header>
		<h1>Bus Checked</h1>
	</header>

	<main>
		<div class="caixa2">
		<div class="sub">
			<h2>
				Bem-Vindo(a) ao Bus Checked
				<%=nome%>.
			</h2>
			</div>
		
		<h3>Verificamos que você pode viajar, caso esteja acompanhado de
			um maior de idade.</h3>
		</div>
	</main>


	<%
	}
	%>
	<%
	if (idadeUser >= 16) {
	%>
	<header>
		<h1>Bus Checked</h1>
	</header>

	<main>
		<div class="caixa2">
			<div class="sub">
				<h2>
					Bem-Vindo(a) ao Bus Checked
					<%=nome%>.
				</h2>
			</div>
			<h3>Você pode viajar sozinho conosco.</h3>
		</div>
	</main>


	<%
	}
	%>
</body>
</html>
