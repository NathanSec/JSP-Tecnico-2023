<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado da tabela</title>
</head>
<body>
		<%
		int multiplicador = Integer.parseInt(request.getParameter("mult"));
		int resultado1 = multiplicador*1;
		int resultado2 = multiplicador*2;
		int resultado3 = multiplicador*3;
		int resultado4 = multiplicador*4;
		int resultado5 = multiplicador*5;
		int resultado6 = multiplicador*6;
		int resultado7 = multiplicador*7;
		int resultado8 = multiplicador*8;
		int resultado9 = multiplicador*9;
		int resultadoX = multiplicador*10;
		%>
<ul>
		<li><%=multiplicador %> x 1  =	<%=resultado1 %></li>
		<li><%=multiplicador %> x 2  =	<%=resultado2 %></li>
		<li><%=multiplicador %> x 3  =	<%=resultado3 %></li>
		<li><%=multiplicador %> x 4  =	<%=resultado4 %></li>
		<li><%=multiplicador %> x 5  =	<%=resultado5 %></li>
		<li><%=multiplicador %> x 6  =	<%=resultado6 %></li>
		<li><%=multiplicador %> x 7  =	<%=resultado7 %></li>
		<li><%=multiplicador %> x 8  =	<%=resultado8 %></li>
		<li><%=multiplicador %> x 9  =	<%=resultado9 %></li>
		<li><%=multiplicador %> x 10 =	<%=resultadoX %></li>

</ul>
<a href="TabelaMultiplicacao.jsp">Voltar Para a tela incial</a>
		
		


</body>
</html>