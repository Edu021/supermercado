<?php
  session_start();
  if(!isset($_SESSION['user']) && !isset($_SESSION['permissao'])) {?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <title>Entrar</title>
</head>

<body>
  <nav class="navbar navbar-dark bg-dark">
    <div class="container d-flex justify-content-center"> <a class="navbar-brand" href="#">
        <i class="fa d-inline fa-lg fa-circle-o"></i>
        <b>MERCADO FICTÍCIO</b>
      </a> </div>
  </nav>
  <div class="py-5 text-center" style="">
    <div class="container">
      <div class="row">
        <div class="mx-auto col-md-6 col-10 bg-white p-5">
          <h1 class="mb-4">Entrar</h1>
          <form action="http://3.21.113.127/supermercado/api/api_usuarios.php" method="GET">
            <?php
          if(isset($_GET['resultado'])) {
            if($_GET['resultado'] === 'erro') { ?>
            <div class="alert alert-danger" role="alert">
              Credenciais incorretas.
            </div>
            <?php
            }} ?>
            <div class="form-group"> <input type="text" class="form-control form-control-lg" placeholder="Usuário" id="form9" name="login" required="required"> </div>
            <div class="form-group mb-3"> <input type="password" class="form-control form-control-lg" placeholder="Senha" id="form10" name="senha" required="required"> <small class="form-text text-muted text-right"></small> </div> <button type="submit" class="btn btn-primary btn-lg">Enviar</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>
<?php
  } else {
    header("Location: http://3.21.113.127/supermercado/menu");
  }
?>