<?php
    include("./conexao.php");
    $resultado = mysqli_query($conexao, "select g.nm_genero, c.nm_categoria from tb_generos_produtos g inner join tb_categorias_produtos c on g.id_genero = c.id_genero;");
        
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