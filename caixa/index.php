<?php
  session_start();
  if(!isset($_SESSION['user']) && !isset($_SESSION['permissao'])) {
    header("Location: http://3.21.113.127/supermercado/login");
  } else {
    // CONCEDE ACESSO A PÁGINA CASO SEJA UM ADMINISTRADOR
    if($_SESSION['permissao'] === 'caixa' or 'administrador') { ?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <title>Caixa</title>
</head>

<body>
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

  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
        <?php
            if(isset($_GET['erro'])) {
                if($_GET['erro'] === 'not_found') {
                    ?>
                    
                    <div class="alert alert-danger" role="alert">
                      Esse código não existe!
                    </div>
                    <?php
                }
            }
        ?>
        <?php
            if(isset($_GET['preparado'])) {
                if($_GET['preparado'] === '1') {
                    ?>
                    
                    <div class="alert alert-success text-center" role="alert">
                      Pronto para iniciar!
                    </div>
                    <?php
                }
            }
  ?>
          <div class="row mb-2"> 
            
            <div class="col-md-6">
              <form action="http://3.21.113.127/supermercado/api/api_caixa.php" method="POST">
                <input type="text" name="codigo" id="cod_compra" style="display: none;">
                <input type="submit" class="btn btn-secondary btn-block" value="Iniciar">
              </form>

              </div>
              <div class="col-md-6">
                <form action="http://3.21.113.127/supermercado/caixa" method="POST" id="reset_form">
                  <input type="submit" class="btn btn-info btn-block" form="reset_form" value="Limpar tudo">
                </form>
              </div>

          </div>
          <form class="form-inline d-flex justify-content-center" id="form_itens">
            <div class="input-group input-group-lg d-flex">

              <input type="text" autofocus class="form-control form-control-lg" id="inlineFormInputGroup" placeholder="Código" name="lote" required="required" maxlength="7" minlength="7">
              <div class="input-group-append"><button class="btn btn-primary" type="submit"><i class="fa fa-barcode"></i></button></div>
              <?php
                    if(isset($_GET['codigo'])) { ?>
                        <script> 
                        
                            document.getElementById('cod_compra').value = <?php echo $_GET['codigo'] ?>;
                        
                        </script>
                    <?php
                    }
                ?>
                
            </div>
          </form>
          <br>
          <h5 class="text-center border-dark mb-0 border border-bottom-0">VALOR UNITÁRIO</h5>
          <h1 class="display-4 border border-dark text-center" id="vl_unit">-</h1>
          <h5 class="mb-0 text-center border-dark border border-bottom-0">SUBTOTAL</h5>
          <h1 class="display-4 text-center border border-dark" id="subtotal">-</h1>
        </div>
        <div class="col-md-8">
          <div class="table-responsive">
            <table class="table" id="tabela-produtos">
              <thead>
                <tr>
                  <th>CÓDIGO</th>
                  <th>NOME</th>
                  <th>QTD</th>
                  <th>VALOR UN.</th>
                  <th>SUBTOTAL</th>
                </tr>
              </thead>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-0" style="">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h5 class="text-center mb-0 border-dark border border-bottom-0">TECLAS DE ATALHO</h5>
          <h3 class="border border-dark pl-2">N - NOVO PEDIDO<br>B - EDITAR ITEM<br>V - VOLTA ITEM<br>C - FECHAR<br><br></h3>
        </div>
        <div class="col-md-6">
          <h5 class="text-center mb-0 border border-bottom-0 border-dark">TOTAL</h5>
          <h1 class="display-4 text-center border border-dark" id="total_">-</h1>
          <div class="row">
            <div class="col-md-6">
              <h5 class="text-center mb-0 border border-bottom-0 border-dark">RECEBIDO</h5>
              <h1 class="display-4 text-center border border-dark">-</h1>
            </div>
            <div class="col-md-6">
              <h5 class="text-center mb-0 border border-bottom-0 border-dark">TROCO</h5>
              <h1 class="display-4 text-center border border-dark">-</h1>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">

          <form id="finalizar_form">
            <input type="text" name="total" id="total" style="display: none;">
            <input type="submit" class="btn btn-primary btn-block" value="Finalizar">
          </form>

        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script src="http://3.21.113.127/supermercado/scripts/caixa.js"></script>
</body>

</html>
<?php } else {
      header("Location: http://3.21.113.127/supermercado/menu");
    }
  }
?>