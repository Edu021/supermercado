var produtos = [];

window.onload = () => {
  console.log('pagina carregada');
  const url = 'http://localhost/supermercado/api/api_estoque.php'

  fetch('http://localhost/supermercado/api/api_estoque.php')
  .then(src => {
      return src.json();
  })
  .then(json => {
      for (i in json) {
          produtos[i] = json[i];
          tudoDaTabela().adicionarProduto(produtos[i]);
         // filtrarCategoria().carregarProduto(produtos[i]);
      }
  })
}


function tudoDaTabela(produto) {
    const tabela = document.getElementById("tabela-prods");
    function criarTbody(produto) {
      return `
      <tbody class="fields">
      <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-${produto.id}" aria-expanded="false" aria-controls="group-of-rows-2">
        <td>
          <button class="btn" data-toggle="collapse" data-target="#group-of-rows-${produto.id}" aria-expanded="false" aria-controls="group-of-rows-${produto.id}" area-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M5.22 8.72a.75.75 0 000 1.06l6.25 6.25a.75.75 0 001.06 0l6.25-6.25a.75.75 0 00-1.06-1.06L12 14.44 6.28 8.72a.75.75 0 00-1.06 0z"></path></svg></button>
        </td>
        <td>${produto.produto}</td>

        <td>R$ ${produto.preco_varejo.replace('.',',')}</td>
        <td>R$ ${produto.preco_atacado.replace('.',',')}</td>
        <td>${produto.quantidade}</td>
        <td>
          <div>
            <button class="btn btn-danger">Excluir</button>
          </div>
        </td>
        <td>
          <div>
            <button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModal${produto.id}">
              Editar
            </button>
          </div>

          <div class="modal fade .form-cad-user" id="exampleModal${produto.id}" tabindex="-1" aria-labelledby="exampleModalLabel${produto.id}" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel${produto.id}">Modal title</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="http://localhost/supermercado/api/api_estoque.php" method="POST">
                <div class="modal-body">
                
                    <div class="row g-2">
                    <div class="form-floating mb-3 col-md">
                        <input type="text" value="${produto.cod_barra}" minlength="7" maxlength="7" name="cod_barras" class="form-control" id="floatingInput" placeholder="Código de barras" required>
                        <label for="floatingInput">Código de barras</label>
                    </div>
                    <div class="form-floating mb-3 col-md">
                      <input type="text" value="${produto.quantidade}" name="qtd_disponivel" class="form-control" id="floatingInput" placeholder="Quantidade disponível" required>
                      <label for="floatingInput">Quantidade disponível</label>
                    </div>
                    </div>
                    <div class="row g-2">
                        <div class="form-floating mb-3 col-md">
                            <input type="text" value="${produto.produto}" name="nm_produto" class="form-control" id="floatingInput" placeholder="Nome do produto" required>
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
                    </div>
                    <div class="row g-2">
                      <div class="form-floating mb-3 col-md">
                          <input type="date" value="${produto.validade}" name="dt_validade" class="form-control" id="floatingInput" placeholder="Data de validade" required>
                          <label for="floatingInput">Data de validade</label>
                      </div>
                      <div class="form-floating mb-3 col-md">
                        <input type="text" value="${produto.quantidade_atacado}" name="qtd_minima_atacado" class="form-control" id="floatingInput" placeholder="Quantidade mínima para atacado" required>
                        <label for="floatingInput">Quantidade min. p/ atacado</label>
                      </div>
                    </div>
                    <div class="row g-2">
                      <div class="form-floating mb-3 col-md">
                        <input type="text" value="R$ ${produto.preco_pago}" name="valor_compra_un" id="preco_pago" class="form-control" placeholder="Valor de compra" required>
                        <label>Preço de custo</label>
                      </div>
                      <div class="form-floating mb-3 col-md">
                        <input type="text" value="R$ ${produto.preco_atacado}" name="valor_venda_atacado_un" id="preco_atacado" class="form-control" placeholder="Valor de atacado" required>
                        <label>Preço de atacado</label>
                      </div>
                    </div>
                    <div class="row g-2">
                      <div class="form-floating mb-3 col-md">
                        <input type="text" value="R$ ${produto.preco_varejo}" name="valor_venda_varejo_un" id="preco_varejo" class="form-control" placeholder="Valor de varejo" required>
                        <label>Preço varejo</label>
                      </div>
                      <div class="form-floating mb-3 col-md">
                        <input type="text" value="R$ ${produto.desconto}" name="valor_desconto" id="desconto" class="form-control" placeholder="Desconto" required>
                        <label>Desconto</label>
                      </div>
                    </div>
                    <input type="text" name="id" value="${produto.id}" style="display: none;">
                    <input type="text" name="PUT" value="PUT" style="display: none;">
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                  <input type="submit" class="btn btn-primary" value="Salvar">
                </div>
                </form> 
              </div>
            </div>
          </div>
        </td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      </tbody>

      <tbody id="group-of-rows-${produto.id}" class="collapse">
      <tr>
        <th>Gênero</th>
        <th>Lote</th>
        <th>Nome</th>
        <th>Validade</th>
        <th>Vl. compra un.</th>
        <th>Vl. atacado</th>
        <th>Vl. varejo</th>
        <th>Quantidade</th>
        <th>Desconto</th>
        <th>Qtd atacado</th>
      </tr>
      <tr>
        <td>${produto.categoria}</td>
        <td>${produto.cod_barra}</td>
        <td>${produto.produto}</td>
        <td>${produto.validade}</td>
        <td>R$ ${produto.preco_pago.replace('.',',')}</td>
        <td>R$ ${produto.preco_atacado.replace('.',',')}</td>
        <td>R$ ${produto.preco_varejo.replace('.',',')}</td>
        <td>${produto.quantidade}</td>
        <td>${produto.desconto}%</td> 
        <td>${produto.quantidade_atacado}</td> 
      </tr>
      </tbody>
      `;
    }

    return {
        adicionarProduto: function(produto) {
            tabela.innerHTML += criarTbody(produto);
        }
    }
}

function filtrarCategoria(nomeProduto){
  const table = document.getElementById("tabela-prods");
  var nomeProduto = document.getElementById('barraDePesquisa').value


  if (nomeProduto == produtos.produto) 
  return {
    carregarProduto: function(nomeProduto) {
      table.innerHTML += filtrarCategoria(nomeProduto);
  }
  }
}

function searchFields() {
  let input = document.getElementById('barraDePesquisa').value
  input=input.toLowerCase();
  let x = document.getElementsByClassName('fields');
  console.log(x.length)

  for (i = 0; i < x.length; i++) { 
      if (!x[i].innerHTML.toLowerCase().includes(input)) {
          x[i].style.display="none";
      }
      else {
          x[i].style.display="table-row-group";                 
      }
  }
}