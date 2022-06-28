var clientes = [];

window.onload = () => {
  console.log('pagina carregada');
  fetch('http://localhost/supermercado/api/api_clientes.php')
  .then(src => {
      return src.json();
  })
  .then(json => {
    for (i in json) {
      clientes[i] = json[i];
      tudoDaTabela().adicionarCliente(clientes[i]);
      // filtrarCategoria().carregarProduto(produtos[i]);
    }
  })
}

function tudoDaTabela(cliente) {
    const tabela = document.getElementById("tabela-user");
    let id = Math.floor(Math.random() * 999999);
    function criarTbody(cliente) {
      return `
      <tbody class="fields">
        <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-${id}" aria-expanded="false" aria-controls="group-of-rows-${id}">
          <td style="width: 60px">
            <button class="btn" data-toggle="collapse" data-target="#group-of-rows-${id}" aria-expanded="false" aria-controls="group-of-rows-${id}" area-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M5.22 8.72a.75.75 0 000 1.06l6.25 6.25a.75.75 0 001.06 0l6.25-6.25a.75.75 0 00-1.06-1.06L12 14.44 6.28 8.72a.75.75 0 00-1.06 0z"></path></svg></button>
          </td>
          <td>${cliente.razao_social_cliente}</td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td>
      
          </td>
        </tr>
      </tbody>

      <tbody id="group-of-rows-${id}" class="collapse">
        <tr>
          <th></th>
          <th style="width: 140px">CNPJ</th>
          <th>CEP</th>
          <th style="width: 70px">Número</th>
          <th>Email</th>
          <th>Telefone</th>
          <th>Representante</th>
          <th></th>
        </tr>
        <tr>
          <td></td>
          <td>${cliente.cnpj_cliente}</td>
          <td>${cliente.cep_cliente}</td>
          <td>${cliente.num_ender_cliente}</td>
          <td>${cliente.email_cliente}</td>
          <td>${cliente.tel_cliente}</td>
          <td>${cliente.nm_repres_cliente}
          
          <!-- MODAL DE EDITAR CLIENTE -->
          <div class="modal fade" id="editar_cliente_${id}" tabindex="-1" aria-labelledby="editar_cliente_label_${id}" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header"> 
                  <h5 class="modal-title" id="editar_cliente_label_${id}">Editar </h5>
                  <button class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="http://localhost/supermercado/api/api_clientes.php?editar=${cliente.cnpj_cliente}" method="POST">
                  <div class="modal-body">
                    
                      <div class="mb-3">
                        <div class="form-floating mb-3">
                          <input type='text' value="${cliente.razao_social_cliente}" name="razao_social" class="form-control" id="floatingInput" placeholder="Razão social" required>
                          <label for="floatingInput">Razão social</label>
                        </div>
                        
                        <div class="form-floating mb-3">
                          <input type='text' value="${cliente.cnpj_cliente}" name="cnpj" maxlength="14" minlength="14" class="form-control" id="floatingInput" placeholder="CNPJ" required>
                          <label for="floatingInput">CNPJ</label>
                        </div>
                        <div class="form-floating mb-3">
                          <input type='text' value="${cliente.cep_cliente}" name="cep" maxlength="8" minlength="8" class="form-control" id="floatingInput" placeholder="CEP" required>
                          <label for="floatingInput">CEP</label>
                        </div>

                        <div class="form-floating mb-3">
                          <input type='text' value="${cliente.num_ender_cliente}" name="numero" class="form-control" id="floatingInput" placeholder="Número" required>
                          <label for="floatingInput">Número</label>
                        </div>

                        <div class="form-floating mb-3">
                          <input type='text' value="${cliente.email_cliente}" name="email" class="form-control" id="floatingInput" placeholder="Email" required>
                          <label for="floatingInput">Email</label>
                        </div>

                        <div class="form-floating mb-3">
                          <input type='text' value="${cliente.tel_cliente}" name="telefone" class="form-control" id="floatingInput" placeholder="Telefone" required>
                          <label for="floatingInput">Telefone</label>
                        </div>

                        <div class="form-floating mb-3">
                         <input type='text' value="${cliente.nm_repres_cliente}" name="nm_representante" class="form-control" id="floatingInput" placeholder="Representante" required>
                         <label for="floatingInput">Representante</label>
                        </div>
                      </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <input type="submit" class="btn btn-primary" value="Salvar">
                  </div>
                </form>
              </div>
            </div>
          </div>

          <!-- MODAL DE EXCLUIR CLIENTE -->
          <div class="modal fade" id="editar_cliente_${id*10}" tabindex="-1" aria-labelledby="editar_cliente_label_${id*10}" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header"> 
                  <h5 class="modal-title" id="editar_cliente_label_${id*10}">Tem certeza que quer excluir ${cliente.razao_social_cliente}</h5>
                  <button class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="http://localhost/supermercado/api/api_clientes.php?excluir=${cliente.cnpj_cliente}" method="POST">
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <input type="submit" class="btn btn-danger" value="Excluir">
                  </div>
                </form>
              </div>
            </div>
          </div>
        </td>
        <td>
        <div class="text-center">
        <button class="btn btn-secondary " data-bs-toggle="modal" data-bs-target="#editar_cliente_${id}">
          <img src="https://cdn-icons-png.flaticon.com/512/3659/3659853.png" width="25px" height="25px">
        </button>
        <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#editar_cliente_${id*10}">
          <img src="https://cdn-icons-png.flaticon.com/512/7726/7726840.png" width="25px" height="25px">
        </button>
      </div>
        </td>
        <td></td>
      </tr>
    </tbody>
       
      `;
    }

    return {
        adicionarCliente: function(cliente) {
            tabela.innerHTML += criarTbody(cliente);
        }
    }

}

function searchFields() {
  let input = document.getElementById('barraDePesquisaCliente').value;
  input=input.toLowerCase();
  let x = document.getElementsByClassName('fields');
  console.log(x.length);
  for (i = 0; i < x.length; i++) { 
      if (!x[i].innerHTML.toLowerCase().includes(input)) {
          x[i].style.display="none";
      }
      else {
          x[i].style.display="table-row-group";                 
      }
  }
}