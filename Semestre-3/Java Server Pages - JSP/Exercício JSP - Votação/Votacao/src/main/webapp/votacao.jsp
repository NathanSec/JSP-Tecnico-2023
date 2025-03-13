<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv=”Content-Type” content=”text/html; charset="UTF-8">
<title>Votaçao Emerson</title>
<link rel="stylesheet" href="style.css">

<%!
    public static int emesoJake = 0;
	public static int emesoShake = 0;
	
	public void addVoto(int op) {
		switch (op) {
		case 1:
			emesoJake++;
			break;
		case 2:
			emesoShake++;
			break;
		}
	}%>
</head>

<body>

    <% String voto = request.getParameter("Candidato");
       if (voto == null) { %>
        <h1>Pesquisa: Eleições</h1>
        <h3>Selecione o candidato desejado e clique no botão votar.</h3>
        <form action="votacao.jsp" method="get">
            <fieldset>
                <input name="Candidato" type="radio" value="1"/> Emerson Jake <br />
                <input name="Candidato" type="radio" value="2"/> Emerson Shake <br /> 
            </fieldset>
            <input type="submit" value="Votar" />
        </form>

    <% } else {
        addVoto(Integer.parseInt(voto));
    %>

    <div class="result-container">
        <h1>Resultado da Pesquisa</h1>
        
        <div class="container-card">

        <div class="candidato-card">
            <h2>Emerson Shake <%= emesoJake %> votos </h2>
            <img class="candidato-image" src="https://cdn.diariodolitoral.com.br/img/pc/920/610/dn_arquivo/2023/01/whatsapp-image-2023-01-11-at-125107.jpeg" alt="Emerson Shake">
        </div>

        <div class="candidato-card">
            <h2>Emerson Jake <%= emesoShake %> votos </h2>
            <img class="candidato-image" src="https://cdn.gazetasp.com.br/img/pc/920/610/dn_arquivo/2023/01/emerson-shake.jpeg" alt="Emerson Jake">
        </div>

</div>
        <a href="votacao.jsp"> Voltar à página da pesquisa </a>
    </div>

    <% } %>

</body>
</html>