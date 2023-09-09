<?php
session_start();
$login = $_POST['loginuser'];
$senha = $_POST['loginsenha'];

$conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') or die("Erro ao conectar com o banco de dados");
//echo($conexao);
    
$query = "SELECT user,senha FROM admin WHERE user='".$login."' AND senha='".$senha."';";
$result = mysqli_query($conexao,$query);

if(mysqli_num_rows($result) == 1){
    $_SESSION['login'] = $login;
    $_SESSION['senha'] = $senha;
    header('Location: base.php');
    
}else{
    header('Location: index.php');
}

?>

