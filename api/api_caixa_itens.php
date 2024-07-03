<?php
    include("./conexao.php");

    // SELECT
    if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['codigo'])) {
        
        $codigo_caixa = $_GET['codigo'];

        $resultado = mysqli_query($conexao, "select c.tb_caixa_compra_id_compra caixa, m.cod_barra lote, m.nm_produto nome, c.quantidade, c.valor_unit valor from tb_itens_caixa c inner join tb_mercadoria m on c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = $codigo_caixa;");
        if(mysqli_num_rows($resultado) == 0) {
            echo "NÃO HÁ COMPRAS NESSE CÓDIGO";
        } else {
            while($row = $resultado->fetch_object())
            {
                foreach($row as $key => $col){
                $col_array[$key] = utf8_encode($col);
                }
                $row_array[] =  $col_array;
            }
    
            echo json_encode($row_array, JSON_UNESCAPED_UNICODE);
        }
    }
    
    // INSERT
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['codigo'])) {
        $codigo_caixa = $_GET['codigo'];

        $lote = $_POST['lote'];
        $query = mysqli_query($conexao, "select * from tb_mercadoria where cod_barra = $lote;"); 
        
        $resultado = mysqli_fetch_assoc($query);
        if(mysqli_num_rows($query) == 0) {
            // PRODUTO NÃO EXISTE
            header("Location: http://3.21.113.127/supermercado/caixa?erro=not_found&codigo=$codigo_caixa");
        } else {
            // PRODUTO EXISTE
            $query2 = mysqli_query($conexao, "select c.tb_caixa_compra_id_compra caixa, m.cod_barra lote, m.nm_produto nome, c.quantidade, m.vlr_venda_varejo valor from tb_itens_caixa c inner join tb_mercadoria m on c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = $codigo_caixa and m.cod_barra = $lote;");
            $resultado2 = mysqli_fetch_assoc($query2);
            if (mysqli_num_rows($query2) == 0) {
                $produto = $resultado['id_mercadoria'];
                $valor_varejo = $resultado['vlr_venda_varejo'];
                mysqli_query($conexao, "insert into tb_itens_caixa (tb_caixa_compra_id_compra, tb_mercadoria_id_produto, quantidade, valor_unit) values ($codigo_caixa,$produto, 1, $valor_varejo);");
            } else {
                $quantidade = $resultado2['quantidade'] + 1;
                mysqli_query($conexao, "update tb_itens_caixa c inner join tb_mercadoria m SET c.quantidade = $quantidade where c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = $codigo_caixa and m.cod_barra = $lote;");
                $quantidadeParaAtacado = $resultado['qntd_min_atacado'];
                $valor_atacado = $resultado['vlr_venda_atacado'];
                if ($quantidade >= $quantidadeParaAtacado) {
                    mysqli_query($conexao, "UPDATE tb_itens_caixa c inner join tb_mercadoria m SET c.valor_unit = $valor_atacado WHERE c.tb_mercadoria_id_produto = m.id_mercadoria AND c.tb_caixa_compra_id_compra = $codigo_caixa AND m.cod_barra = $lote;");
                }
                
            }
            header("Location: http://3.21.113.127/supermercado/caixa?codigo=$codigo_caixa");
        }

    }

mysqli_close($conexao);
?>