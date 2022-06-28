<?php
  session_start();
  if(!isset($_SESSION['user']) && !isset($_SESSION['permissao'])) {
    header("Location: http://localhost/supermercado/login");
  } else {
    // CONCEDE ACESSO A PÁGINA CASO SEJA UM ADMINISTRADOR OU ALMOXARIFE
    if($_SESSION['permissao'] === 'administrador' || 'almoxarife') { ?>
        <!doctype html>
        <html lang="pt-br">
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
            <link href="http://localhost/supermercado/css/estilo.css" rel="stylesheet" crossorigin="anonymous"> 
            <title>Cadastrar fornecedor</title>
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
            <br>
            <h1 class="text-center">CADASTRAR FORNECEDOR</h1>
            <!-- INPUT GROUP -->
            <form method="POST" action="http://localhost/supermercado/api/api_fornecedores.php">

                <div class="container border form-cad-prod">
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
                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <input type="text" name="cnpj" class="form-control" id="cnpj" placeholder="CNPJ" required>
                            <label for="cnpj">CNPJ</label>

                        </div>
                        <div class="form-floating mb-3 col-md">
                            <input type="text" name="razao_social" class="form-control" id="floatingInput" placeholder="Razão social">
                            <label for="floatingInput">Razão Social</label>
                        </div>
                    </div>

                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <input type="text" name="representante" class="form-control" id="floatingInput" placeholder="Nome do representante" required>
                            <label for="floatingSelect">Nome do representante</label>
                        </div>
                        <div class="form-floating mb-3 col-md">
                            <input type="tel" name="telefone" class="form-control" id="floatingInput" placeholder="Telefone" required>
                            <label for="floatingSelect">Telefone</label>
                        </div>
                    </div>
                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <input type="text" name="cep" class="form-control" id="floatingInput" placeholder="CEP" required>
                            <label for="floatingInput">CEP</label>
                        </div>
                        <div class="form-floating mb-3 col-md">
                            <input type="text" name="numero" class="form-control" id="floatingInput" placeholder="Número" required>
                            <label for="floatingInput">Número</label>
                        </div>
                        <div class="form-floating mb-3 col-md">
                            <input type="email" name="email" class="form-control" id="floatingInput" placeholder="E-mail" required>
                            <label for="floatingInput">E-mail</label>
                        </div>
                    </div>
                    <div class="row g-2">
                        <div id="categorias-select" class="form-floating mb-3 col-md">
                            <select class="form-select" id="floatingSelect">
                                <option selected>Selecione...</option>
                                <option value="Carnes e miudezas, comestíveis">Carnes e miudezas, comestíveis</option>
                                <option value="Peixes e crustáceos">Peixes e crustáceos</option>
                                <option value="Leite e laticínios">Leite e laticínios</option>
                                <option value="Plantas vivas e produtos de floricultura">Plantas vivas e produtos de floricultura</option>
                                <option value="Produtos hortícolas, plantas, raízes e tubérculos, comestíveis">Produtos hortícolas, plantas, raízes e tubérculos, comestíveis</option>
                                <option value="Frutas">Frutas</option>
                                <option value="Café, chá, mate e especiarias">Café, chá, mate e especiarias</option>
                                <option value="Cereais">Cereais</option>
                                <option value="Produtos da indústria">Produtos da indústria</option>
                                <option value="Gorduras e óleos animais ou vegetais">Gorduras e óleos animais ou vegetais</option>
                                <option value="Açúcares e produtos de confeitaria">Açúcares e produtos de confeitaria</option>
                                <option value="Produtos farmacêuticos">Produtos farmacêuticos</option>
                                <option value="Adubos ou fertilizantes">Adubos ou fertilizantes</option>
                                <option value="Madeira, carvão vegetal e obras de madeira">Madeira, carvão vegetal e obras de madeira</option>
                                <option value="Brinquedos, jogos">Brinquedos, jogos</option>
                                <option value="Esporte">Esporte</option>
                            </select>
                            <label for="floatingSelect">Gêneros</label>
                        </div>
                        
                        <div class="form-floating mb-3 col-md">        
                            <div class="border" style="height:auto; border-radius: 5px; padding: 5px;">
                                <h5 id="generos-box">

                                </h5>
                            </div>
                        </div>
                    </div>
                    <div class="text-end">
                        <textarea name="generos" id="genero" style="visibility: hidden; height: 0px; border: 0px; padding: 0px;"></textarea>
                        <input type="submit" class="btn btn-success" value="Salvar">
                    </div>

                </div>

            </form>   

            <!-- Optional JavaScript; choose one of the two! -->

            <!-- Option 1: Bootstrap Bundle with Popper -->
            <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->

            <!-- Option 2: Separate Popper and Bootstrap JS -->
            
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
            <script src="http://localhost/supermercado/scripts/cadastro_fornecedor.js"></script>
            

        </body>
        </html>
    <?php } else {
      header("Location: http://localhost/supermercado/menu");
    }
  }
?>