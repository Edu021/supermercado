<?php
  session_start();
  if(!isset($_SESSION['user']) && !isset($_SESSION['permissao'])) {
    header("Location: http://localhost/supermercado/login");
  } else {
    // CONCEDE ACESSO A PÁGINA CASO SEJA UM ADMINISTRADOR
    if($_SESSION['permissao'] === 'administrador' || 'almoxarife') { ?>
        <!doctype html>
        <html lang="pt-br">
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
            <link href="http://localhost/supermercado/css/estilo.css" rel="stylesheet" crossorigin="anonymous">
            <title>Cadastro de produto</title>
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

            <h1 class="text-center">CADASTRAR PRODUTO</h1>
            
            <!-- INPUT GROUP -->
            <form action="http://localhost/supermercado/api/api_estoque.php" method="POST">

                <div class="container border form-cad-prod">
                    <div class="form-floating mb-3 col-md">
                        <input type="text" name="cod_barras" minlength="7" maxlength="7" class="form-control" id="floatingInput" placeholder="Código de barras" required>
                        <label for="floatingInput">Código de barras</label>
                    </div>
                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <input type="text" name="nm_produto" class="form-control" id="floatingInput" placeholder="Nome do produto" required>
                            <label for="floatingInput">Nome do produto</label>
                        </div>

                    </div>
                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <select class="form-select" name="categoria" id="floatingSelect" required>
                                <OPTION VALUE="1">ACHOCOLATADO/BEBIDA LÁCTEA</OPTION>
                                <OPTION VALUE="2">ÁGUA</OPTION>
                                <OPTION VALUE="3">CHÁ PRONTO</OPTION>
                                <OPTION VALUE="4">REFRIGERANTE</OPTION>
                                <OPTION VALUE="5">SUCO</OPTION>
                                <OPTION VALUE="6">CERVEJA</OPTION>
                                <OPTION VALUE="7">DESTILADO</OPTION>
                                <OPTION VALUE="8">VINHO</OPTION>
                                <OPTION VALUE="9">WHISKIE</OPTION>
                                <OPTION VALUE="10">BISCOITO DOCE</OPTION>
                                <OPTION VALUE="11">BISCOITO SALGADO</OPTION>
                                <OPTION VALUE="12">SALGADINHO E SNACK</OPTION>
                                <OPTION VALUE="13">AVE</OPTION>
                                <OPTION VALUE="14">BOVINO</OPTION>
                                <OPTION VALUE="15">PEIXE</OPTION>
                                <OPTION VALUE="16">SUÍNO</OPTION>
                                <OPTION VALUE="17">HAMBÚRGUER</OPTION>
                                <OPTION VALUE="18">PRATO PRONTO</OPTION>
                                <OPTION VALUE="19">SORVETE E SOBREMESA</OPTION>
                                <OPTION VALUE="20">VEGETAL CONGELADO</OPTION>
                                <OPTION VALUE="21">CHOCOLATE</OPTION>
                                <OPTION VALUE="22">DOCE</OPTION>
                                <OPTION VALUE="23">FRUTA EM CALDA</OPTION>
                                <OPTION VALUE="24">PUDIN/GELATINA</OPTION>
                                <OPTION VALUE="25">FERMENTO</OPTION>
                                <OPTION VALUE="26">GRÃOS</OPTION>
                                <OPTION VALUE="27">FRIOS</OPTION>
                                <OPTION VALUE="28">LACTICÍNIO</OPTION>
                                <OPTION VALUE="29">MASSA FRESCA</OPTION>
                                <OPTION VALUE="30">FRUTA</OPTION>
                                <OPTION VALUE="31">FRUTA SECA</OPTION>
                                <OPTION VALUE="32">VERDURA</OPTION>
                                <OPTION VALUE="33">CABELO</OPTION>
                                <OPTION VALUE="34">CORPO</OPTION>
                                <OPTION VALUE="35">HIGIENE</OPTION>
                                <OPTION VALUE="36">HIGIENE BUCAL</OPTION>
                                <OPTION VALUE="37">IOGURTES</OPTION>
                                <OPTION VALUE="38">LEITE EM PÓ</OPTION>
                                <OPTION VALUE="39">LEITES TRADICIONAIS</OPTION>
                                <OPTION VALUE="40">ARROZ</OPTION>
                                <OPTION VALUE="41">FEIJÃO</OPTION>
                                <OPTION VALUE="42">OVOS</OPTION>
                                <OPTION VALUE="43">ÓLEO</OPTION>
                                <OPTION VALUE="44">AÇUCAR</OPTION>
                                <OPTION VALUE="45">FARINHA</OPTION>
                            </select>
                            <label for="floatingSelect">Categoria</label>
                        </div>
                        <div class="input-group mb-3 col-md">
                            <span class="input-group-text">R$</span>
                            <input type="text" name="valor_compra_un" class="form-control" placeholder="Valor de compra" required>
                            <span class="input-group-text">UN.</span>
                        </div>
                    </div>
                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <input type="date" name="dt_validade" class="form-control" id="floatingInput" placeholder="Data de validade" required>
                            <label for="floatingInput">Data de validade</label>
                        </div>
                        <div class="input-group mb-3 col-md">
                            <span class="input-group-text">R$</span>
                            <input type="text" name="valor_venda_atacado_un" class="form-control" placeholder="Valor de atacado" required>
                            <span class="input-group-text">UN.</span>
                        </div>
                    </div>
                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <input type="text" name="qtd_disponivel" class="form-control" id="floatingInput" placeholder="Quantidade disponível" required>
                            <label for="floatingInput">Quantidade disponível</label>
                        </div>
                        <div class="input-group mb-3 col-md">
                            <span class="input-group-text">R$</span>
                            <input type="text" name="valor_venda_varejo_un" class="form-control" placeholder="Valor de varejo" required>
                            <span class="input-group-text">UN.</span>
                        </div>
                    </div>
                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <input type="text" name="qtd_minima_atacado" class="form-control" id="floatingInput" placeholder="Quantidade mínima para atacado" required>
                            <label for="floatingInput">Quantidade mínima para atacado</label>
                        </div>
                        <div class="input-group mb-3 col-md">
                            <span class="input-group-text">%</span>
                            <input type="text" name="valor_desconto" class="form-control" placeholder="Desconto" required>
                        </div>
                        </div>
                    <div class="text-end">
                        <input type="submit" class="btn btn-success" value="CADASTRAR">
                    </div>
                </div>
            </form>   
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        </body>
        </html>
    <?php } else {
      header("Location: http://localhost/supermercado/menu");
    }
  }
?>

