<?php



function bd_palavras() {
  $entrada = fopen("desc.txt", "r");

$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') 
                    or die("Erro ao conectar com o banco de dados");

  while (!feof($entrada)) {
    $nome = trim(fgets($entrada, 6000));
    $coment = fgets($entrada, 6000);
    
	
    if (!feof($entrada)) {
	
      $query = "UPDATE Palavras set coment='".$coment."' where nome='".$nome."';";
	//$query = "UPDATE \"Dicionario\".\"Palavras\" set coment='Localizado na mesorregião do Leste Sergipano e microrregião de Japaratuba. Está a 54 km de distância da capital. Fundado em 11 de junho de 1859. ' where nome='Japaratuba ';";
      $result = mysqli_query($conexao,$query);


      if (!$result) {
        echo($query);
	echo("<br>");
      } else {
        echo($query);
	echo("<br>");
	echo("fumou");
      }
    }
  }

  echo("<br>");

  mysqli_close($conexao);
  fclose($entrada);
}


function add_coment(){
	$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') 
                    or die("Erro ao conectar com o banco de dados");

	$query = "select * from  Palavras where categoria=6";
	//echo($query);
      	$result = mysqli_query($conexao,$query);
	// $id = 242;
	while ($row = mysqli_fetch_assoc($result)) {
		$result2 = mysqli_query($conexao,"SELECT * from Atributos where id=".$row['id']." ");
		
		$result3 = mysqli_query($conexao,"update Atributos set ");

		
		// echo("INSERT INTO \"Dicionario\".\"Palavras\"  VALUES('".$id."','".$row['nome']."','','2')" );
		// echo("INSERT INTO \"Dicionario\".\"Atributos\"  VALUES('".$id."','".$row['link']."', '".$row['foto']."') ");
		// echo("<br>");	
		// echo("<br>");	
		// $id = $id+1;
	}
	mysqli_close($conexao);
}


bd_palavras();
//add_coment();
?>
