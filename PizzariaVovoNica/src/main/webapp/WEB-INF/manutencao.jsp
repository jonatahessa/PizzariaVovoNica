<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="./_resources/estiloManutencao.css">
        <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        <script type="text/javascript" src="./_resources/domManutencao.js"></script>
        <title>Manutenção</title>
    </head>
    <body>
        <section id="sessaoprincipal" class="container-fluid">
          <div class="row">
            <div class="cabecalho">
              <div class="row">
                <div id="titulo" class="col-xs-12 col-sm-12 col-md-10 col-lg-8">
                    <h1>Manutenção</h1>
                </div>
              </div>

                <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                    <div id="logout" class="novo-logout">
                      <form action="Logout" method="post">
                        <button type="submit" name="button"><span class="glyphicon glyphicon-off"></span> Sair</button>
                      </form>
                    </div>

                    <div id="divnovo" class="novo-logout">
                        <button id="novo" type="button" class="btn btn-primary" name="novo">Novo</button>
                    </div>

                  </div>
                </div>
            </div>
          </div>



            <div id="pizzas">

                <table class="table table-striped" id="tabelapizzas">
                    <tr>
                        <th>Código</th>
                        <th>Nome</th>
                        <th>Ingredientes</th>
                        <th>Preço</th>
                        <th>Status</th>
                        <th>Tipo</th>
                        <th>Editar</th>
                        <th>Remover</th>
                    </tr>
                    <c:forEach var="pizzas" items="${sabores}">
                        <tr>
                            <td class="celulas">${pizzas.codigo}</td>
                            <td class="celulas">${pizzas.nome}</td>
                            <td>${pizzas.descricao}</td>
                            <td class="celulas">${pizzas.preco}</td>
                            <td class="celulas">${pizzas.ativo}</td>
                            <td class="celulas">${pizzas.tipo}</td>
                            <td><form action="#" onsubmit="return abrirEditar(this);" method="post">
                                    <input type="hidden" name="codigo" value="${pizzas.codigo}"/>
                                    <input type="hidden" name="nome" value="${pizzas.nome}"/>
                                    <input type="hidden" name="descricao" value="${pizzas.descricao}"/>
                                    <input type="hidden" name="preco" value="${pizzas.preco}"/>
                                    <input type="hidden" name="tipo" value="${pizzas.tipo}"/>
                                    <button type="submit" class="btn btn-warning editar" name="botaoeditar">Editar</button>
                                </form>
                            </td>
                            <c:choose>
                                <c:when test="${pizzas.ativo eq 'SIM'}">
                                    <td><form method="post" action="Remover">
                                            <input type="hidden" name="codigo" value="${pizzas.codigo}"/>
                                            <button type="submit" class="btn btn-danger" name="botaodesativar">Desativar</button>
                                        </form></td>
                                    </c:when>
                                    <c:otherwise><td><form method="post" action="Ativar">
                                            <input type="hidden" name="codigo" value="${pizzas.codigo}"/>
                                            <button type="submit" class="btn btn-success" name="botaoativa">Ativar</button>
                                        </form></td>
                                    </c:otherwise>
                                </c:choose>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </section>

        <section id="janelanovo">
            <form id="formnovo" action="Adicionar" method="post">

                <div id="titulo" class="camposform">
                    <h2>Novo</h2>
                </div>

                <div id="nome" class="form-group camposform">
                    <label for="nome">Nome</label>
                    <input class="form-control inputsnovo" type="text" name="nome"/>
                </div>

                <div id="descricao" class="form-group camposform">
                    <label for="descricao">Descrição</label>
                    <textarea class="form-control inputsnovo" rows="4" name="descricao"></textarea>
                </div>

                <div id="preco" class="form-group camposform">
                    <label for="preco">Preço</label>
                    <input class="form-control inputsnovo" type="text" name="preco"/>
                </div>

                <div id="tipo" class="form-group camposform">
                    <label for="tipo">Tipo</label>
                    <select class="form-control" name="tipo">
                        <option value="BACON">Bacon</option>
                        <option value="CALABRESA">Calabresa</option>
                        <option value="FRANGO">Frango</option>
                        <option value="LOMBO">Lombo</option>
                        <option value="VEGETAIS">Vegetais</option>
                        <option value="FRUTOS">Frutos do Mar</option>
                        <option value="PRESUNTO">Presunto</option>
                        <option value="QUEIJO">Queijo</option>
                        <option value="ESPECIAIS">Especiais</option>
                        <option value="DOCES">Pizzas Doces</option>
                        <option value="PROMOCAO">Promoção</option>
                    </select>
                </div>

                <div id="botoesnovo">
                    <button id="cancelanovo" type="button" class="btn btn-danger" name="button">Cancelar</button>
                    <button id="salvanovo" type="submit" class="btn btn-success" name="button">Salvar</button>
                </div>

            </form>
        </section>

        <section id="janelaeditar">
            <form id="formeditar" action="Editar" method="post">

                <div id="tituloeditar" class="camposform">
                    <h2>Editar</h2>
                </div>

                <div id="codigoeditar" class="form-group camposform">
                    <label for="codigo">Código</label>
                    <input class="form-control inputseditar" type="text" name="codigo" readonly/>
                </div>

                <div id="nomeeditar" class="form-group camposform">
                    <label for="nome">Nome</label>
                    <input class="form-control inputseditar" type="text" name="nome"/>
                </div>

                <div id="descricaoeditar" class="form-group camposform">
                    <label for="descricao">Descrição</label>
                    <textarea class="form-control inputseditar" rows="4" name="descricao"></textarea>
                </div>

                <div id="precoeditar" class="form-group camposform">
                    <label for="preco">Preço</label>
                    <input class="form-control inputseditar" type="text" name="preco"/>
                </div>

                <div id="tipoeditar" class="form-group camposform">
                    <label for="tipo">Tipo</label>
                    <select id="selecteditar" class="form-control" name="tipo">

                    </select>
                </div>

                <div id="botoeseditar">
                    <button id="cancelaeditar" type="button" class="btn btn-danger" name="button">Cancelar</button>
                    <button id="salvaeditar" type="submit" class="btn btn-success" name="button">Salvar</button>
                </div>

            </form>
        </section>

        <div id="nevoa">

        </div>
    </body>
</html>
