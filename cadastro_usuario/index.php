<?php
  session_start();
  if(!isset($_SESSION['user']) && !isset($_SESSION['permissao'])) {
    header("Location: http://localhost/supermercado/login");
  } else {
    // CONCEDE ACESSO A PÁGINA CASO SEJA UM ADMINISTRADOR
    if($_SESSION['permissao'] === 'administrador') { ?>
      <!doctype html>
      <html lang="pt-br">
        <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
            <link href="http://localhost/supermercado/css/estilo.css" rel="stylesheet" crossorigin="anonymous">
          <title>Cadastro de usuário</title>
        </head>
        <body>   
        <nav class="navbar navbar-dark bg-dark">
            <div class="container d-flex justify-content-center"> <a class="navbar-brand" href="http://localhost/supermercado/menu/">
              <i class="fa d-inline fa-lg fa-circle-o"></i>
              <b> MERCADO FICTÍCIO</b></a> 
              </a>
              <a class="navbar-brand" href="#">
              <?php echo $_SESSION['user']; ?>
              <i class="fa fa-user" aria-hidden="true"></i>
              </a>
            <a class="navbar-brand" href="http://localhost/supermercado/efetuar_logout.php"><i class="fa fa-sign-out" aria-hidden="true"></i></i></a>
            </div>
          </nav>
            <br>

            <h1 class="text-center">Cadastrar usuário</h1>
            
            <!-- INPUT GROUP -->
            <form action="http://localhost/supermercado/api/api_usuarios.php" method="post" id="form1">

              <div class="container border form-cad-user">
              <?php
              if(isset($_GET['resultado'])) {
                if($_GET['resultado'] === 'erro') { ?>
                <div class="alert alert-danger" role="alert">
                  Credenciais incorretas.
                </div>
              <?php
              }} ?>
              <?php
                if(isset($_GET['resultado'])) {
                  if($_GET['resultado'] === 'sucesso') { ?>
                  <div class="alert alert-success" role="alert">
                    Cadastrado com sucesso.
                  </div>
              <?php
              }} ?>
                <div class="form-floating mb-3">
                  <input type="text" name="nm_completo" id="nome" class="form-control" placeholder="Nome completo" required>
                  <label for="floatingInput">Nome completo</label>
                </div>
                      
                <div class="form-floating mb-3">
                  <input type="text" name="nm_usuario" id="usuario" class="form-control" placeholder="Nome de usuário" required>
                  <label for="floatingPassword">Nome de usuário</label>
                </div>
                      
                <div class="form-floating mb-3">
                  <input type="password" name="senha" id="senha" class="form-control" placeholder="Senha" required>
                  <label for="floatingPassword">Senha</label>
                </div>
                      
                <div class="form-floating mb-3">
                  <input type="password" name="confirma_senha" id="confirma_senha" class="form-control" placeholder="Confirmar senha" required>
                  <label for="floatingSelect">Confirmar senha</label>
                </div>
                
                <div class="form-floating mb-3">
                  <select class="form-select" name="permissao" id="permissao" required>
                    <option selected>Selecione...</option>
                    <option value="caixa">Caixa</option>
                    <option value="almoxarife">Almoxarifado</option>
                    <option value="administrador">Administrador</option>
                  </select>
                  <label for="floatingSelect">Permissão de usuário</label>
                </div>

                <div class="">
                  <input type="submit" class="btn btn-success" value="Cadastrar">
                </div>
              </div>

              
            </form>
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
          <script src="http://localhost/supermercado/scripts/cadastro_usuario.js"></script>
        </body>
      </html>
    <?php } else {
      header("Location: http://localhost/supermercado/menu");
    }
  }
?>