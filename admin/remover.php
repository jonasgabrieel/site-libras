<?php
function Corrige($string){
  return preg_replace(array("/(á|à|ã|â|ä)/","/(Á|À|Ã|Â|Ä)/","/(é|è|ê|ë)/","/(É|È|Ê|Ë)/","/(í|ì|î|ï)/","/(Í|Ì|Î|Ï)/","/(ó|ò|õ|ô|ö)/","/(Ó|Ò|Õ|Ô|Ö)/","/(ú|ù|û|ü)/","/(Ú|Ù|Û|Ü)/","/(ñ)/","/(Ñ)/","/(ç)/"),explode(" ","a A e E i I o O u U n N c"),$string);
}

?>

<html lang="pt-BR">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="static/css/removerstyle.css">
    <link rel="stylesheet" type="text/css" href="static/css/fontes.css">
    <link rel="stylesheet" type="text/css" href="static/css/FormPalavras.css">
    <link rel="stylesheet" type="text/css" href="static/css/icones.css">
    
    
    <script src="static/js/remover.js" type="text/javascript"></script>
    
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
<!--      <div id="menulateral">
          <div id="icones">
              <img id="home" class="iconorganizer" src="../static/img/home.png" width="100%" height="100%">
              <img id="dic" class="iconorganizer" src="../static/img/dicionario.png" width="100%" height="100%">              
              <img id="exit" class="iconorganizer" src="../static/img/sair.png" width="100%" height="100%">
              <img class="iconorganizer" src="../static/img/exit.png" width="100%" height="100%">
          </div>
      </div>-->
    
      <div id="tela">
              <div id="removpal" class="letters">+Remover Palavra</div>
    
    <div id="busca">
            <form action="javascript:void(0);">
                <input type="text" id="input_query" placeholder="Buscar" autocomplete="off">
            </form>
        </div>
    
   <div id="RemoveBoxCat">
      <?php
      $conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') or die("Erro ao conectar com o banco de dados");

      $result = mysqli_query($conexao,"SELECT * FROM Categorias order by nome;");
      
      echo("<div id=\"catresult\">");
      while ($row = mysqli_fetch_assoc($result)) {
        $name = explode(" ", $row['nome']);
        $name = Corrige($name[0]);
        $link = explode("/", $row['link'])[3];
        $path = $row['foto'];
        echo("<div class=\"lettersC\" id=\"".$name."\" data-p=\"".$path."\" data-l=\"".$link."\">".$row['nome']."</div>");
      }
      echo("</div>");
      mysqli_close($conexao);
      ?>
      </div>

      <div id="BoxPal">
          <div id="palresult">
              <span id="search_query"></span>
          </div>  
      </div>

            <div id="removeBT">
                <input type="submit" class="Button" value="Remover Palavra">
            </div>
      </div>
      

  </body>
</html>
