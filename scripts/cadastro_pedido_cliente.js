var produtos = [];

window.onload = () => {
  console.log('pagina carregada');
  fetch('http://localhost/supermercado/api/api_estoque.php')
  .then(src => {
    return src.json();
  })
  .then(json => {
    for (i in json) {
        produtos[i] = json[i];
    }
  })
}

const div = document.getElementById("div-container");
var nrPedido = 0;

// FUNÇÃO CRIADORA E MONTADORA DE ELEMENTOS FORMANDO UM ITEM

function criarItem(id) {
    let qtd = document.getElementById('qtd_itens').value;
    qtd = parseInt(qtd) + 1;
    document.getElementById('qtd_itens').value = qtd;
    console.log(qtd);

    let divLinha = document.createElement('div');
    divLinha.className = 'row g-2';

    let divColuna = document.createElement('div');
    divColuna.className = 'input-group mb-3 col-md';

    // let inputNome = document.createElement('input');
    // inputNome.type = 'text';
    // inputNome.name = `nome[${id}]`;
    // inputNome.className = 'form-control';
    // inputNome.placeholder = 'Produto';

    let inputQtd = document.createElement('input');
    let temp = '';
    inputQtd.type = 'text';
    inputQtd.name = `qtd[${id}]`;
    inputQtd.className = 'form-control';
    inputQtd.placeholder = 'Quantidade';
    // MASCARA PARA QUANTIDADE
    inputQtd.onkeyup = function (evt) {
        if (!(evt.key >= '0' && evt.key <= '9' || evt.key == 'Backspace')) {
            inputQtd.value = temp;
        } else {
            temp = inputQtd.value;
        }
    };

    let inputValor = document.createElement('input');
    inputValor.type = 'text';
    inputValor.name = `valor[${id}]`;
    inputValor.className = 'form-control';
    inputValor.placeholder = 'R$ Valor unidade';

    let botao = document.createElement('input');
    botao.type = 'button';
    botao.value = 'Excluir'
    botao.className = 'btn btn-danger'
    botao.onclick = function () {
        div.removeChild(divLinha)
        let qtd = document.getElementById('qtd_itens').value;
        qtd = parseInt(qtd) - 1;
        document.getElementById('qtd_itens').value = qtd;
        console.log(qtd);
    }

    var selectProduto = document.createElement("select");
    selectProduto.name = `nome[${id}]`;
    selectProduto.className = 'form-select';
    for (var i = 0; i < produtos.length; i++) {
        var option = document.createElement("option");
        option.value = produtos[i].id;
        option.text = produtos[i].produto;
        selectProduto.appendChild(option);
    }
    
    
    divLinha.appendChild(divColuna);
    divColuna.appendChild(selectProduto);
    divColuna.appendChild(inputQtd);
    divColuna.appendChild(inputValor);
    divColuna.appendChild(botao);
    
    return divLinha;
}

// ADICIONAR ITEM NO HTML

function adicionarNovoItem() {
    nrPedido+=1;
    div.insertAdjacentElement('afterbegin', criarItem(nrPedido));
}

// MASCARA CNPJ

document.getElementById('floatingInput').addEventListener('input', function (e) {
    var x = e.target.value.replace(/\D/g, '').match(/(\d{0,2})(\d{0,3})(\d{0,3})(\d{0,4})(\d{0,2})/);
    e.target.value = !x[2] ? x[1] : x[1] + '.' + x[2] + '.' + x[3] + '/' + x[4] + (x[5] ? '-' + x[5] : '');
});