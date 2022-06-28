var id = 0;
generosSelecionados = document.getElementById('floatingSelect');
boxGeneros = document.getElementById('generos-box');
textArea = document.getElementById('genero');
textArea.value = '';
// ESCUTA CADA ALTERAÇÃO DO SELECT E ADICIONA NO #categorias-box
generosSelecionados.addEventListener('change', () => {
    id += 1;
    if(generosSelecionados.value !== "Selecione...") {
        boxGeneros.innerHTML = boxGeneros.outerHTML +
        `
        <span id="${id}" class="badge bg-primary">
            ${generosSelecionados.value}
            <img onclick="excluir(${id})" class="close-img" src="https://cdn-icons-png.flaticon.com/512/463/463612.png" style="width: 12px;">
        </span>
        `;
        textArea.value = textArea.value + (generosSelecionados.value + " | ");
    }
});

// EXCLUI CATEGORIAS DO TEXT AREA

function excluir(id) {
    let item = document.getElementById(id);
    let texto = item.textContent;
    let tempText = "";
    item.innerHTML = "";
    
    temp = textArea.value.split(" | ");

    // EXCLUI DO ARRAY
    temp = temp.filter((item) => item !== "");
    temp = temp.filter((item) => item.replace(/ /g, "").replace(/\n/g, "") !== texto.replace(/ /g, "").replace(/\n/g, ""));

    // COPIA OS ITENS DO ARRAY PARA UMA VARIÁVEL
    for(i in temp) {
        temp[i] = temp[i] + " | ";
        tempText = tempText + temp[i];
    }    
    textArea.value = tempText;
}