<?php

/******
 * Upload de imagens
 ******/

$palavra = $_POST['addpalavra'];
$link = $_POST['addvideofield'];
$coment = $_POST['addcoment'];
$categoria = $_POST['addCategoria'];

$destino = '';
$destino_BD = '';
$resposta = '';
$verificador = 0;

// verifica se foi enviado um arquivo
if ( isset( $_FILES[ 'arquivo' ][ 'name' ] ) && $_FILES[ 'arquivo' ][ 'error' ] == 0 ) {
    echo 'Você enviou o arquivo: <strong>' . $_FILES[ 'arquivo' ][ 'name' ] . '</strong><br />';
    echo 'Este arquivo é do tipo: <strong > ' . $_FILES[ 'arquivo' ][ 'type' ] . ' </strong ><br />';
    echo 'Temporáriamente foi salvo em: <strong>' . $_FILES[ 'arquivo' ][ 'tmp_name' ] . '</strong><br />';
    echo 'Seu tamanho é: <strong>' . $_FILES[ 'arquivo' ][ 'size' ] . '</strong> Bytes<br /><br />';
 
    $arquivo_tmp = $_FILES[ 'arquivo' ][ 'tmp_name' ];
    $nome = $_FILES[ 'arquivo' ][ 'name' ];
 
    // Pega a extensão
    $extensao = pathinfo ( $nome, PATHINFO_EXTENSION );
 
    // Converte a extensão para minúsculo
    $extensao = strtolower ( $extensao );
 
    // Somente imagens, .jpg;.jpeg;.gif;.png
    // Aqui eu enfileiro as extensões permitidas e separo por ';'
    // Isso serve apenas para eu poder pesquisar dentro desta String
    if ( strstr ( '.jpg;.jpeg;.gif;.png', $extensao ) ) {
        // Cria um nome único para esta imagem
        // Evita que duplique as imagens no servidor.
        // Evita nomes com acentos, espaços e caracteres não alfanuméricos
        $novoNome = $palavra .'.' . $extensao;
 
        // Concatena a pasta com o nome
        $destino = '../fotos/'. $categoria .'/'.$novoNome;
        $destino_BD = 'fotos/'. $categoria .'/'.$novoNome;
        echo($categoria);
        // tenta mover o arquivo para o destino
        if ( @move_uploaded_file ( $arquivo_tmp, $destino ) ) {
            echo 'Arquivo salvo com sucesso em : <strong>' . $destino . '</strong><br />';
            echo ' < img src = "' . $destino . '" />';
            $verificador = $verificador + 1;
                    
        }
        else
            echo 'Erro ao salvar o arquivo. Aparentemente você não tem permissão de escrita.<br />';
    }
    else
        echo 'Você poderá enviar apenas arquivos "*.jpg;*.jpeg;*.gif;*.png"<br />';
}
else
    echo 'Você não enviou nenhum arquivo!';


$conexao = mysqli_connect('localhost','dicion05_usuario01', 'libras2023','dicion05_projetolibras') or die("Erro ao conectar com o banco de dados");

$query = "INSERT INTO ". $categoria ." VALUES ('". $palavra ."','".$link."','".$destino_BD."','".$coment."')";
$result = mysqli_query($conexao,$query);


if (!$result) {
        echo("Query failed:");
      } else {
        echo("Inserted:");
        $verificador = $verificador + 1;
      }

mysqli_close($conexao);

if($verificador == 2){
    $resposta = "Palavra adicionada com sucesso!";
    header('Location: inserir.php?q='.$resposta);
    $verificador = 0;
    
}
else{
    $resposta = "Falha ao adicionar palavra!!";
//    header('Location: inserir.php?q='.$resposta);
    $verificador = 0; 
}



?>