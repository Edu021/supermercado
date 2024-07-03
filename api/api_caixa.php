<?php

    include("./conexao.php");
    
    // INSERT
    if($_SERVER['REQUEST_METHOD'] === 'POST' && !isset($_GET['finalizar'])) {        
        
        if ($_POST['codigo'] !== '') {
            $codigo_caixa = $_POST['codigo'];
            echo "ja ta setado";
        } else {
            mysqli_query($conexao, "insert into tb_caixa_compra (valor_total) values (0.00);");
            $caixa = mysqli_query($conexao, "select * from tb_caixa_compra order by id_compra desc limit 1;");
            $caixa = mysqli_fetch_object($caixa);
            $codigo_caixa = $caixa->id_compra;
            echo "nao ta setado";
        }
        header("Location: http://3.21.113.127/supermercado/caixa?codigo=$codigo_caixa&preparado=1");
        die();
    }
    
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_GET['finalizar'])) {
        $total = $_POST['total'];
        $codigo_caixa = $_GET['codigo'];
        mysqli_query($conexao, "UPDATE tb_caixa_compra SET valor_total = $total WHERE id_compra = $codigo_caixa;");
        $resultado = mysqli_query($conexao, "select c.tb_caixa_compra_id_compra caixa, m.cod_barra lote, m.nm_produto nome, c.quantidade, m.vlr_venda_varejo valor from tb_itens_caixa c inner join tb_mercadoria m on c.tb_mercadoria_id_produto = m.id_mercadoria and c.tb_caixa_compra_id_compra = $codigo_caixa;");
        
        while($row = $resultado->fetch_object())
        {
            foreach($row as $key => $col){
            $col_array[$key] = utf8_encode($col);
            }
            $row_array[] =  $col_array;
        }
        for ($i = 0; $i < count($row_array); $i++) {
            $quantidade = $row_array[$i]['quantidade'];
            $codigo = $row_array[$i]['lote'];
            mysqli_query($conexao, "UPDATE tb_mercadoria SET qntd_lote = qntd_lote - $quantidade WHERE cod_barra = $codigo;");
        }
        header("Location: http://3.21.113.127/supermercado/caixa");
    }
    mysqli_close($conexao);
?>