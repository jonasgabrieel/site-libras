<?php
function db_categorias() {
  $entrada = fopen("./categorias.txt","r");    
  $conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') or die("conexao falhou");

  $result = mysqli_query($conexao,"DELETE FROM Categorias;");
  while (!feof($entrada)) {
    $linha = fgets($entrada, 4096);

    if (!feof($entrada)) {
      $query = "INSERT INTO Categorias (nome) VALUES ('".trim($linha)."');";

      $result = mysqli_query($query);
      if (!$result) {
        echo("Query failed: ".trim($linha)."<br>");
      } else {
        echo("Inserted: ".trim($linha)."<br>");
      }
    }
  }
  echo("<br>");

  mysqli_close($conexao);
  fclose($entrada);
}

function db_bairros() {
  $entrada = fopen("./bairros.txt", "r");

  $conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') or die("conexao falhou");

  $result = mysqli_query($conexao,"DELETE FROM Palavras;");
  while (!feof($entrada)) {
    $linha = fgets($entrada, 4096);
    $pieces = explode(">>", $linha);

    if (!feof($entrada)) {
      $query = "INSERT INTO \Palavras (nome, link) VALUES ('%s', '%s');";
      $query = sprintf($query, trim($pieces[0]), trim($pieces[1]));

      $result = mysqli_query($conexao,$query);
      if (!$result) {
        echo("Query failed: ".trim($pieces[0]).", ".trim($pieces[1])."<br>");
      } else {
        echo("Inserted: ".trim($pieces[0]).", ".trim($pieces[1])."<br>");
      }
    }
  }
  echo("<br>");

  mysqli_close($conexao);
  fclose($entrada);
}

db_categorias();
db_bairros();
?>
