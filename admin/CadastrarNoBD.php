<?php

$nome = $_POST['cadnome'];
$sobrenome =  $_POST['cadsobrenome'];
$email = $_POST['cademail'];
$login = $_POST['cadlogin'];
$senha = $_POST['cadsenha'];

 $conexao = mysqli_connect('localhost', 'dicion05_usuario01', 'libras2023','dicion05_projetolibras') or die("Erro ao conectar com o banco de dados");
 
 $query = "INSERT INTO admin VALUES('".$login."','".$senha."','".$login."','".$nome."','".$email."','".$sobrenome."','".TRUE."')";
 $result = mysqli_query($conexao,$query);
 //echo($query);
 
 
 mysqli_close($conexao);
?>
