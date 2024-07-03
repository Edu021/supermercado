<?php
    include("./conexao.php");

    // SELECT
    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        $resultado = mysqli_query($conexao, "select * from tb_fornecedor order by razao_social_fornecedor;");
        while($row = $resultado->fetch_object())
        {
            foreach($row as $key => $col){
            $col_array[$key] = utf8_encode($col);
            }
            $row_array[] =  $col_array;
        }

        echo json_encode($row_array, JSON_UNESCAPED_UNICODE);
    }

    // INSERT
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && !isset($_GET['editar']) && !isset($_GET['excluir'])) {
        $resultado = mysqli_query($conexao, "select cnpj_fornecedor cnpj from tb_fornecedor order by razao_social_fornecedor;");
        $fornecedorExistente = false;
        $razaoSocial = $_POST['razao_social'];
        $cnpj = $_POST['cnpj'];
        $cep = $_POST['cep'];
        $numero = $_POST['numero'];
        $email = $_POST['email'];
        $telefone = $_POST['telefone'];
        $reprentante = $_POST['representante'];
        $generos = $_POST['generos'];
        while($row = mysqli_fetch_object($resultado)) {
            if($_POST['cnpj'] == $row->cnpj) {
                $fornecedorExistente = true;                
                echo "fornecedor ja existe";
                break;
            }
        }
        if ($fornecedorExistente === false) {
            $resultado = mysqli_query($conexao, "insert into tb_fornecedor (razao_social_fornecedor,cnpj_fornecedor,cep_fornecedor,num_ender_fornecedor,email_fornecedor,tel_fornecedor,nm_repres_fornecedor,nm_generos) values('$razaoSocial', '$cnpj','$cep','$numero','$email','$telefone','$reprentante','$generos');");
            echo 'fornecedor cadastrado com sucesso';
        }
    }

    // UPDATE
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['editar'])) {
        $get_cnpj = $_GET['editar'];
        $razao_social = $_POST['razao_social'];
        $cnpj = $_POST['cnpj'];
        $cep = $_POST['cep'];
        $numero = $_POST['numero'];
        $email = $_POST['email'];
        $telefone = $_POST['telefone'];
        $representante = $_POST['representante'];
        
        if(mysqli_query($conexao, "UPDATE tb_fornecedor SET razao_social_fornecedor = '$razao_social', cnpj_fornecedor = '$cnpj', cep_fornecedor = '$cep', num_ender_fornecedor = '$numero', email_fornecedor = '$email', tel_fornecedor = '$telefone', nm_repres_fornecedor = '$representante' WHERE cnpj_fornecedor = '$get_cnpj';")) {
            header("Location: http://3.21.113.127/supermercado/consultar_fornecedor");
        } else {
            echo 'erro';
        }
    }
    
mysqli_close($conexao);
?>