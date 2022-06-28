<?php
  session_start();
  if(!isset($_SESSION['user']) && !isset($_SESSION['permissao'])) {
    header("Location: http://localhost/supermercado/login");
  } else {
    // CONCEDE ACESSO A PÁGINA CASO SEJA UM ADMINISTRADOR
    if($_SESSION['permissao'] === 'administrador') { ?>
      <!DOCTYPE html>
      <html lang="pt-br">
      <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
          <link href="http://localhost/supermercado/css/estilo.css" rel="stylesheet" crossorigin="anonymous">
          <title>Cadastro de clientes</title>
      </head>
      <body>
        <!-- NAV BAR -->  
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
        
        <!-- INPUT GROUP -->
        <br>
        <h1 class="text-center">CADASTRAR CLIENTES</h1> 
      
        <form method="POST" action="http://localhost/supermercado/api/api_clientes.php">
      
          <div class="container border form-cad-user">
          
          <?php
          if(isset($_GET['resultado'])) {
            if($_GET['resultado'] === 'sucesso') { ?>
            <div class="alert alert-success" role="alert">
              Cadastrado com sucesso.
            </div>
            <?php } ?>
            <?php
            if($_GET['resultado'] === 'erro') { ?>
            <div class="alert alert-danger" role="alert">
              Não foi possível efetuar o cadastro.
            </div>
            <?php }
          } ?>
      
              <div class="form-floating mb-3">
                <input type="text" name="cnpj" class="form-control" id="floatingInput" placeholder="CNPJ" required> 
                <label for="floatingInput">CNPJ</label>
              </div>    
      
              <div class="form-floating mb-3">
                  <input type="text" name="razao_social" class="form-control" id="floatingInput" placeholder="Razao social" required>
                  <label for="floatingInput">Razão social</label>
              </div> 
              
              <div class="form-floating mb-3">
                  <input type="text" name="nm_representante" class="form-control" id="floatingInput" placeholder="Nome do representante" required>
                  <label for="floatingInput">Nome do representante</label>
              </div> 
              
              <div class="form-floating mb-3">
                <input type="text" name="cep" class="form-control" id="floatingInput" placeholder="CEP" required>
                <label for="floatingInput">CEP</label>
              </div> 
              
              <div class="form-floating mb-3">
                <input type="text" name="numero" class="form-control" id="floatingInput" placeholder="Nº endereço" required>
                <label for="floatingInput">Nº endereço</label>
              </div> 
      
              <div class="form-floating mb-3">
                  <input type="text" name="telefone" class="form-control" id="floatingInput" placeholder="Telefone" required>
                  <label for="floatingInput">Telefone</label>
              </div> 
      
              <div class="form-floating mb-3">
                  <input type="text" name="email" class="form-control" id="floatingInput" placeholder="Email" required>
                  <label for="floatingInput">Email</label>
              </div> 
            <div class="">
              <input type="submit" class="btn btn-success" value="CADASTRAR">
      
            </div>
          </div>
        </form>   
      </body>
      </html>
    <?php } else {
      header("Location: http://localhost/supermercado/menu");
    }
  }
?>