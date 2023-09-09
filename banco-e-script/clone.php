<?php


$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', '
d21237474_dadoslibras','mobdtc57_PRODAP') or die("conexao falhou");

$result = mysqli_query("SELECT * FROM Palavras where categoria='7';");

$id=1;
while ($row = mysqli_fetch_assoc($result)) {
	$pal = trim($row['nome']);
	$result2 = mysqli_query($conexao,"UPDATE Atributos set foto='fotos/Pontos/".$row['nome'].".png' where id=".$row['id'].";");
	//echo("INSERT INTO \"Dicionario\".\"Atributos\" VALUES (".$id.",'".$link."','".$foto."');");
	
	// $result2 = pg_query($conexao, "UPDATE \"Dicionario\".\"Palavras\" set id=".$id++." where nome='".$pal."';");


	
}


mysqli_close($conexao);
?>


