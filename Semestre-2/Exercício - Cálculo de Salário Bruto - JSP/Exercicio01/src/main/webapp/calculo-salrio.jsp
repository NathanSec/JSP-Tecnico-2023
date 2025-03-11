<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado</title>

</head>
<body>

	<%double salario = Double.parseDouble(request.getParameter("salario"));%>


	<%
	double salarioLiquido = 0;
	
	if (salario <= 1659.38) {

		salarioLiquido = salario - (salario * 0.08);
		
	}
	
	
	if ((salario >= 1659.39) && (salario <= 2765.66)) {
		
		salarioLiquido = salario - (salario * 0.09);
	}
	

	
	if ((salario >= 2765.67) && (salario <= 5531.31)) {

		salarioLiquido = salario - (salario * 0.11);

	}
	else if(salario >  5531.31){
		salarioLiquido = salario - 608.45;
	}
	%>


	<p>O seu salário líquido é: R$ <%=salarioLiquido %></p>


	<a href="index.jsp">Voltar</a>
</body>
</html>