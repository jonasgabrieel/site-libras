<?php
$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') or die("Erro ao conectar com o banco de dados");
$result = mysqli_query($conexao,"SELECT * FROM Palavras ORDER BY nome;");

$links = [];
$palavras = [];
$response = [];

$q = $_REQUEST["q"];
$res = "";
$res_array = [];


while ($row = mysqli_fetch_assoc($result)) {
	if ($q !== "") {
		$q = strtolower($q);
		$pal = trim($row['nome']);
		$link = trim($row['link']);
		$foto = trim($row['foto']);
		$def = trim($row['def']);

		if ( !empty(substr($pal, 0, strlen($q))) && stristr($q, substr($pal, 0, strlen($q))) !== false ) {
			if ($res === "") {
				$res = $pal;
				$res_array[] = [$pal, $link, $foto, $def];
			} else {
				$res .= "$pal";
				$res_array[] = [$pal, $link, $foto, $def];
			}
		}
	}
}

if ($res_array) {
	$response["code"] = 200;
	$response["res"] = $res_array;
} else {
	$response["code"] = 404;
	$response["res"] = ["Sem resultados"];
}

echo json_encode($response, JSON_UNESCAPED_UNICODE);
mysqli_close($conexao);
?>
