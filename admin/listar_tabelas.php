<?php
$conn = mysqli_connect('localhost', 'dicion05_usuario01', 'libras2023','dicion05_projetolibras') or die("Erro ao conectar com o banco de dados");

//$query = "SELECT TABLE_NAME FROM \"PRODAP\".INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE';";
$query = "SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA LIKE 'mobdtc57_PRODAP';";
$res = mysqli_query($conn, $query);

$tables = [];
while ($row = mysqli_fetch_assoc($res)) {
  if (!(substr($row['table_name'], 0, strlen("pg_")) === "pg_") && !(substr($row['table_name'], 0, strlen("sql_")) === "sql_")) {
    $tables[] = $row['table_name'];
  }
}

$resultado = [];

foreach ($tables as $key => $value) {
    
    if($value != "Categorias" && $value != "admin" && $value != "Palavras"){
//        echo ("CATEGORIA: " . $value . "<br>");
        $resultado['code'] = 200;
        
        $query = "SELECT * FROM ".$value." ORDER BY nome";
        $res = mysqli_query($conn, $query);
        while ($row = mysqli_fetch_assoc($res)) {
            $resultado['res'][] = $row['nome'];
//            echo($row['nome'] . "<br>");
        }
//        echo("<br><br>");
    }
  
}



//echo ($resultado['res'][1]);
//if (is_array($resultado[]) || is_object($resultado)) {
//  foreach ($resultado['code'] as $value) {
//    echo $value . "<br>";
//  }
//}

//$resultado['code'] = 200;
//console.log($resultado["res"][]);
sort($resultado['res']);
echo json_encode($resultado, JSON_UNESCAPED_UNICODE);
mysqli_close($conn);
?>
