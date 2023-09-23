<?php
$conexao = mysqli_connect('localhost', 'dicion05_usuario05', 'libras2023','dicion05_projetolibras') or die("Erro ao conectar com o banco de dados");

$q = $_REQUEST["q"];

$link = [];
$foto = [];
$response = [];
$palavras = [];

function invalid() {
    echo json_encode(array("code" => 404, "res" => array("Tabela inválida")), JSON_UNESCAPED_UNICODE);
    exit(1);
}
if($q=="Bairros"){
    $result = @mysqli_query($conexao,"SELECT * FROM Palavras WHERE categoria= 1 ORDER BY nome;") or invalid();
}else if($q=="Bancos/Instituicoes"){
    $result = @mysqli_query($conexao,"SELECT * FROM Palavras WHERE categoria= 3 ORDER BY nome;") or invalid();
} else {
    $result = @mysqli_query($conexao,"SELECT * FROM ".$q." ORDER BY nome;") or invalid();
}

while ($row = mysqli_fetch_assoc($result)) {
    $response["code"] = 200;
    $response["res"][] = array($row['nome'], $row['link'], $row['foto'], $row['def'], $row['id']);
}

echo json_encode($response, JSON_UNESCAPED_UNICODE);
mysqli_close($conexao);
?>
