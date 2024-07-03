<?php
    
    $conexao = mysqli_connect('mercado2.mysql.uhserver.com','root789456', 'Qnf3gLd38J7ruM@5', 'mercado2');
    if (!$conexao) {
        die("Conexao sql deu errado: " . mysqli_connect_error());
    }
    
?>