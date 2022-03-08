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
        <h2>Zoekresultaat</h2>
        <% if (request.getAttribute("dier")!=null) {%>
        <p>We vonden volgend dier met naam <%= request.getParameter("naam")%>:</p>
        <% Dier gevonden = (Dier) request.getAttribute("dier");%>
        <ul>
            <li>Naam: <%= gevonden.getNaam()%></li>
            <li>Soort:<%= gevonden.getSoort()%></li>
            <li>Aantal keer eten per dag: <%= gevonden.getVoedsel()%></li>
        </ul>

        <%}
else {%>
        <p>Helaas, we konden geen dier met naam <%= request.getParameter("naam")%> vinden. </p>
        <%}%>
    </main>
    <footer>
        WebOntwikkeling 2 - 2021-2022
    </footer>
</div>
</body>
</html>