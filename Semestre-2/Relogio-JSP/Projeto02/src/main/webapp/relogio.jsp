<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% /* Estamos importando os pacotes necessários 
para o funcionamento do relógio.
O comando <%page import corresponde 
ao import do Java(JSE)
*/%>

<%@page import = "java.util.Date, java.text.SimpleDateFormat" %>
<!DOCTYPE html>

<%! // Aqui estamos DECLARANDO os objetos por isso usamos
private Date hora = new Date();
private SimpleDateFormat f = new SimpleDateFormat("HH:mm:ss");
%>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Relógio</title>
<style type="text/css">
body{
background-color: #FF345F;
display:flex;
flex-direction:column;
text-align:center;

}
h1{
color: #FFFFFF;
}
h1.relogio{
color:#F98776;
}
</style>
</head>
<body>
<%@ include file = "cabecalho.jsp" %>

<h1 class ="relogio"><%= f.format(hora) %></h1>


<%@ include file = "rodape.jsp" %>
</body>
</html>