var usuarios = [];

window.onload = () => {
  console.log('pagina carregada');
  const url = 'http://localhost/supermercado/api/api_usuarios.php'
  fetch('http://localhost/supermercado/api/api_usuarios.php')
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
    function criarTbody(usuario) {
      return `
      <tbody class="fields">
        <tr class="clickable" data-toggle="collapse" data-target="#group-of-rows-${usuario.id}" aria-expanded="false" aria-controls="group-of-rows-${usuario.id}">
          <td style="width: 60px">
            <button class="btn" data-toggle="collapse" data-target="#group-of-rows-${usuario.id}" aria-expanded="false" aria-controls="group-of-rows-${usuario.id}" area-hidden="true"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill-rule="evenodd" d="M5.22 8.72a.75.75 0 000 1.06l6.25 6.25a.75.75 0 001.06 0l6.25-6.25a.75.75 0 00-1.06-1.06L12 14.44 6.28 8.72a.75.75 0 00-1.06 0z"></path></svg></button>
          </td>
          <td>${usuario.nome}</td>
          <td></td>
          <td></td>
          <td></td>
          <td></td>
          <td>
          <div class="text-center">
            <button class="btn btn-secondary " data-bs-toggle="modal" data-bs-target="#editar_user_${usuario.id}">
              <img src="https://cdn-icons-png.flaticon.com/512/3659/3659853.png" width="25px" height="25px">
            </button>
            <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#editar_user_${usuario.id*10}">
              <img src="https://cdn-icons-png.flaticon.com/512/7726/7726840.png" width="25px" height="25px">
            </button>
          </div>
          </td>
        </tr>
      </tbody>

      <tbody id="group-of-rows-${usuario.id}" class="collapse">
        <tr>
          <th></th>
          <th>Nome</th>
          <th>Permissão</th>
          <th>Login</th>
          <th></th>
          <th></th>
          <th></th>
        </tr>
        <tr>
          <td></td>
          <td>${usuario.nome}</td>
          <td>${usuario.permissao}</td>
          <td>${usuario.login}</td>
          <td>
            <!-- MODAL DE EDITAR USUARIO -->
            <div class="modal fade" id="editar_user_${usuario.id}" tabindex="-1" aria-labelledby="editar_user_label_${usuario.id}" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header"> 
                    <h5 class="modal-title" id="editar_user_label_${usuario.id}">Editar usuário</h5>
                    <button class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <form action="http://localhost/supermercado/api/api_usuarios.php?editar=${usuario.id}" method="POST">
                    <div class="modal-body">
                      
                        <div class="mb-3">
                          <div class="form-floating mb-3">
                            <input type='text' value="${usuario.nome}" name="nome" class="form-control" id="floatingInput" placeholder="Nome" required>
                            <label for="floatingInput">Nome</label>
                          </div>

                          <div class="form-floating mb-3">
                          <select class="form-select" name="permissao" id="permissao" required>
                            <option selected>Selecione...</option>
                            <option value="caixa">Caixa</option>
                            <option value="almoxarife">Almoxarifado</option>
                            <option value="administrador">Administrador</option>
                          </select>
                          <label for="floatingSelect">Permissão de usuário</label>
                        </div>

                          <div class="form-floating mb-3">
                            <input type='text' value="${usuario.login}" name="login" class="form-control" id="floatingInput" placeholder="Login" required>
                            <label for="floatingInput">Login</label>
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

            <!-- MODAL DE EXCLUIR USUARIO -->
            <div class="modal fade" id="editar_user_${usuario.id*10}" tabindex="-1" aria-labelledby="editar_user_label_${usuario.id*10}" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header"> 
                    <h5 class="modal-title" id="editar_user_label_${usuario.id*10}">Tem certeza que quer excluir ${usuario.nome}?</h5>
                    <button class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <form action="http://localhost/supermercado/api/api_usuarios.php?excluir=${usuario.id}" method="POST">
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                      <input type="submit" class="btn btn-danger" value="Excluir">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </td>
          <td></td>
          <td></td>
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