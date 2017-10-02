<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link rel="stylesheet" href="./_resources/estiloLogin.css">
    <title>Login</title>
  </head>
  <body>
    <section class="container">
      <div id="principal" class="form-group row">
        <div class="col-xs-12 col-sm-12 col-md-10 col-lg-8 cont">

				<div id="titulo">
					<h1>Manutenção</h1>
        </div>

        <form action="Login" method="post" id="formlogin">
          <div id="username">
            <input class="form-control" type="text" name="user" placeholder="Usuário">
          </div>

          <div id="pass">
            <input class="form-control" type="password" name="senha" placeholder="Senha">
          </div>

          <div id="botao">
            <button id="botaologin" class="btn btn-primary" type="submit" name="login">Entrar</button>
          </div>
        </form>
        </div>
      </div>
      </section>

  </body>
</html>
