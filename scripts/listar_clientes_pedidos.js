var clientes = [];
var pedidos = [];
var itens = [];
var tudo = []

window.onload = () => {
  // GET PEDIDOS

  fetch('http://localhost/supermercado/api/api_pedidos_venda.php')
  .then(src => {
    return src.json();
  })
  .then(json => {
    for (i in json) {
      pedidos[i] = json[i];
      }
  });

  // GET ITENS DO PEDIDO

  fetch('http://localhost/supermercado/api/api_itens_venda.php')
  .then(src => {
    return src.json();
  })
  .then(json => {
    for (i in json) {
      itens[i] = json[i];
    }
    
    for (i in syncaPedidosComItens()) {
      tudoDaTabela().adicionarCliente(tudo[i]);
    }
  });
  
}

function tudoDaTabela(pedido) {
    const tabela = document.getElementById("tabela-pedido");
    function criarTbody(cliente) {
      let descricao = '';
      let id = Math.floor(Math.random() * 99999999);
      for (i in cliente.descricao) {
        descricao += cliente.descricao[i];
      }
      var pedidosHTML = '';
      for (i in cliente.pedidos) {
        let id2 = Math.floor(Math.random() * 99999999);
        temp = cliente.pedidos[i].descricao;
        temp = temp.toString();
        temp = temp.replace(/,/g, '');
        switch (cliente.pedidos[i].status) {
          case 'Finalizado':
            pedidosHTML += `
            <tr>
              <td></td>
              <td>
                <div>
                  <label class="form-label">Código do Pedido</label>
                  <input type="text" value="${cliente.pedidos[i].codigo}" class="form-control" disabled readonly>
                </div>
                <div>
                  <label class="form-label">CNPJ</label>
                  <input type="text" value="${cliente.pedidos[i].cnpj}"" class="form-control" disabled readonly>
                </div>
              </td>
              <td>
                <div>
                  <label class="form-label">CEP</label>
                  <input type="text" value="${cliente.pedidos[i].cep}" class="form-control" disabled readonly>
                </div>
                <div>
                  <label class="form-label">Número</label>
                  <input type="text" value="${cliente.pedidos[i].numero}" class="form-control" disabled readonly>
                </div>
              </td>
              <td>
                <div>
                  <label class="form-label">Descrição</label>
                  <textarea style="height: 140px" class="form-control" disabled readonly>${temp}</textarea>
                </div>
              </td>
              <td>
                <div class="text-center">
                  <label class="form-label">Situação</label>
                  <input type="text" value="${cliente.pedidos[i].status}" class="form-control bg-secondary text-white text-center fw-semibold" disabled readonly>
                </div>
              </td>
              <td class="align-middle">

              </td>
              <td></td>
              <td></td>
              <td></td>
            </tr>`


            break;
          case 'Pendente':
            pedidosHTML += `
              <tr>
                <td></td>
                <td>
                  <div>
                    <label class="form-label">Código do Pedido</label>
                    <input type="text" value="${cliente.pedidos[i].codigo}" class="form-control" disabled readonly>
                  </div>
                  <div>
                    <label class="form-label">CNPJ</label>
                    <input type="text" value="${cliente.pedidos[i].cnpj}"" class="form-control" disabled readonly>
                  </div>
                </td>
                <td>
                  <div>
                    <label class="form-label">CEP</label>
                    <input type="text" value="${cliente.pedidos[i].cep}" class="form-control" disabled readonly>
                  </div>
                  <div>
                    <label class="form-label">Número</label>
                    <input type="text" value="${cliente.pedidos[i].numero}" class="form-control" disabled readonly>
                  </div>
                </td>
                <td>
                  <div>
                    <label class="form-label">Descrição</label>
                    <textarea class="form-control" style="height: 140px" disabled readonly>${cliente.pedidos[i].descricao}</textarea>
                  </div>
                </td>
                <td>
                  <div class="text-center">
                    <label class="form-label">Situação</label>
                    <input type="text" value="${cliente.pedidos[i].status}" class="form-control bg-danger text-white text-center fw-semibold" disabled readonly>
                  </div>
                  <div class="text-center">
                    <button type="button" class="form-control btn btn-light text-center fw-semibold" data-bs-toggle="modal" data-bs-target="#exampleModal${id2}">Finalizar</button>
                  </div>

                  <!-- MODAL PARA FINALIZAR -->

                  <div class="modal fade" id="exampleModal${id2}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title" id="exampleModalLabel">Finalizar o pedido #${cliente.pedidos[i].codigo} de ${cliente.empresa}?</h5>
                          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                          <form action="http://localhost/supermercado/api/api_pedidos_venda.php?finalizar=${cliente.pedidos[i].codigo}" method="POST">
                            <input type="submit" class="btn btn-danger" value="Finalizar">
                          </form>
                        </div>
                      </div>
                    </div>
                  </div>
                </td>
                <td class="align-middle">

                </td>   
                <td></td>
                <td></td>
                <td></td>
              </tr>`
            break;
        }
      }

      htmlDaTabela = `
      <tbody class="fields">
        <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-${id}" aria-expanded="false" aria-controls="group-of-rows-${id}">
          <td style="width: 60px">
            <button class="btn" data-toggle="collapse" data-target="#group-of-rows-${id}" aria-expanded="false" aria-controls="group-of-rows-${id}" area-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M5.22 8.72a.75.75 0 000 1.06l6.25 6.25a.75.75 0 001.06 0l6.25-6.25a.75.75 0 00-1.06-1.06L12 14.44 6.28 8.72a.75.75 0 00-1.06 0z"></path></svg></button>
          </td>
          <td>${cliente.empresa}</td>
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
        adicionarCliente: function(cliente) {
            tabela.innerHTML += criarTbody(cliente);
        }
    }

}

function syncaPedidosComItens() {
  var clienteTemMaisDeUmPedido = false;
  for (i in pedidos) {
    clienteTemMaisDeUmPedido = false;
    for (k in tudo) {
      if (pedidos[i].empresa == tudo[k].empresa) {
        clienteTemMaisDeUmPedido = true;
        index = k;
      }
    }
    var objCliente = {
      empresa: '',
      pedidos: [],
    }
    var objPedidos = {
      codigo: '',
      status: '',
      cnpj: '',
      cep: '',
      numero: '',
      valor: '',
      descricao: [],
    }

    for (j in itens) {
      if (pedidos[i].cod == itens[j].id_pedido_venda) {
        objCliente.empresa = pedidos[i].empresa;
        objPedidos.codigo = pedidos[i].cod;
        objPedidos.status = pedidos[i].status;
        objPedidos.cnpj = itens[j].cnpj_cliente;
        objPedidos.cep = pedidos[i].cep;
        objPedidos.numero = pedidos[i].numero;
        objPedidos.valor = itens[j].vlr_total;
        objPedidos.descricao.push(itens[j].nm_produto + " / " + itens[j].qtd_produto + " un. \n");
      }
    }
    
    if (clienteTemMaisDeUmPedido === true && objPedidos.codigo !== '') {
      tudo[index].pedidos.push(objPedidos);
    } else if (objCliente.empresa !== '') {
      objCliente.pedidos.push(objPedidos);
      tudo.push(objCliente);
    } else {
      console.log('se isso apareceu é um bom sinal!');
    }
  
  }
  return tudo;
}

function searchFields() {
  let input = document.getElementById('barraDePesquisaClientePedido').value
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