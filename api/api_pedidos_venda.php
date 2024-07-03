<?php
    include("./conexao.php");
    $resultado = mysqli_query($conexao, "select p.id_pedido_venda cod, p.status, c.razao_social_cliente empresa, c.cnpj_cliente cnpj, c.tel_cliente telefone, c.email_cliente email, c.cep_cliente cep, c.num_ender_cliente numero, c.nm_repres_cliente representante from tb_pedidos_venda p inner join tb_cliente c on c.cnpj_cliente = p.cnpj_cliente order by id_pedido_venda;");
    
    // SELECT
    if($_SERVER['REQUEST_METHOD'] === 'GET') {
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
    if($_SERVER['REQUEST_METHOD'] === 'POST' && !isset($_GET['finalizar'])) {

        $resultado = mysqli_query($conexao, "select cnpj_cliente cnpj from tb_cliente;");
        $clienteExistente = false;
        $qtdItens = $_POST['qtd_itens'];
        $cnpj = $_POST['cnpj_fornecedor'];
        $cnpj = str_replace('.', '', $cnpj);
        $cnpj = str_replace('/', '', $cnpj);
        $cnpj = str_replace('-', '', $cnpj);

        while ($row = mysqli_fetch_object($resultado)) {
            if ($row->cnpj === $cnpj) {
                $clienteExistente = true;
                break;
            }
        }
        if ($clienteExistente === true) {
            // CADASTRADO
            echo "cliente $cnpj existe";
            $nomes = $_POST['nome'];
            $quantidades = $_POST['qtd'];
            $valores = $_POST['valor'];
            mysqli_query($conexao, "insert into tb_pedidos_venda(cnpj_cliente, status) values('$cnpj', 'Pendente');");
            $id = mysqli_query($conexao, "select id_pedido_venda id from tb_pedidos_venda order by id_pedido_venda desc limit 1;");
            $id = mysqli_fetch_object($id);
            
            for($i = 1; $i < $qtdItens+1; $i++) {
                mysqli_query($conexao, "insert into tb_itens_venda(id_mercadoria,qtd_produto,vlr_unit,vlr_total,id_pedido_venda) values('$nomes[$i]',$quantidades[$i],$valores[$i],$valores[$i]*$quantidades[$i],$id->id);");
            }
        }
        header("Location: http://3.21.113.127/supermercado/cadastro_pedido_cliente?resultado=sucesso");
    }

    // UPDATE STATUS
    if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['finalizar'])) {
        $id = $_GET['finalizar'];
        mysqli_query($conexao, "update tb_pedidos_venda set status = 'Finalizado' where id_pedido_venda = $id;");
        header("Location: http://3.21.113.127/supermercado/listar_clientes_pedidos.");
    }

    mysqli_close($conexao);
?>