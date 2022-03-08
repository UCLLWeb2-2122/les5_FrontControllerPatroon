<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mijn huisdieren</title>
<link type="text/css" href="style/style.css" rel="stylesheet" />
</head>
<body>
	<div id="container">
	<header>
		<h1>
			<img src="img/diertjesDuploKlein.jpg" alt="logo Mijn Huisdieren">
			<span>Mijn huisdieren</span>
		</h1>
		<nav>
			<ul>
				<li><a href="Controller?command=home">Home</a></li>
				<li><a href="Controller?command=zoekFormulier">Zoek</a></li>
				<li><a href="Controller?command=meestHongerige">Meest Hongerige</a></li>
				<li><a href="Controller?command=overview">Overzicht</a></li>
			</ul>
		</nav>
	</header>		
	<main>
		<h2>Bevestiging</h2>
		<p>We hebben het dier met naam <%= request.getParameter("naam") %> voor je opgezocht.</p>
		<p><a href="Controller?command=zoek&naam=<%= request.getParameter("naam") %>">
			Bekijk het resultaat.
		</a></p>
		<p><a href="Controller?command=overview">Cancel</a> indien je niet meer geïnteresseerd bent.</p>
	</main>
	<footer>
		WebOntwikkeling 2 - 2021-2022
	</footer>
	</div>
</body>
</html>