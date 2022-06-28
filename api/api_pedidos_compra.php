<?php
    include("./conexao.php");

    // SELECT
    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        $resultado = mysqli_query($conexao, "select p.id_pedido_compra id_pedido, f.razao_social_fornecedor empresa, p.cnpj_fornecedor cnpj, p.status, f.cep_fornecedor cep, f.num_ender_fornecedor numero from tb_pedidos_compra p inner join tb_fornecedor f where p.cnpj_fornecedor = f.cnpj_fornecedor;");
        while($row = $resultado->fetch_object())
        {
            foreach($row as $key => $col){
            $col_array[$key] = utf8_encode($col);
            }
            $row_array[] = $col_array;
        }
        echo json_encode($row_array, JSON_UNESCAPED_UNICODE);
    }

    // INSERT
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && !isset($_GET['finalizar'])) {
        $resultado = mysqli_query($conexao, "select cnpj_fornecedor cnpj from tb_fornecedor;");
        $fornecedorExistente = false;
        $qtdItens = $_POST['qtd_itens'];
        $cnpj = $_POST['cnpj_fornecedor'];
        $cnpj = str_replace('.', '', $cnpj);
        $cnpj = str_replace('/', '', $cnpj);
        $cnpj = str_replace('-', '', $cnpj);
        
        while ($row = mysqli_fetch_object($resultado)) {
            if ($row->cnpj === $cnpj) {
                $fornecedorExistente = true;
                break;
            }
        }
        if ($fornecedorExistente === true) {
            // CADASTRADO
            echo "fornecedor $cnpj existe";
            $nomes = $_POST['nome'];
            $quantidades = $_POST['qtd'];
            $valores = $_POST['valor'];
            mysqli_query($conexao, "insert into tb_pedidos_compra(cnpj_fornecedor) values('$cnpj');");
            $id = mysqli_query($conexao, "select id_pedido_compra id from tb_pedidos_compra order by id_pedido_compra desc limit 1;");
            $id = mysqli_fetch_object($id);
            
            for($i = 1; $i < $qtdItens+1; $i++) {
                $comando = "insert into tb_itens_compra(nm_produto,quant_produto,vlr_unit,id_pedido_compra) values('$nomes[$i]',$quantidades[$i],$valores[$i],$id->id);";
                mysqli_query($conexao, $comando);
            }
            header("Location: http://localhost/supermercado/cadastro_pedido_fornecedor?resultado=sucesso");
        } else {
            // FALHA AO CADASTRAR
            header("Location: http://localhost/supermercado/cadastro_pedido_fornecedor?resultado=erro");
        }
        die();
    }

    // UPDATE STATUS
    if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['finalizar'])) {
        $id = $_GET['finalizar'];
        mysqli_query($conexao, "update tb_pedidos_compra set status = 'Finalizado' where id_pedido_compra = $id;");
        header("Location: http://localhost/supermercado/listar_fornecedor_pedidos");
    }

    mysqli_close($conexao);
?>