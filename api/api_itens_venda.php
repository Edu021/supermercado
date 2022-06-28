<?php
    include("./conexao.php");
    $resultado = mysqli_query($conexao, "select * from tb_itens_venda i inner join tb_pedidos_venda p, tb_mercadoria m, tb_cliente c where p.id_pedido_venda = i.id_pedido_venda and m.id_mercadoria = i.id_mercadoria and c.cnpj_cliente = p.cnpj_cliente;");
        
    while($row = $resultado->fetch_object())
    {
        foreach($row as $key => $col){
        $col_array[$key] = utf8_encode($col);
        }
        $row_array[] =  $col_array;

    }

    echo json_encode($row_array, JSON_UNESCAPED_UNICODE);
    mysqli_close($conexao);
    
?>