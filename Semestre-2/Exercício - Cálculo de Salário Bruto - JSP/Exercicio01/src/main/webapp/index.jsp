<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cálculo de Salário Líquido</title>
<style>
body{
background-color:#00FFFF;
display:flex;
flex-direction: column;
text-align:center;
}
h1{
color:red;
}
input{
color:white;
background-color:blue;
}

</style>
</head>
<body>
	<h1>Cálculo de Salário Líquido</h1>
	<hr>

	<form action="calculo-salrio.jsp" method="get">
		<label for="salario">Informe o Salário Bruto: </label> <input
			type="number" id="salario" name="salario" step="0.01" required>
		<br>
		<br>
		<input type="submit" value="Calcular Salario">
	</form>
	<img src="https://s2-valor.glbimg.com/gHVipuJRinrLOwSU0-L3fuEunD8=/0x0:3998x2667/888x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_63b422c2caee4269b8b34177e8876b93/internal_photos/bs/2023/8/3/6WI4IYRuGSAe3GkGwJRg/399464075.jpg" alt="image1">
</body>
</html>