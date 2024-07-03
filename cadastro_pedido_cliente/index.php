<?php
  session_start();
  if(!isset($_SESSION['user']) && !isset($_SESSION['permissao'])) {
    header("Location: http://3.21.113.127/supermercado/login");
  } else {
    // CONCEDE ACESSO A PÁGINA CASO SEJA UM ADMINISTRADOR
    if($_SESSION['permissao'] === 'administrador' || 'almoxarife') { ?>
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
            <title>Novo pedido de cliente</title>
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

            <h1 class="text-center">CADASTRAR PEDIDO DE CLIENTE</h1>

            <!-- INPUT GROUP -->
            <form action="http://3.21.113.127/supermercado/api/api_pedidos_venda.php" method="POST">
                <div class="container border form-cad-pedido-fornecedor">
                    

                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <input type="text" name="cnpj_fornecedor" class="form-control" id="floatingInput" placeholder="CNPJ do Cliente" required>
                            <label for="floatingInput">CNPJ do Cliente</label>
                        </div>
                        <div class="input-group mb-3 mb-3 col-md">
                            <input type="button" onclick="adicionarNovoItem()" class="btn btn-primary" value="Adicionar novo item">
                        </div>
                    </div>

                    <div id="div-container">

                    </div>

                    <input type="submit" class="btn btn-success" value="Fazer pedido">    
                </div>
                <input type="number" value="0" name="qtd_itens" style="visibility: hidden; height: 0px; border: 0px; padding: 0px;" id="qtd_itens">
            </form>

            <!-- Optional JavaScript; choose one of the two! -->

            <!-- Option 1: Bootstrap Bundle with Popper -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
            <script src="http://3.21.113.127/supermercado/scripts/cadastro_pedido_cliente.js"></script>
            <!-- Option 2: Separate Popper and Bootstrap JS -->
            <!--
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
            -->
        </body>

        </html>
    <?php } else {
      header("Location: http://3.21.113.127/supermercado/menu");
    }
  }
?>
