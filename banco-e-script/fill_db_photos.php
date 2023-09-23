<?php
$path = "fotos/Comidas Tipicas";
$diretorio = dir($path);

$conexao = mysqli_connect('localhost', 'dicion05_usuario01', 'libras2023','dicion05_projetolibras') or die("conexao falhou");

echo "Lista de Arquivos do diretório '<strong>".$path."</strong>':<br />";
$ext = ".png";
while($arquivo = $diretorio -> read()){
	//echo "<a href='".$path.$arquivo."'>".str_replace($ext, "",$arquivo)."</a><br />";
	//$result = pg_query($conexao, "UPDATE \"Dicionario\".\"Bairros\" SET foto = '".$path.$arquivo"'
	//	WHERE nome=".str_replace($ext, "",$arquivo).";");
	$result = mysqli_query($conexao,"UPDATE Comidas SET foto = '".$path."/".ucfirst(strtolower($arquivo))."'
		WHERE nome='".str_replace($ext, "",$arquivo)."';");
	echo($result);
}
$diretorio -> close();
  mysqli_close($conexao);
?>


