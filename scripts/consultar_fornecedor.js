var usuarios = [];

window.onload = () => {
  console.log('pagina carregada');
  fetch('http://localhost/supermercado/api/api_fornecedores.php')
  .then(src => {
      return src.json();
  })
  .then(json => {
    for (i in json) {
      usuarios[i] = json[i];
      tudoDaTabela().adicionarUsuario(usuarios[i]);
      // filtrarCategoria().carregarProduto(produtos[i]);
    }
  })
}

function tudoDaTabela(usuario) {
    const tabela = document.getElementById("tabela-user");
    let id = Math.floor(Math.random() * 999999);
    function criarTbody(usuario) {
      return `
      <tbody class="fields">
        <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-${id}" aria-expanded="false" aria-controls="group-of-rows-${id}">
          <td style="width: 60px">
            <button class="btn" data-toggle="collapse" data-target="#group-of-rows-${id}" aria-expanded="false" aria-controls="group-of-rows-${id}" area-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M5.22 8.72a.75.75 0 000 1.06l6.25 6.25a.75.75 0 001.06 0l6.25-6.25a.75.75 0 00-1.06-1.06L12 14.44 6.28 8.72a.75.75 0 00-1.06 0z"></path></svg></button>
          </td>
          <td>${usuario.razao_social_fornecedor}</td>
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
          <td>${usuario.cnpj_fornecedor}</td>
          <td>${usuario.cep_fornecedor}</td>
          <td>${usuario.num_ender_fornecedor}</td>
          <td>${usuario.email_fornecedor}</td>
          <td>${usuario.tel_fornecedor}</td>
          <td>${usuario.nm_repres_fornecedor}
          
          <!-- MODAL DE EDITAR FORNECEDOR -->
          <div class="modal fade" id="editar_user_${id}" tabindex="-1" aria-labelledby="editar_user_label_${id}" aria-hidden="true">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header"> 
                  <h5 class="modal-title" id="editar_user_label_${id}">Editar fornecedor</h5>
                  <button class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="http://localhost/supermercado/api/api_fornecedores.php?editar=${usuario.cnpj_fornecedor}" method="POST">
                  <div class="modal-body">
                
                    <div class="form-floating mb-3">
                        <input type='text' value="${usuario.razao_social_fornecedor}" name="razao_social" class="form-control" id="floatingInput" placeholder="Razão social" required>
                        <label for="floatingInput">Razão social</label>
                    </div>
                    
                    <div class="form-floating mb-3">
                        <input type='text' value="${usuario.cnpj_fornecedor}" name="cnpj" class="form-control" id="floatingInput" placeholder="CNPJ" required>
                        <label for="floatingInput">CNPJ</label>
                    </div>
                    
                    <div class="row g-2">
                    
                        <div class="form-floating mb-3 col-md">
                            <input type='text' value="${usuario.cep_fornecedor}" name="cep" class="form-control" id="floatingInput" placeholder="CEP" required>
                            <label for="floatingInput">CEP</label>
                        </div>

                        <div class="form-floating mb-3 col-md">
                            <input type='text' value="${usuario.num_ender_fornecedor}" name="numero" class="form-control" id="floatingInput" placeholder="Número" required>
                            <label for="floatingInput">Número</label>
                        </div>
                    
                    </div>

                    <div class="form-floating mb-3">
                        <input type='text' value="${usuario.email_fornecedor}" name="email" class="form-control" id="floatingInput" placeholder="Email" required>
                        <label for="floatingInput">Email</label>
                    </div>

                    <div class="form-floating mb-3">
                        <input type='text' value="${usuario.tel_fornecedor}" name="telefone" class="form-control" id="floatingInput" placeholder="Telefone" required>
                        <label for="floatingInput">Telefone</label>
                    </div>
                    
                    <div class="form-floating mb-3">
                        <input type='text' value="${usuario.nm_repres_fornecedor}" name="representante" class="form-control" id="floatingInput" placeholder="Representante" required>
                        <label for="floatingInput">Representante</label>
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

          </td>
        <td>          
        <div class="text-center">
          <button class="btn btn-secondary " data-bs-toggle="modal" data-bs-target="#editar_user_${id}">
            <img src="https://cdn-icons-png.flaticon.com/512/3659/3659853.png" width="25px" height="25px">
          </button>

        </div>
        </td>
        </tr>
      </tbody>
      `;
    }

    return {
        adicionarUsuario: function(usuario) {
            tabela.innerHTML += criarTbody(usuario);
        }
    }

}

function searchFields() {
  let input = document.getElementById('barraDePesquisaUsuario').value;
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