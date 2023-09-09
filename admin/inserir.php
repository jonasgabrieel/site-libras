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
    <link rel="stylesheet" type="text/css" href="static/css/icones.css">
    
    <script src="static/js/add.js" type="text/javascript"></script>
  
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
<!--      <div id="lateral">
          <div id="icones">
              <img id="home" class="iconorganizer" src="../static/img/home.png" width="100%" height="100%">
              <img id="dic" class="iconorganizer" src="../static/img/dicionario.png" width="100%" height="100%">              
              <img id="exit" class="iconorganizer" src="../static/img/sair.png" width="100%" height="100%">
              <img class="iconorganizer" src="../static/img/exit.png" width="100%" height="100%">
          </div>
      </div>  -->
      
      <div id="tela">
          <div id="palnova" class="letters">+Nova Palavra</div>
    
    
    
    <div id="form">
    <form method="POST" enctype="multipart/form-data" action="Upload.php">
      <input required name="addpalavra" type="text" class="AddField campos" placeholder="Palavra" autocomplete="off">
      <input required id="addcoment" name="addcoment" type="text" class="AddFieldComent campos" placeholder="Descrição" autocomplete="off">

      <select required id="addCategoria" name="addCategoria" class="AddField campos">
        <option value="">Categoria</option>
        <?php
        $conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') or die("Erro ao conectar com o banco de dados");

        $result = mysqli_query($conexao,"SELECT nome FROM Categorias order by nome;");

        while ($row = mysqli_fetch_assoc($result)) {
            $name = explode(" ", $row['nome']);
            $name = Corrige($name[0]);
            echo("<option value=\"".$name."\">". $row['nome'] ."</option>");
        }
        mysqli_close($conexao);
        ?>
      </select>

      <input required name="addvideofield" type="text" id="addvideofield" class="AddField campos"  placeholder="Link do Vídeo" autocomplete="off">

      <div class="AddField campos" style="overflow: hidden">
        <label for="addInputFile">Adicionar Sign Write: </label>
        <input required name="arquivo" type="file" id="addInputFile" accept=".png">
        <span id="file-name"></span>
      </div>


      <div id="addbt">
        <input class="Button" type="submit" value="Adicionar">
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
    
    <div  id="addResposta"></div>
    
    <div id="addvideo">
      <iframe id="addivideo" width="100%" height="100%" frameborder="0" allowfullscreen></iframe>
    </div>

    <div id="addsw">
        <img id="addimgsample" src="../fotos/branco.png" width="100%" height="100%">
    </div>
    
 <div id="add-text-field">
        <textarea  id="add-text" width="100%" height="100%"   readonly>
            testando aqui
        </textarea>
    </div>
          
      </div>
    
   
  </body>
</html>
