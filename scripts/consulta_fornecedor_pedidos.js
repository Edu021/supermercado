var fornecedores = [];
var pedidos = [];
var itens = [];
var tudo = []

window.onload = () => {
  // GET PEDIDOS

  fetch('http://localhost/supermercado/api/api_pedidos_compra.php')
  .then(src => {
    return src.json();
  })
  .then(json => {
    for (i in json) {
      pedidos[i] = json[i];
      }
  });

  // GET ITENS DO PEDIDO

  fetch('http://localhost/supermercado/api/api_itens_compra.php')
  .then(src => {
    return src.json();
  })
  .then(json => {
    for (i in json) {
      itens[i] = json[i];
    }
    
    for (i in syncaPedidosComItens()) {
      tudoDaTabela().adicionarFornecedor(tudo[i]);
    }
  });
  
}

function tudoDaTabela(pedido) {
    const tabela = document.getElementById("tabela-pedido");
    function criarTbody(fornecedor) {
      let descricao = '';
      let id = Math.floor(Math.random() * 99999999);
      for (i in fornecedor.descricao) {
        descricao += fornecedor.descricao[i];
      }
      var pedidosHTML = '';
      for (i in fornecedor.pedidos) {
        let id2 = Math.floor(Math.random() * 99999999);
        temp = fornecedor.pedidos[i].descricao;
        temp = temp.toString();
        temp = temp.replace(/,/g, '');
            pedidosHTML += `
            <tr>
              <td></td>
              <td>
                <div>
                  <label class="form-label">Código do Pedido</label>
                  <input type="text" value="${fornecedor.pedidos[i].codigo}" class="form-control" disabled readonly>
                </div>
                <div>
                  <label class="form-label">CNPJ</label>
                  <input type="text" value="${fornecedor.pedidos[i].cnpj}"" class="form-control" disabled readonly>
                </div>
              </td>
              <td>
                <div>
                  <label class="form-label">CEP</label>
                  <input type="text" value="${fornecedor.pedidos[i].cep}" class="form-control" disabled readonly>
                </div>
                <div>
                  <label class="form-label">Número</label>
                  <input type="text" value="${fornecedor.pedidos[i].numero}" class="form-control" disabled readonly>
                </div>
              </td>
              <td>
                <div>
                  <label class="form-label">Descrição</label>
                  <textarea style="height: 140px" class="form-control" disabled readonly>${temp}</textarea>
                </div>
              </td>
              <td>
              </td>
              <td></td>
              <td></td>
              <td></td>
            </tr>`

        
      }

      htmlDaTabela = `
      <tbody class="fields">
        <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-${id}" aria-expanded="false" aria-controls="group-of-rows-${id}">
          <td style="width: 60px">
            <button class="btn" data-toggle="collapse" data-target="#group-of-rows-${id}" aria-expanded="false" aria-controls="group-of-rows-${id}" area-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M5.22 8.72a.75.75 0 000 1.06l6.25 6.25a.75.75 0 001.06 0l6.25-6.25a.75.75 0 00-1.06-1.06L12 14.44 6.28 8.72a.75.75 0 00-1.06 0z"></path></svg></button>
          </td>
          <td>${fornecedor.empresa}</td>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
          <td>

          </td>
          <td></td>
          <td></td>
          <td></td>
        </tr>
      </tbody>

      <tbody id="group-of-rows-${id}" class="collapse">

        ${pedidosHTML}
        
      </tbody>
      `;
      
      return htmlDaTabela;
    }
    return {
        adicionarFornecedor: function(fornecedor) {
            tabela.innerHTML += criarTbody(fornecedor);
        }
    }

}

function syncaPedidosComItens() {
  var fornecedorTemMaisDeUmPedido = false;
  for (i in pedidos) {
    fornecedorTemMaisDeUmPedido = false;
    for (k in tudo) {
      if (pedidos[i].empresa == tudo[k].empresa) {
        fornecedorTemMaisDeUmPedido = true;
        index = k;
      }
    }
    var objFornecedor = {
      empresa: '',
      pedidos: [],
    }
    var objPedidos = {
      codigo: '',
      cnpj: '',
      cep: '',
      numero: '',
      valor: '',
      descricao: [],
    }

    for (j in itens) {
      if (pedidos[i].cod == itens[j].id_pedido_compra) {
        objFornecedor.empresa = pedidos[i].empresa;
        objPedidos.codigo = pedidos[i].cod;
        objPedidos.cnpj = itens[j].cnpj_fornecedor;
        objPedidos.cep = pedidos[i].cep;
        objPedidos.numero = pedidos[i].numero;
        objPedidos.valor = itens[j].vlr_total;
        objPedidos.descricao.push(itens[j].nm_produto + " / " + itens[j].qtd_produto + " un. \n");
      }
    }
    
    if (fornecedorTemMaisDeUmPedido === true && objPedidos.codigo !== '') {
      tudo[index].pedidos.push(objPedidos);
    } else if (objFornecedor.empresa !== '') {
      objFornecedor.pedidos.push(objPedidos);
      tudo.push(objFornecedor);
    } else {
      console.log('se isso apareceu é um bom sinal!');
    }
  
  }
  return tudo;
}

function searchFields() {
  let input = document.getElementById('barraDePesquisaFornedorPedido').value
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