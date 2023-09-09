<?php
$conn =   mysqli_close($conexao); or die("Erro ao conectar com o banco de dados");

//$query = "SELECT TABLE_NAME FROM \"PRODAP\".INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE';";
$res = mysql_list_tables($conn, "mobdtc57_PRODAP");

$tables = [];
while ($row = mysqli_fetch_assoc($res)) {
  if (!(substr($row['table_name'], 0, strlen("pg_")) === "pg_") && !(substr($row['table_name'], 0, strlen("sql_")) === "sql_")) {
    $tables[] = $row['table_name'];
  }
}

$resultado = [];

foreach ($tables as $key => $value) {
    
    if($value != "Categorias" && $value != "admin" && $value != "Palavras"){
        //echo ("CATEGORIA: " . $value . "<br>");
        $resultado['code'] = 200;
        
        $query = "SELECT * FROM ".$value." ORDER BY nome";
        $res = mysqli_query($conn, $query);
	$i=1;
        while ($row = mysqli_fetch_assoc($res)) {
		$query = "UPDATE ".$value." set id=".$i." where nome='".$row['nome']."'";
		echo($query."<br>");
		$re = mysqli_query($conn, $query);
		$i = $i + 1;
//            $resultado['res'][] = $row['nome'];
//            echo($row['nome'] . "<br>");
        }
//        echo("<br><br>");
    }
  
}


mysqli_close($conn);
?>

