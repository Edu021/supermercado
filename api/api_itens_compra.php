<?php
    include("./conexao.php");
    $resultado = mysqli_query($conexao, "select * from tb_itens_compra i inner join tb_pedidos_compra p, tb_fornecedor f where i.id_pedido_compra = p.id_pedido_compra and p.cnpj_fornecedor = f.cnpj_fornecedor;");
        
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