<?php
  session_start();
  if(!isset($_SESSION['user']) && !isset($_SESSION['permissao'])) {
    header("Location: http://3.21.113.127/supermercado/login");
  } else {
    // CONCEDE ACESSO A PÁGINA CASO SEJA UM ADMINISTRADOR
    if($_SESSION['permissao'] === 'administrador') { ?>
      <!doctype html>
      <html lang="pt-br">
        <head>
          <!-- Required meta tags -->
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">

          <!-- Bootstrap CSS -->
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
          <link href="http://3.21.113.127/supermercado/css/estilo.css" rel="stylesheet" crossorigin="anonymous">
          <title>Consultar Fornecedores</title>
        </head>
        <body>

          <!-- NAV BAR -->
          
          <nav class="navbar navbar-dark bg-dark">
            <div class="container d-flex justify-content-center"> <a class="navbar-brand" href="http://3.21.113.127/supermercado/menu/">
              <i class="fa d-inline fa-lg fa-circle-o"></i>
              <b> MERCADO FICTÍCIO</b></a> 
              </a>
              <a class="navbar-brand" href="#">
              <?php echo $_SESSION['user']; ?>
              <i class="fa fa-user" aria-hidden="true"></i>
              </a>
            <a class="navbar-brand" href="http://3.21.113.127/supermercado/efetuar_logout.php"><i class="fa fa-sign-out" aria-hidden="true"></i></i></a>
            </div>
          </nav>
          <br>


          <div class="d-flex form-filtrar-user">
            <input type="search" onkeyup="searchFields()" id="barraDePesquisaUsuario" class="form-control form-filtrar-user-campos" style="width: 20%;" placeholder="Pesquisar">
          </div>

          <div class="d-flex form-filtrar-user">

          </div>

          <!-- TABLE -->
          <table class="table table-responsive table-hover" id="tabela-user">
          <!-- THEAD -->
            <thead class="table-dark">
              <tr>
                <th>#</th>

                <th>Nome</th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
              </tr>
            </thead>
            <!-- TBODYS -->


          </table>
          <!-- Button trigger modal -->


      <!-- Modal -->

          <!-- Optional JavaScript; choose one of the two! -->

          <!-- Option 1: Bootstrap Bundle with Popper -->
          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
          <script src="http://3.21.113.127/supermercado/scripts/consultar_fornecedor.js"></script>
          
        </body>
      </html>
    <?php } else {
      header("Location: http://3.21.113.127/supermercado/menu");
    }
  }
?>