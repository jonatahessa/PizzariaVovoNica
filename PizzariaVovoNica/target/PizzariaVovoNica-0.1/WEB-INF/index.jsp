<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.js"></script>
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Caveat|Vast+Shadow" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Baloo+Da" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Jaldi" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
        <link rel="shortcut icon" href="./_imagens/favicon.ico" />
        <title>Pizzaria Vovó Nica</title>
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
                <div id="fachada">
                    <img src="_imagens/FachadaPizzaria.jpg">
                </div>
                <p>Em 1999, Carlos de Toledo Domenico criou a PIZZARIA DOMENICO, unindo a tradição da pizza com a sofisticação informal. E não parou de crescer, evoluir, adotando o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
                <p>A localização tornou-se privilegiada: Haddock Lobo X Alameda Tietê, a porta de entrada dos Jardins. O investimento constante nas instalações, produtos e serviços, faz com que a DOMENICO seja considerada um dos clássicos, na terra das pizzarias.</p>
                <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue: SERVIR PIZZAS COM DEDICAÇÃO, CONHECIMENTO E ALEGRIA.</p>
            </div>

            <div class="sessoes bckgrounded" id="sessaopromocoes">
              <h1 class="titulos">Promoções</h1>
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
              <div class="container-fluid">
              <div class="menu row">

              <div class="menu-category list-group cardapio">
                <h2>Bacon</h2>
                <c:forEach var="bacons" items="${bacon}">
                  <div class="titulopreco">
                    <h3>${bacons.nome}</h3>
                    <p>${bacons.preco}</p>
                  </div>
                  <p class="descricao">${bacons.descricao}</p>
                </c:forEach>
              </div>

              <div class="menu-category list-group cardapio">
                <h2>Calabresa</h2>
                <c:forEach var="calabresas" items="${calabresa}">
                  <div class="titulopreco">
                  <h3>${calabresas.nome}</h3>
                  <p>${calabresas.preco}</p>
                </div>
                  <p class="descricao">${calabresas.descricao}</p>
                </c:forEach>
              </div>

              <div class="menu-category list-group cardapio">
                <h2>Frango</h2>
                <c:forEach var="frangos" items="${frango}">
                  <div class="titulopreco">
                  <h3>${frangos.nome}</h3>
                  <p>${frangos.preco}</p>
                </div>
                  <p class="descricao">${frangos.descricao}</p>
                </c:forEach>
              </div>

              <div class="menu-category list-group cardapio">
                <h2>Lombo</h2>
                <c:forEach var="lombos" items="${lombo}">
                  <div class="titulopreco">
                  <h3>${lombos.nome}</h3>
                  <p>${lombos.preco}</p>
                </div>
                  <p class="descricao">${lombos.descricao}</p>
                </c:forEach>
              </div>

              <div class="menu-category list-group cardapio">
                <h2>Vegetais</h2>
                <c:forEach var="vegeta" items="${vegetais}">
                  <div class="titulopreco">
                    <h3>${vegeta.nome}</h3>
                    <p>${vegeta.preco}</p>
                  </div>
                  <p class="descricao">${vegeta.descricao}</p>
                </c:forEach>
              </div>

              <div class="menu-category list-group cardapio">
                <h2>Frutos do Mar</h2>
                <c:forEach var="fruto" items="${frutos}">
                  <div class="titulopreco">
                  <h3>${fruto.nome}</h3>
                  <p>${fruto.preco}</p>
                </div>
                  <p class="descricao">${fruto.descricao}</p>
                </c:forEach>
              </div>

              <div class="menu-category list-group cardapio">
                <h2>Presunto</h2>
                <c:forEach var="presuntos" items="${presunto}">
                  <div class="titulopreco">
                  <h3>${presuntos.nome}</h3>
                  <p>${presuntos.preco}</p>
                </div>
                  <p class="descricao">${presuntos.descricao}</p>
                </c:forEach>
              </div>

              <div class="menu-category list-group cardapio">
                <h2>Queijo</h2>
                <c:forEach var="queijos" items="${queijo}">
                  <div class="titulopreco">
                  <h3>${queijos.nome}</h3>
                  <p>${queijos.preco}</p>
                </div>
                  <p class="descricao">${queijos.descricao}</p>
                </c:forEach>
              </div>

              <div class="menu-category list-group cardapio">
                <h2>Especiais</h2>
                <c:forEach var="especial" items="${especiais}">
                  <div class="titulopreco">
                  <h3>${especial.nome}</h3>
                  <p>${especial.preco}</p>
                </div>
                  <p class="descricao">${especial.descricao}</p>
                </c:forEach>
              </div>

              <div class="menu-category list-group cardapio">
                <h2>Pizzas Doces</h2>
                <c:forEach var="doce" items="${doces}">
                  <div class="titulopreco">
                  <h3>${doce.nome}</h3>
                  <p>${doce.preco}</p>
                </div>
                  <p class="descricao">${doce.descricao}</p>
                </c:forEach>
              </div>
            </div>
            </div>
            </div>

            <div class="sessoes bckgrounded" id="sessaolocalizacao">
                <h1 class="titulos">Localização</h1>
                <p>Rua Bruno Taut, 29 - Jardim Sônia, São Paulo - SP <br>
                (próximo ao mercado Ideal)</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1826.853938403204!2d-46.667856650364534!3d-23.686402573559015!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x48b2a8004a5c8a52!2sPizzaria+Vovo+Nica!5e0!3m2!1spt-BR!2sbr!4v1506608880678" allowfullscreen></iframe>
              </div>

            <footer id="sessaocontato">
              <div class="sessoes">
                <h1 class="titulos">Contato</h1>
                <hr/>
                <h2><a href="tel:01156150476">5615-0476</a><br/>
                    <a href="tel:01156113365">5611-3365</a><br/>
                    <a href="tel:011986054889">98605-4889 </a><img src="_imagens/whatsapp.png"></h2>
                <p>De Terça à Domingo das 18h às 00h</p>
                <p id="copyright">Copyright (c) Pizzaria Vovó Nica Copyright Holder All Rights Reserved. <br>
                  Developed by Jonata Hessa.</p>
              </div>
            </footer>
        </section>
    </body>
</html>
