<%@ page import="be.ucll.demo_week4_FC.domain.model.Dier" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mijn huisdieren</title>
    <link type="text/css" href="style/style.css" rel="stylesheet"/>
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
        <h2>Het meest hongerige dier</h2>

        <p>Het meest hongerige dier is <%= ((Dier) request.getAttribute("meestHongerige")).getNaam() %>.</p>

    </main>
    <footer>
        WebOntwikkeling 2 - 2021-2022
    </footer>
</div>
</body>
</html>