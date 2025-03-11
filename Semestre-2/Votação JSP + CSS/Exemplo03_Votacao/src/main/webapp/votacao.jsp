<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pesquisa de intenção de votos</title>
</head>
<style>
body {
	background-color: #88abc2;
	font-family: arial;
}

main {
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	display: flex;
	flex-direction: column;
}

#box {
	align-itens: center;
	width: 700px;
	text-align:center;
	
}

#sub {
	text-align: center;
}

#titulo {
	color: black;
	text-align: center;
	font-family: impact;
	background-color:white;
}

#resultado {
	background-color: #d0e0eb;
	display: flex;
	flex-direction: column;
	text-align: center;
	width: 700px;
}
#ed{
background-color:#f5f5dc;
color:green;
}

#la {
	background-color: green;
	color: pink;
}

#ky {
	background-color: black;
	color: white;
}
#card{
background-color:#ebf7f8;
}
#le{
	background-color: purple;
	color: yellow;
}
#sub{
background-color:#f0ddbd;
}
</style>
<%-- Aqui estamos declarando os atributos e métodos <%! --%>
<%!public static int cand1 = 0;
	public static int cand2 = 0;
	public static int cand3 = 0;
	public static int cand4 = 0;

	public void addVoto(int op) {
		switch (op) {
		case 1:
			cand1++;
			break;
		case 2:
			cand2++;
			break;
		case 3:
			cand3++;
			break;
		case 4:
			cand4++;
			break;
		}
	}%>

<body>
	<main>
		<%
		String voto = request.getParameter("candidato");
		if (voto == null) {
		%>
		<h1 id="titulo">Pesquisa Eleitoral 2023</h1>
		<div id="card">
			<form action="votacao.jsp" method="post">
				<div id="box">
					<fieldset>
						<h3>Selecione o candidato desejado e clique no botão votar.</h3>
						<input name="candidato" type="radio" value="1" />Giannis Oitentaconto <br />
						<input name="candidato" type="radio" value="2" />Lamelo Ball <br />
						<input name="candidato" type="radio" value="3" />Kyrie Irving <br />
						<input name="candidato" type="radio" value="4" />LeBron James <br />
						<br> <input type="submit" value="votar" />
					</fieldset>
					<br>
				</div>
			</form>
			<%
			} else {
			addVoto(Integer.parseInt(voto));
			}
			%>
			<div id="resultado">
				<h2 id="sub">
					Resultado Parcial da Pesquisa
					</h2>
					<span id="ed"><h4>
							Giannis Oitentaconto
							<%=cand1%>
							votos
						</h4></span> <span id="la"><h4>
							Lamelo Ball
							<%=cand2%>
							votos
						</h4></span> <span id="ky"><h4>
							Kyrie Irving
							<%=cand3%>
							votos
						</h4></span> <span id="le"><h4>
							LeBron James
							<%=cand4%>
							votos
						</h4></span> <a href="votacao.jsp">Voltar para a página de pesquisa</a>
			</div>
		</div>
	</main>
</body>
</html>