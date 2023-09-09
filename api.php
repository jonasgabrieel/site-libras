<?php 
function Corrige($string){  
    return preg_replace(array("/(á|à|ã|â|ä)/","/(Á|À|Ã|Â|Ä)/","/(é|è|ê|ë)/","/(É|È|Ê|Ë)/","/(í|ì|î|ï)/","/(Í|Ì|Î|Ï)/","/(ó|ò|õ|ô|ö)/","/(Ó|Ò|Õ|Ô|Ö)/","/(ú|ù|û|ü)/","/(Ú|Ù|Û|Ü)/","/(ñ)/","/(Ñ)/","/(ç)/"),explode(" ","a A e E i I o O u U n N c"),$string);
}

//$conexao = pg_connect("host=ec2-54-204-36-249.compute-1.amazonaws.com port=5432 dbname=d9l7hacq1ajsfb user=akyhdjwbvmcoor password=d3e1ccba06f8cbd064c1e3558c567575645c7ef9dd698b2bc71bc96f4fff6f5b") 
//                    or die("Erro ao conectar com o banco de dados");

$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') 
                    or die("Erro ao conectar com o banco de dados");


$op = $_REQUEST["op"];

//Lista as categorias do dicionario
if($op === "0"){
    $result = mysqli_query($conexao,"SELECT nome,id FROM Categorias order by nome;");
    
    $response = [];
    while ($row = mysqli_fetch_assoc($result)) {

        $response['cat'][] = array($row['nome'], $row['id']);
    }
    echo json_encode($response, JSON_UNESCAPED_UNICODE);
   
}

//Lista as palavras daquela categoria
if($op === "1"){
    $id = $_REQUEST["id"];
    $result = mysqli_query($conexao,"SELECT nome,id FROM Palavras where categoria=".$id." order by nome;");
    
    $response = [];
    while ($row = mysqli_fetch_assoc($result)) {
        // $pal = "";
        // $aux = "";
        // $name = explode(" ", $row['nome']);
        // for ($i = 0; $i <= count($name); $i++) {
        //     $aux = strtolower($name[$i]." ");
        //     if (strlen($name[$i]) > 3){
        //         $aux = ucfirst(strtolower($name[$i]));
        //     }
           
        //     $pal = $pal.$aux." ";        
        // }
        
        $response['palavras'][] = array($row['nome'], $row['id']);
    }
    echo json_encode($response, JSON_UNESCAPED_UNICODE);
}

//Busca no banco atributos de uma palavra
if($op === "2"){
    $id = $_REQUEST["id"];
    $result = mysqli_query($conexao,"SELECT coment  FROM Palavras where id=".$id.";");
    $response = [];
    
    $coment = mysqli_fetch_assoc($result);
    $result2 = mysqli_query($conexao,"SELECT link,foto  FROM Atributos where id=".$id.";");
    while ($row = mysqli_fetch_assoc($result2)) {
        $response['palavras'][] = array($row['link'], $row['foto'], $coment['coment']);
    }   

    echo json_encode($response, JSON_UNESCAPED_UNICODE);
}

//Busca palavras do banco com uma substring
if($op === "3"){
    $pal = $_REQUEST["pal"];
    $result = mysqli_query($conexao,"SELECT nome,id  FROM Palavras  where nome ILIKE '%".$pal."%' order by nome;");
    $response = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $response['palavras'][] = array($row['nome'], $row['id']);
    }   

    echo json_encode($response, JSON_UNESCAPED_UNICODE);
}

//Alterar Palavra no banco
if($op === "4"){
    $pal = $_REQUEST["pal"];
    $id = $_REQUEST["id"];
    $result = mysqli_query($conexao,"UPDATE Palavras set nome='".$pal."' where id=".$id.";");
    
    // $response = [];
    // while ($row = pg_fetch_assoc($result)) {
    //     $response['palavras'][] = array($row['nome'], $row['id']);
    // }   

    echo json_encode("Palavra alterada com sucesso.", JSON_UNESCAPED_UNICODE);
}

mysqli_close($conexao);

?>
