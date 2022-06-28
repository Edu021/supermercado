<?php

    include("./conexao.php");
    // RENDERIZAR JSON
    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        $resultado = mysqli_query($conexao, "select m.id_mercadoria id, m.nm_produto produto, m.dt_validade validade, m.vlr_compra preco_pago, m.vlr_venda_atacado preco_atacado, m.vlr_venda_varejo preco_varejo, m.desc_produto_porcent desconto, m.qntd_lote quantidade, m.qntd_min_atacado quantidade_atacado, m.cod_barra, c.nm_categoria categoria from tb_mercadoria m inner join tb_categorias_produtos c on c.id_categoria = m.id_categoria;");
        while($row = $resultado->fetch_object())
        {
            foreach($row as $key => $col){
            $col_array[$key] = utf8_encode($col);
            }
            $row_array[] =  $col_array;
        }
        echo json_encode($row_array, JSON_UNESCAPED_UNICODE);    
    }
    // INSERT NA DATABASE
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && !isset($_POST['PUT'])) {
        $resultado = mysqli_query($conexao, "select cod_barra from tb_mercadoria;");
        $produtoExistente = false;
        $cod_barras = $_POST['cod_barras'];
        $nm_produto = $_POST['nm_produto'];
        $categoria = $_POST['categoria'];
        $valor_compra_un = $_POST['valor_compra_un'];
        $dt_validade = $_POST['dt_validade'];
        $valor_venda_atacado_un = $_POST['valor_venda_atacado_un'];
        $qtd_disponivel = $_POST['qtd_disponivel'];
        $valor_venda_varejo_un = $_POST['valor_venda_varejo_un'];
        $qtd_minima_atacado = $_POST['qtd_minima_atacado'];
        $valor_desconto = $_POST['valor_desconto'];

        $valor_compra_un = str_replace(',','.', $valor_compra_un);
        $valor_venda_atacado_un = str_replace(',','.', $valor_venda_atacado_un);
        $valor_venda_varejo_un = str_replace(',','.', $valor_venda_varejo_un);
        $valor_desconto = str_replace(',','.', $valor_desconto);

        while($row = mysqli_fetch_object($resultado)) {
            if ($row->cod_barra == $cod_barras) {
                $produtoExistente = true;
                header("Location: http://localhost/supermercado/cadastro_mercadorias?resultado=erro");
                break;
            }
        }
        if($produtoExistente === false) {
            mysqli_query($conexao, "insert into tb_mercadoria (nm_produto,dt_validade,vlr_compra,vlr_venda_atacado,Vlr_venda_varejo,desc_produto_porcent,qntd_lote,qntd_min_atacado,cod_barra,id_categoria) values('$nm_produto','$dt_validade',$valor_compra_un,$valor_venda_atacado_un,$valor_venda_varejo_un,'$valor_desconto','$qtd_disponivel','$qtd_minima_atacado','$cod_barras',$categoria);");
            header("Location: http://localhost/supermercado/cadastro_mercadorias?resultado=sucesso");
            die();
        }
    }
    // UPDATE NA DATABASE
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['PUT'])) {
        $id = $_POST['id'];
        $cod_barras = $_POST['cod_barras'];
        $nm_produto = $_POST['nm_produto'];
        $categoria = $_POST['categoria'];
        $valor_compra_un = $_POST['valor_compra_un'];
        $dt_validade = $_POST['dt_validade'];
        $valor_venda_atacado_un = $_POST['valor_venda_atacado_un'];
        $qtd_disponivel = $_POST['qtd_disponivel'];
        $valor_venda_varejo_un = $_POST['valor_venda_varejo_un'];
        $qtd_minima_atacado = $_POST['qtd_minima_atacado'];
        $valor_desconto = $_POST['valor_desconto'];
        
        $valor_compra_un = str_replace(',','.', $valor_compra_un);
        $valor_venda_atacado_un = str_replace(',','.', $valor_venda_atacado_un);
        $valor_venda_varejo_un = str_replace(',','.', $valor_venda_varejo_un);
        $valor_desconto = str_replace(',','.', $valor_desconto);

        $valor_compra_un = str_replace('R$','', $valor_compra_un);
        $valor_venda_atacado_un = str_replace('R$','', $valor_venda_atacado_un);
        $valor_venda_varejo_un = str_replace('R$','', $valor_venda_varejo_un);
        $valor_desconto = str_replace('R$','', $valor_desconto);

        mysqli_query($conexao, "UPDATE tb_mercadoria SET nm_produto = '$nm_produto', cod_barra = '$cod_barras', id_categoria = '$categoria', vlr_compra = '$valor_compra_un', dt_validade = '$dt_validade', vlr_venda_atacado = '$valor_venda_atacado_un', qntd_lote = '$qtd_disponivel', vlr_venda_varejo = '$valor_venda_varejo_un', qntd_min_atacado = '$qtd_minima_atacado', desc_produto_porcent = '$valor_desconto' WHERE id_mercadoria = '$id';");
        echo "SUCESSO ".$valor_compra_un." ".$dt_validade." ".$nm_produto;
        header("Location: http://localhost/supermercado/listar_mercadorias?resultado=sucesso");
        die();
    }


    mysqli_close($conexao);

?>