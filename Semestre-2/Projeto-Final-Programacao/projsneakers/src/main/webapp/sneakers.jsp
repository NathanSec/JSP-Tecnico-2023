<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("sneakers");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Sneakers</title>
<link rel="icon" href="">
<link rel="stylesheet" href="Style/catalog 1.css">
</head>
<body>


	<section id="jordan">

		<img src="imagens/banner-nike-jordan.png" id="ban">
		<nav>
			<a href="#" id="log">SNEAKERS</a> <a href="#">Catalog</a> <a href="#">New
				Collection</a> <a href="#">Bestsellers</a>
		</nav>

		<header>
			<h1>AIR JORDAN CATALOG</h1>
		</header>

		<div id="popular-container">
			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img
					src="https://acdn.mitiendanube.com/stores/001/226/115/products/tenis-air-jordan-1-high-og-meant-to-fly-41-97298f3c9a1b6349fa15923997231044-640-0.png"
					alt="Sneaker 1">
				<h2>Air Jordan 1 High OG "Meant to Fly"</h2>
				<p>$150</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img
					src="https://sneakerbardetroit.com/wp-content/uploads/2017/08/air-jordan-2-0-chicago-2011-1.png"
					alt="Sneaker 2">
				<h2>Nike Air Jordan 2.0 Chicago Bulls</h2>
				<p>$120</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img
					src="https://images.tcdn.com.br/img/img_prod/1088654/tenis_air_jordan_3_retro_og_black_cement_1017_2_2f3d0c75d058f5197c7ad80baad18f74.png"
					alt="Sneaker 3">
				<h2>Air Jordan 3 Retro OG "Black Cement"</h2>
				<p>$130</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/air4.png" alt="Sneaker 4">
				<h2>Nike Jordan 4 Retro Fire Red 1.0</h2>
				<p>$110</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/air5.png" alt="Sneaker 4">
				<h2>Air Jordan 5 Retro Alternate Bel-Air</h2>
				<p>$110</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/air5.png" alt="Sneaker 4">
				<h2>Air Jordan 5 Retro Alternate Bel-Air</h2>
				<p>$110</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/air4.png" alt="Sneaker 4">
				<h2>Air Jordan 5 Retro Alternate Bel-Air</h2>
				<p>$110</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/air5.png" alt="Sneaker 4">
				<h2>Air Jordan 5 Retro Alternate Bel-Air</h2>
				<p>$110</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/air4.png" alt="Sneaker 4">
				<h2>Air Jordan 5 Retro Alternate Bel-Air</h2>
				<p>$110</p>
			</div>
		</div>

	</section>


	<img
		src="https://www.footasylum.com/images/articles/LP/Homepage/Q4/Homepage-Banner-AF1React-170120.jpg"
		id="ban">

	<section id="kobe">

		<div id="popular-container"></div>
		<header id="kobban">
			<h1>AIR FORCE CATALOG</h1>
		</header>

		<div id="popular-container">
			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/10.png" alt="Sneaker 1">
				<h2>TÊNIS NIKE AIR FORCE 1 SHADOW</h2>
				<p>$1099</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/2.png" alt="Sneaker 2">
				<h2>TÊNIS NIKE AIR FORCE 1 07 FEM</h2>
				<p>$120</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/3.png" alt="Sneaker 3">
				<h2>TÊNIS NIKE AIR FORCE 1 07 LV8 FEM</h2>
				<p>$899</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/4.png" alt="Sneaker 4">
				<h2>TÊNIS NIKE AIR FORCE 1 SHADOW</h2>
				<p>$899</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/5.png" alt="Sneaker 5">
				<h2>TÊNIS NIKE AIR FORCE 1 LV8 2 GS</h2>
				<p>$749</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/6.png" alt="Sneaker 6">
				<h2>TÊNIS NIKE AIR FORCE 1 07 FEM</h2>
				<p>$899</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/7.png" alt="Sneaker 7">
				<h2>TÊNIS NIKE AIR FORCE 1 SHADOW</h2>
				<p>$1099</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/8.png" alt="Sneaker 8">
				<h2>TÊNIS NIKE AIR FORCE 1 07 FEM</h2>
				<p>$799</p>
			</div>

			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>
				<img src="imagens/9.png" alt="Sneaker 9">
				<h2>Nike Zoom Kobe 6 Protro Grinch</h2>
				<p>$110</p>
			</div>
	</section>

	<img src="imagens/MY COLLECTION.png" id="ban22">


	<section id="mycollect">

		<header id="kobbann">
			<h1>MY COLLECTION</h1>
		</header>


		<div id="glow">
			<div class="circle"></div>
			<div class="circle"></div>
		</div>
		</a>

		<div id="popular-container">
			<%
			for (int i = 0; i < lista.size(); i++) {
				JavaBeans sneaker = lista.get(i);
			%>
			<div class="sneaker">
				<div class="rating">
					<input value="5" name="rating" id="star5" type="radio"> <label
						for="star5"></label> <input value="4" name="rating" id="star4"
						type="radio"> <label for="star4"></label> <input value="3"
						name="rating" id="star3" type="radio"> <label for="star3"></label>
					<input value="2" name="rating" id="star2" type="radio"> <label
						for="star2"></label> <input value="1" name="rating" id="star1"
						type="radio"> <label for="star1"></label>
				</div>

				<h2>

					<%=lista.get(i).getModelo()%></h2>
				<p>
					Collab:
					<%=lista.get(i).getCollab()%></p>
				<p>
					Cor:
					<%=lista.get(i).getCor()%></p>
				<p>
					<img src='<%=sneaker.getImagem()%>' alt='<%=sneaker.getModelo()%>'>
				<div class="options"></div>

				<a id="lap" href="novo.html"><img src="imagens/mais.png"></a>
				<a href="select?id=<%=sneaker.getId()%>" class="Botao1"> <img
					src="imagens/lapis.png" class="lap">

				</a> <a href="javascript: confirmar(<%=sneaker.getId()%>)"
					class="Botao2"> <img src="imagens/lixeira.png" class="lap">
				</a>

			</div>

			<%
			}
			%>

		</div>

		<div class="footer">
			<p>©Sneakers&Footwear</p>
		</div>
		<script src="scripts/confirmador.js"></script>
</body>
</html>