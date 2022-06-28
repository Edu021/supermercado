<?php

include("./conexao.php");

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $resultado = mysqli_query($conexao, "select * from tb_cliente order by razao_social_cliente;");
    while($row = $resultado->fetch_object())
    {
        foreach($row as $key => $col){
        $col_array[$key] = utf8_encode($col);
        }
        $row_array[] =  $col_array;
    }
    
    echo json_encode($row_array, JSON_UNESCAPED_UNICODE);
}
if ($_SERVER['REQUEST_METHOD'] === 'POST' && !isset($_GET['editar']) && !isset($_GET['excluir'])) {
    $clienteExistente = false;
    $razaoSocial = $_POST['razao_social'];
    $cnpj = $_POST['cnpj'];
    $cep_cliente = $_POST['cep'];
    $numero = $_POST['numero'];
    $email = $_POST['email'];
    $telefone = $_POST['telefone'];
    $nm_representante = $_POST['nm_representante'];
    $query = mysqli_query($conexao, "select cnpj_cliente from tb_cliente where cnpj_cliente = '$cnpj';");
    if(mysqli_num_rows($query) > 0) {
        $clienteExistente = true;                
        header("Location: http://localhost/supermercado/cadastro_cliente?resultado=erro");
    }
    if ($clienteExistente === false) {
        $resultado = mysqli_query($conexao, "insert into tb_cliente (razao_social_cliente,cnpj_cliente,cep_cliente,num_ender_cliente,email_cliente,tel_cliente,nm_repres_cliente) values('$razaoSocial','$cnpj','$cep_cliente','$numero','$email','$telefone','$nm_representante');");
        header("Location: http://localhost/supermercado/cadastro_cliente?resultado=sucesso");
    }
    
    die();
}

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['editar'])) {
    $razaoSocial = $_POST['razao_social'];
    $cnpj = $_POST['cnpj'];
    $cep_cliente = $_POST['cep'];
    $numero = $_POST['numero'];
    $email = $_POST['email'];
    $telefone = $_POST['telefone'];
    $nm_representante = $_POST['nm_representante'];
    $editar = $_GET['editar'];
    $resultado = mysqli_query($conexao, "UPDATE mercado2.tb_cliente
                                            SET
                                            razao_social_cliente = '$razaoSocial',
                                            cnpj_cliente = '$cnpj',
                                            cep_cliente = '$cep_cliente',
                                            num_ender_cliente = '$numero',
                                            email_cliente = '$email',
                                            tel_cliente = '$telefone',
                                            nm_repres_cliente = '$nm_representante'
                                            WHERE cnpj_cliente = '$editar';");
    header("Location: http://localhost/supermercado/listar_clientes?resultado=alterado");
    
    die();
}
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['excluir'])) {
    $excluir = $_GET['excluir'];
    $resultado = mysqli_query($conexao, "DELETE FROM tb_cliente
                                            WHERE cnpj_cliente = $excluir;");
    header("Location: http://localhost/supermercado/listar_clientes?resultado=excluido");
    
    die();
}
mysqli_close($conexao);

?>