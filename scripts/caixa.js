var codigo = document.getElementById('cod_compra').value;
var itens = [];
var tabela = document.getElementById('tabela-produtos');
var totalCompra = 0.00;

if (codigo !== '') {
  formItens = document.getElementById('form_itens');
  formItens.method = 'POST';
  formItens.action = `http://3.21.113.127/supermercado/api/api_caixa_itens.php?codigo=${codigo}`;

  formFinalizar = document.getElementById('finalizar_form');
  formFinalizar.method = 'POST';
  formFinalizar.action = `http://3.21.113.127/supermercado/api/api_caixa.php?finalizar=1&codigo=${codigo}`;

  window.onload = () => {
      // GET ITENS
      let url = `http://3.21.113.127/supermercado/api/api_caixa_itens.php?codigo=${codigo}`;
      fetch(url)
      .then(src => {
        return src.json();
      })
      .then(json => {
        for (i in json) {
          itens[i] = json[i];
          montaTabela(itens[i])
        }
        document.getElementById('total').value = totalCompra.toFixed(2);
        document.getElementById('total_').innerHTML = "R$ " + totalCompra.toFixed(2);
        console.log('a');
      });
  }
}

function montaTabela (produto) {
  let total = produto.quantidade*produto.valor;   
  totalCompra += total;
  document.getElementById('vl_unit').innerHTML = "R$ " + produto.valor;
  document.getElementById('subtotal').innerHTML = "R$ " + total.toFixed(2);
  tabela.innerHTML += `
  <tbody>
    
    <tr>

      <td>${produto.lote}</td>
      <td>${produto.nome}</td>
      <td class='text-center'>${produto.quantidade}</td>
      <td>R$ ${produto.valor}</td>
      <td>R$ ${total.toFixed(2)}</td>

    </tr>

  </tbody>
  
  `



}
