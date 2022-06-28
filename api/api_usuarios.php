<?php
    include("./conexao.php");
    session_start();

    // GET USUARIOS
    if ($_SERVER['REQUEST_METHOD'] === 'GET' and !isset($_GET['login']) && !isset($_GET['senha'])) {
        $resultado = mysqli_query($conexao, "select id_user id, nm_funcionario nome, login_user login, permissao_user permissao from tb_login;");
        while($row = $resultado->fetch_object())
        {
            foreach($row as $key => $col){
            $col_array[$key] = utf8_encode($col);
            }
            $row_array[] =  $col_array;
        }
        echo json_encode($row_array, JSON_UNESCAPED_UNICODE);
    }
    // INSERT USUARIO
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && !isset($_GET['editar']) && !isset($_GET['excluir'])) {
        $resultado = mysqli_query($conexao, "select login_user login from tb_login;");
        $nome = $_POST['nm_completo'];
        $usuario = $_POST['nm_usuario'];
        $senha = $_POST['senha'];
        $confirmaSenha = $_POST['confirma_senha'];
        $permissao = $_POST['permissao'];
        $usuarioExistente = false;
        // CONFIRMA SE USUARIO JA EXISTE
        while($row = mysqli_fetch_object($resultado)) {
            if($usuario == $row->login) {
                $usuarioExistente = true;                
                header("Location: http://localhost/supermercado/cadastro_usuario?resultado=erro");
                die();
                break;
            }
        }
        if($usuarioExistente === false) {
            if($senha == $confirmaSenha) {
                $resultado = mysqli_query($conexao, "insert into tb_login(nm_funcionario,login_user,senha_user,permissao_user) values('$nome','$usuario','$senha','$permissao');");
                header("Location: http://localhost/supermercado/cadastro_usuario?resultado=sucesso");
                die();
            } else {
                header("Location: http://localhost/supermercado/cadastro_usuario?resultado=erro");
                die();
            }
        }
    }

    // VALIDAÇÃO DO LOGIN
    if(isset($_GET['login']) && isset($_GET['senha'])) {
        $usuario = preg_replace('/[^[:alpha:]_]/', '',$_GET['login']);
        $senha = preg_replace('/[^[:alpha:]_]/', '',$_GET['senha']);
        $query = mysqli_query($conexao, "select nm_funcionario nome, permissao_user permissao from tb_login where login_user = '$usuario' and senha_user = '$senha';");
        $resultado = mysqli_fetch_assoc($query);

        if(mysqli_num_rows($query) == 0) {
            header("Location: http://localhost/supermercado/login?resultado=erro");
        } else {
            $_SESSION['user'] = $resultado['nome'];
            $_SESSION['permissao'] = $resultado['permissao'];
            header("Location: http://localhost/supermercado/login");
        }
    }

    // UPDATE USUARIO
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['editar'])) {
        $id = $_GET['editar'];
        $nome = $_POST['nome'];
        $login = $_POST['login'];
        $permissao = $_POST['permissao'];
        $query = mysqli_query($conexao, "UPDATE tb_login SET nm_funcionario = '$nome', login_user = '$login', permissao_user = '$permissao' WHERE id_user = $id;");
        header("Location: http://localhost/supermercado/consultar_usuario?resultado=alterado");
    }

    // DELETE USUARIO
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['excluir'])) {
        $id = $_GET['excluir'];
        $query = mysqli_query($conexao, "DELETE FROM tb_login where id_user = $id;");
        header("Location: http://localhost/supermercado/consultar_usuario?resultado=excluido");
    }

    mysqli_close($conexao);
?>