<?php
function Corrige($string){
  return preg_replace(array("/(á|à|ã|â|ä)/","/(Á|À|Ã|Â|Ä)/","/(é|è|ê|ë)/","/(É|È|Ê|Ë)/","/(í|ì|î|ï)/","/(Í|Ì|Î|Ï)/","/(ó|ò|õ|ô|ö)/","/(Ó|Ò|Õ|Ô|Ö)/","/(ú|ù|û|ü)/","/(Ú|Ù|Û|Ü)/","/(ñ)/","/(Ñ)/","/(ç)/"),explode(" ","a A e E i I o O u U n N c"),$string);
}

?>

<html lang="pt-BR">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="static/css/inserirstyle.css">
    <link rel="stylesheet" type="text/css" href="static/css/cadastrarstyle.css">
    
  
  <?php
  session_start();
  
 
  if((!isset ($_SESSION['login']) == true) and (!isset ($_SESSION['senha']) == true)){
    unset($_SESSION['login']);
    unset($_SESSION['senha']);
    header('location:index.php');
    }
 
    $logado = $_SESSION['login'];
  ?>
  </head>

  <body>
      <!--<div id="lateral"></div>-->  
      
    <div id="palnova" class="letters">+Cadastrar Usuário</div>
    
    
    
    <div id="cadform">
        <form method="POST" enctype="multipart/form-data" action="CadastrarNoBD.php">
      <input required name="cadnome" type="text" class="AddField campos" placeholder="Nome" autocomplete="off">
      <input required name="cadsobrenome" type="text" class="AddField campos" placeholder="Sobrenome" autocomplete="off">
      <input required name="cademail" type="text" class="AddField campos" placeholder="e-mail" autocomplete="off">
      <input required name="cadlogin" type="text" class="AddField campos" placeholder="Login" autocomplete="off">
      <input required name="cadsenha" type="text" class="AddField campos" placeholder="Senha" autocomplete="off">
      
      
      <div id="addbt">
        <input class="Button" type="submit" value="Confirmar">
        <?php
        sleep(0,5);
        $q = $_REQUEST["q"];
        echo("<div id=\"addResposta\">");
        echo($q);
        echo("</div>");
        ?>
      </div>
    </form>
   </div>
    

    <div id="caduserimg">
        <img  src="../fotos/admin/unknown.png" width="100%" height="100%">
    </div>
    <div id="cadaddfoto">Adicionar Foto</div>

    <div id="cadlogoimg">
          <img  src="../fotos/logodic.png" width="100%" height="100%">
    </div>
    
    <div id="cadufsimg">
        <img  src="../fotos/UFS_50.png" width="100%" height="100%">
    </div>
    
    <div  id="addResposta"></div>
    
   
  </body>
</html>
