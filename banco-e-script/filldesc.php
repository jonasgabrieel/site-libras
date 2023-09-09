<?php



function bd_palavras() {
  $entrada = fopen("muni.txt", "r");

$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') 
                    or die("Erro ao conectar com o banco de dados");


  while (!feof($entrada)) {
    $linha = fgets($entrada, 4096);
    $pieces = explode(">>", $linha);
	//$nome = utf8_encode($pieces[0]);
	$nome = $pieces[0];
	$part = explode("?v=", $pieces[1]);
	$part2 = explode("&list", $part[1]);
	$video = explode("&index", $part2[0]);
	
    if (!feof($entrada)) {
	//echo($video[0]);
	//echo("<br>");	
	//echo($linha);
      $query = "INSERT INTO Palavras (nome,link,categoria) VALUES ('".ucwords(strtolower($nome))."','".$video[0]."','6')";

      $result = mysqli_query($conexao,$query);
      if (!$result) {
        echo("INSERT INTO \"Dicionario\".\"Palavras\" (nome,link,categoria) VALUES ('".ucwords(strtolower($nome))."','".$video[0]."','6')");
	echo("<br>");
      } //else {
      //  echo("Inserted: ".trim($pieces[0]).", ".trim($pieces[1])."<br>");
      //}
    }
  }
  echo("<br>");

  mysqli_close($conexao);
  fclose($entrada);
}


function add_coment(){
	$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') 
                    or die("Erro ao conectar com o banco de dados");

	$query = "select * from  Comidas";
	//echo($query);
      	$result = mysqli_query($query);
	$id = 131;
	while ($row = mysqli_fetch_assoc($result)) {
		$result2 = mysqli_query($conexao,
				 "INSERT INTO Palavras VALUES('','".$row['nome']."','','2') ");
		
		$result3 = mysqli_query($conexao,"INSERT INTO Atributos  VALUES('".$id."','".$row['link']."', '".$row['foto']."') ");

		$id = $id+1;
		//echo("INSERT INTO \"Dicionario\".\"Atributos\" (id,link) VALUES('".$row['id']."','".$row['link']."') ");
		//echo("<br>");
	}
	mysqli_close($conexao);
}



//bd_palavras();
add_coment();
?>
