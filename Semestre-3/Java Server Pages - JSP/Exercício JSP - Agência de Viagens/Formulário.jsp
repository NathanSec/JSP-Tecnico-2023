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
<header>
<div class="topo"><h1>Bus Checked</h1>
<img src="images-removebg-preview.png"></div>


</header>
	
	<main>
	
	<div class="caixa">
	<div class="title"><h2>Faça o pré cadastro</h2></div>
	<div class="infoText"><h3>Informe seu nome e idade para prosseguir.</h3></div>
	<div class="form1">
	<form action="Index.jsp" method="post">
		Nome: <input type="text" name="txtNome" value="" size="42" />
		<br>
		Idade: <input type="text" name="txtIdade" value="" size="2" />
		 <br>
		<input type="submit" value="Prosseguir" />
	</form>
	</div>
	
	</div>
	</main>
</body>
</html>