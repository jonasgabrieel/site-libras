<?php

$palavra = $_POST['addpalavra'];
$link = $_POST['addvideofield'];
$def = $_POST['addcoment'];
$categoria = $_POST['addCategoria'];
$id = $_POST['id_pal'];
$foto ='fotos/'. $categoria .'/'.$_POST['file-name'];

$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') or die("Erro ao conectar com o banco de dados");




if($foto == ''){
    //echo ("Não teve mudança na foto");
    $query = "UPDATE ".$categoria."  SET nome='".$palavra."', link='".$link."', coment='".$def."'  where id=".$id." ;";
    $result = mysqli_query($conexao,$query);
    
    if ($result) {
        header('Location: edit.php?q=Alteração Realizada.');
    }else{
        
    }
}
else{
    echo ($categoria);
    echo("Houve alteração da foto");
}


mysqli_close($conexao);
?>
