<?php

$palavra = $_REQUEST["q"];
$categoria = $_REQUEST["c"];

$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') or die("Erro ao conectar com o banco de dados");

      $query = "DELETE FROM ". $categoria ." where nome = '".$palavra."';";
      //echo($query);
      $result = mysqli_query($conexao,$query);
      
    if  ($result) {
        header('Location: menu.php');
    }

mysqli_close($conexao);
?>
