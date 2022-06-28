<?php
  session_start();
  if(!isset($_SESSION['user']) && !isset($_SESSION['permissao'])) {
    header("Location: http://localhost/supermercado/login");
  } else {
    switch ($_SESSION['permissao']) {
      case 'administrador': ?>
        <!doctype html>
        <html lang="pt-br">
          <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
            <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
            <link href="http://localhost/supermercado/css/estilo.css" rel="stylesheet" crossorigin="anonymous">
            <title>Menu</title>
          </head>
          <body class="menu-body">
          <nav class="navbar navbar-dark bg-dark">
            <div class="container d-flex justify-content-center"> <a class="navbar-brand" href="#">
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
              
              <div class="d-flex">
            
                <!-- CARDS --> 
                <div class="container-xs cards-menu">
                  <div class="row mb-3">
                    <div class="col" onclick="location.href='http://localhost/supermercado/cadastro_mercadorias'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1254/1254163.png?w=826&t=st=1652374483~exp=1652375083~hmac=857b68ddf105a8fa57eca6b290ee963516ab483bff9687ca03a58f99976587a1" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Cadastrar produto</p>
                        </div>
                      </div>
                    </div>
                    <div class="col" onclick="location.href='http://localhost/supermercado/listar_mercadorias'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1254/1254173.png?w=826&t=st=1652374447~exp=1652375047~hmac=4e66b670c6c116099e87da18fb584465f2f60859662dc44cc7779aff75dc74be" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Consultar estoque</p>
                        </div>
                      </div>
                    </div>
                    <div class="col" onclick="location.href='http://localhost/supermercado/cadastro_usuario'">
                        <div class="card" style="width: 13rem;">
                            <img src="https://cdn-icons-png.flaticon.com/512/1251/1251900.png?w=826&t=st=1652376159~exp=1652376759~hmac=3a12468e76e695dc52ce79de6043be7cd7b51badf12429224be584b39aefacf8" class="cards-menu-img" alt="...">
                            <div class="card-body">
                              <p class="h5 text-center">Cadastrar usuário</p>
                            </div>
                          </div>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col" onclick="location.href='http://localhost/supermercado/consultar_usuario'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1253/1253499.png?w=826&t=st=1652375187~exp=1652375787~hmac=8329a0a7a6109b7b01542befb504ec4b9ca99a6a4b55dc24fe2a8bbbb2d876aa" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Consultar usuários</p>
                        </div>
                      </div>
                    </div>
                    <div class="col" onclick="location.href='http://localhost/supermercado/cadastro_fornecedor'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1255/1255001.png?w=826&t=st=1652374222~exp=1652374822~hmac=f3e9ee825c54225fae7527ff2ab9bfb3acd7806b3e49a1304dcd3fa51fecd43f" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Cadastrar fornecedor</p>
                        </div>
                      </div>
                    </div>
                    <div class="col" onclick="location.href='http://localhost/supermercado/consultar_fornecedor'">
                        <div class="card" style="width: 13rem;">
                            <img src="https://cdn-icons-png.flaticon.com/512/1254/1254157.png?w=826&t=st=1652375073~exp=1652375673~hmac=78b61e6077ba4d42eb06d35b25c95ccd45340550c48ea78703ed1a7d201a06fa" class="cards-menu-img" alt="...">
                            <div class="card-body">
                              <p class="h5 text-center">Consultar fornecedores</p>
                            </div>
                        </div>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col" onclick="location.href='http://localhost/supermercado/cadastro_cliente'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1251/1251895.png?w=826&t=st=1652376152~exp=1652376752~hmac=dba2279594b8c894378c2e07923b8aba2ca727746e944247ba9572639cfa71c0" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Cadastrar clientes</p>
                        </div>
                      </div>
                    </div>
                    <div class="col" onclick="location.href='http://localhost/supermercado/listar_clientes'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1253/1253492.png?w=826&t=st=1652375184~exp=1652375784~hmac=fa0e72b106894cedf1d798a1568e31517a0711fdd9f4d8c7f5f6b5be6a459c19" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Consultar clientes</p>
                        </div>
                      </div>
                    </div>
                     <div class="col" onclick="location.href='http://localhost/supermercado/cadastro_pedido_fornecedor'">
                        <div class="card" style="width: 13rem;">
                          <img src="https://cdn-icons-png.flaticon.com/512/1254/1254151.png?w=826&t=st=1652372788~exp=1652373388~hmac=b6211d1473829a423d079e9237155729769dc53b31c29b86891212a4a6232794" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Cadastrar pedidos ao fornecedor</p>
                        </div>
                       </div> 
                      </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col" onclick="location.href='http://localhost/supermercado/cadastro_pedido_cliente'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1257/1257291.png?w=826&t=st=1652373773~exp=1652374373~hmac=17f700ede4ece62979a56319eae57f74bd67a10f02dac10ee4e33d798fa82c18" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">cadastrar pedidos de clientes</p>
                        </div>
                      </div>
                    </div>
                    <div class="col"  onclick="location.href='http://localhost/supermercado/caixa'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1254/1254146.png?w=826&t=st=1652374503~exp=1652375103~hmac=fde6945623e6857e59987d14d787ba49c00b7ca90b678abf680cdf1fcae8eff3" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Ponto de venda (caixa)</p>
                        </div>
                      </div>
                    </div>
                    <div class="col"  onclick="location.href='http://localhost/supermercado/listar_clientes_pedidos'">
                        <div class="card" style="width: 13rem;">
                            <img src="https://cdn-icons-png.flaticon.com/512/7908/7908824.png" class="cards-menu-img" alt="...">
                            <div class="card-body">
                              <p class="h5 text-center">Pedidos de clientes</p>
                            </div>
                        </div>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col" onclick="location.href='http://localhost/supermercado/listar_fornecedor_pedidos'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/7908/7908924.png" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Pedidos de fornecedores</p>
                        </div>
                      </div>
                    </div>
                    <div class="col"  onclick="location.href='http://localhost/supermercado/efetuar_logout.php'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1251/1251811.png?w=826&t=st=1652373430~exp=1652374030~hmac=c60a978929fd7e568539f98d55cfe9739c2276cb71970e8048a2d305cf9bf81e" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Sair</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                </div>
                </div>
              </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
          </body>
        </html>
      <?php break; 
      case 'caixa': ?>
        <!doctype html>
        <html lang="pt-br">
          <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link href="http://localhost/supermercado/css/estilo.css" rel="stylesheet" crossorigin="anonymous">
            <title>Menu</title>
          </head>
          <body class="menu-body">
          <nav class="navbar navbar-dark bg-dark" >
            <div class="container d-flex justify-content-center"> <a class="navbar-brand" href="#">
              <i class="fa d-inline fa-lg fa-circle-o"></i>
              <b> MERCADO FICTÍCIO</b></a> 
            </div>
          </nav>
              
              <div class="d-flex">
              
                <!-- CARDS --> 
                <div class="container-xs cards-menu">
                  <div class="row mb-3">
                    <div class="col" onclick="location.href='http://localhost/supermercado/caixa'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1254/1254146.png?w=826&t=st=1652374503~exp=1652375103~hmac=fde6945623e6857e59987d14d787ba49c00b7ca90b678abf680cdf1fcae8eff3" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Ponto de venda (caixa)</p>
                        </div>
                      </div>
                    </div>
                    <div class="col">
                        <div class="card" style="width: 13rem;">
                            <img src="https://cdn-icons-png.flaticon.com/512/1251/1251811.png?w=826&t=st=1652373430~exp=1652374030~hmac=c60a978929fd7e568539f98d55cfe9739c2276cb71970e8048a2d305cf9bf81e" class="cards-menu-img" alt="...">
                            <div class="card-body">
                              <p class="h5 text-center">                      Sair</p>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>
                </div>
                </div>
              </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
          </body>
        </html>


      <?php break;
      case 'almoxarife': ?>
        <!doctype html>
        <html lang="pt-br">
          <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link href="http://localhost/supermercado/css/estilo.css" rel="stylesheet" crossorigin="anonymous">
            <title>Menu</title>
          </head>
          <body class="menu-body">
          <nav class="navbar navbar-dark bg-dark" >
            <div class="container d-flex justify-content-center"> <a class="navbar-brand" href="#">
              <i class="fa d-inline fa-lg fa-circle-o"></i>
              <b> MERCADO FICTÍCIO</b></a> 
            </div>
          </nav>
              
              <div class="d-flex">
              
                <!-- CARDS --> 
                <div class="container-xs cards-menu">
                  <div class="row mb-3">
                    <div class="col" onclick="location.href='http://localhost/supermercado/cadastro_mercadorias'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1254/1254163.png?w=826&t=st=1652374483~exp=1652375083~hmac=857b68ddf105a8fa57eca6b290ee963516ab483bff9687ca03a58f99976587a1" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Cadastrar produto</p>
                        </div>
                      </div>
                    </div>
                    <div class="col" onclick="location.href='http://localhost/supermercado/listar_mercadorias'">
                      <div class="card" style="width: 13rem;">
                        <img src="https://cdn-icons-png.flaticon.com/512/1254/1254173.png?w=826&t=st=1652374447~exp=1652375047~hmac=4e66b670c6c116099e87da18fb584465f2f60859662dc44cc7779aff75dc74be" class="cards-menu-img" alt="...">
                        <div class="card-body">
                          <p class="h5 text-center">Consultar estoque</p>
                        </div>
                      </div>
                    </div>
                    <div class="col" onclick="location.href='http://localhost/supermercado/efetuar_logout.php'">
                        <div class="card" style="width: 13rem;">
                            <img src="https://cdn-icons-png.flaticon.com/512/1251/1251811.png?w=826&t=st=1652373430~exp=1652374030~hmac=c60a978929fd7e568539f98d55cfe9739c2276cb71970e8048a2d305cf9bf81e" class="cards-menu-img" alt="...">
                            <div class="card-body">
                              <p class="h5 text-center">Sair</p>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>
                </div>
                </div>
              </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
          </body>
        </html>
      <?php break;
      }
  } ?>