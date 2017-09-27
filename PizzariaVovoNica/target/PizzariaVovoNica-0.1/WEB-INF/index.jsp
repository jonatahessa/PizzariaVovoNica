<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Caveat|Vast+Shadow" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Baloo+Da" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lusitana" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Jaldi" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
        <link rel="shortcut icon" href="./_imagens/favicon.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <title>Modelo Pizzaria</title>
    </head>
    <body>
        <section id="principal">
            <div id="menu">
                <ul>
                  <li><button type="button" id="buttoncontato">Contato</button></li>
                  <li><button type="button" id="buttonlocalizacao">Localização</button></li>
                  <li><button type="button" id="buttoncardapio">Cardápio</button></li>
                  <li><button type="button" id="buttonpromocoes">Promoções</button></li>
                  <li><button type="button" id="buttonnossacasa">Nossa Casa</button></li>
                  <li><button type="button" id="buttonhome">Home</button></li>
                </ul>
            </div>

            <div id="firstimg">
              <img src="_imagens/logonica.JPG" alt="Logo da pizzaria">
            </div>

            <div class="sessoes bckgrounded" id="nossacasa">
                <h1 class="titulos">Nossa Casa</h1>
                <hr/>
                <div id="fachada">
                    <img src="_imagens/FachadaPizzaria.jpg">
                </div>
                <p>Em 1999, Carlos de Toledo Domenico criou a PIZZARIA DOMENICO, unindo a tradição da pizza com a sofisticação informal. E não parou de crescer, evoluir, adotando o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
                <p>A localização tornou-se privilegiada: Haddock Lobo X Alameda Tietê, a porta de entrada dos Jardins. O investimento constante nas instalações, produtos e serviços, faz com que a DOMENICO seja considerada um dos clássicos, na terra das pizzarias.</p>
                <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue: SERVIR PIZZAS COM DEDICAÇÃO, CONHECIMENTO E ALEGRIA.</p>
            </div>

            <div class="sessoes bckgrounded" id="sessaopromocoes">
              <h1 class="titulos">Promoções</h1>
              <hr/>
              <c:forEach var="promo" items="${promocoes}">
                <div class="paineispromo">
                  <h3>${promo.nome}</h3>
                  <p>${promo.descricao}</p>
                  <p>${promo.preco}</p>
                </div>
              </c:forEach>
            </div>

            <div class="sessoes bckgrounded" id="sessaocardapio">
              <h1 class="titulos">Cardápio</h1>
              <hr/>
              <div class="cardapio">
                <h2>Bacon</h2>
                <c:forEach var="bacon" items="${pizzasBacon}">
                  <h3>${bacon.nome}</h3>
                  <p>${bacon.preco}</p>
                  <p>${bacon.descricao}</p>
                </c:forEach>
              </div>

              <div class="cardapio">
                <h2>Vegetais</h2>
                <c:forEach var="vegetais" items="${pizzasVegetais}">
                  <h3>${vegetais.nome}</h3>
                  <p>${vegetais.preco}</p>
                  <p>${vegetais.descricao}</p>
                </c:forEach>
              </div>

              <div class="cardapio">
                <h2>Queijo</h2>
                <c:forEach var="queijo" items="${pizzasQueijo}">
                  <h3>${queijo.nome}</h3>
                  <p>${queijo.preco}</p>
                  <p>${queijo.descricao}</p>
                </c:forEach>
              </div>

              <div class="cardapio">
                <h2>Calabresa</h2>
                <c:forEach var="calabresa" items="${pizzasCalabresa}">
                  <h3>${calabresa.nome}</h3>
                  <p>${calabresa.preco}</p>
                  <p>${calabresa.descricao}</p>
                </c:forEach>
              </div>

              <div class="cardapio">
                <h2>Frutos do Mar</h2>
                <c:forEach var="frutos" items="${pizzasFrutos}">
                  <h3>${frutos.nome}</h3>
                  <p>${frutos.preco}</p>
                  <p>${frutos.descricao}</p>
                </c:forEach>
              </div>

              <div class="cardapio">
                <h2>Especiais</h2>
                <c:forEach var="especiais" items="${pizzasEspeciais}">
                  <h3>${especiais.nome}</h3>
                  <p>${especiais.preco}</p>
                  <p>${especiais.descricao}</p>
                </c:forEach>
              </div>

              <div class="cardapio">
                <h2>Frango</h2>
                <c:forEach var="frango" items="${pizzasFrango}">
                  <h3>${frango.nome}</h3>
                  <p>${frango.preco}</p>
                  <p>${frango.descricao}</p>
                </c:forEach>
              </div>

              <div class="cardapio">
                <h2>Presunto</h2>
                <c:forEach var="presunto" items="${pizzasPresunto}">
                  <h3>${presunto.nome}</h3>
                  <p>${presunto.preco}</p>
                  <p>${presunto.descricao}</p>
                </c:forEach>
              </div>

              <div class="cardapio">
                <h2>Pizzas Doces</h2>
                <c:forEach var="doces" items="${pizzasDoces}">
                  <h3>${doces.nome}</h3>
                  <p>${doces.preco}</p>
                  <p>${doces.descricao}</p>
                </c:forEach>
              </div>

              <div class="cardapio" id="lombo">
                <h2>Lombo</h2>
                <c:forEach var="lombo" items="${pizzasLombo}">
                  <h3>${lombo.nome}</h3>
                  <p>${lombo.preco}</p>
                  <p>${lombo.descricao}</p>
                </c:forEach>
              </div>
            </div>

            <div class="sessoes bckgrounded" id="sessaolocalizacao">
                <h1 class="titulos">Localização</h1>
                <hr/>
                <p>Rua Gregório Ferreira, 80 - Jardim São Pedro, São Paulo - SP</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d914.2936291120297!2d-46.66651697077578!3d-23.562174899042642!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9709961ca361e7cd!2sMargherita+Pizzeria!5e0!3m2!1spt-BR!2sbr!4v1502195041666" allowfullscreen></iframe>
            </div>

            <footer id="sessaocontato">
              <div class="sessoes">
                <h1 class="titulos">Contato</h1>
                <hr/>
                <h2><a href="tel:01156116122">5611-6122</a><br/>
                    <a href="tel:011983622251">98362-2251 </a><img src="_imagens/whatsapp.png"></h2>
                <p>De Segunda à Quinta e Domingo das 18h às 00h<br/>
                  Sexta e Sábado das 18h às 01h</p>
                <p id="copyright">Copyright (c) Jonata Hessa Copyright Holder All Rights Reserved.</p>
              </div>
            </footer>
        </section>
    </body>
</html>
