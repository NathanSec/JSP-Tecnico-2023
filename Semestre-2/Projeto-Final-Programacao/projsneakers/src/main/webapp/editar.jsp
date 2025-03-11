<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<title>Edição Colecion�vel</title>
<link rel="stylesheet" href="Style/style-editar.css">
</head>

<body>

	<div class="container">
		<div class="form-image">
			<img src="imagens/SNEAKERS (1).png">
		</div>
		<div class="form">
			<div class="form-header">
				<form name="frmSneaker" action="update">
					<div class="form-header">
						<div class="title">
							<h1>
								Atualize o seu <i>SNEAKER</i>
							</h1>
						</div>
						<div class="back-button">
							<button>
								<a href="main">Voltar</a>
							</button>
						</div>
					</div>

					<div class="input-group">
						<div class="input-box">
							<label for="id">ID:</label> <input type="text" name="id" readonly
								value="<%out.print(request.getAttribute("id"));%>">
						</div>
						<div class="input-box">
							<label for="modelo">Modelo:</label> <input type="text"
								name="modelo"
								value="<%out.print(request.getAttribute("modelo"));%>">
						</div>
						<div class="input-box">
							<label for="collab">Collab:</label> <input type="text"
								name="collab"
								value="<%out.print(request.getAttribute("collab"));%>">
						</div>
						<div class="input-box">
							<label for="cor">Cor:</label> <input type="text" name="cor"
								value="<%out.print(request.getAttribute("cor"));%>">
						</div>
						<div class="input-box">
							<label for="img">Imagem:</label> <input type="url" name="imagem"
								value="<%out.print(request.getAttribute("imagem"));%>">
						</div>
					</div>

					<div class="botao">
						<input type="button" value="Salvar" onclick="validar()">
					</div>
				</form>



			</div>
		</div>

		<script src="scripts/validador.js"></script>
</body>

</html>