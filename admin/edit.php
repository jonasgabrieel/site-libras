<?php
function Corrige($string){
  return preg_replace(array("/(á|à|ã|â|ä)/","/(Á|À|Ã|Â|Ä)/","/(é|è|ê|ë)/","/(É|È|Ê|Ë)/","/(í|ì|î|ï)/","/(Í|Ì|Î|Ï)/","/(ó|ò|õ|ô|ö)/","/(Ó|Ò|Õ|Ô|Ö)/","/(ú|ù|û|ü)/","/(Ú|Ù|Û|Ü)/","/(ñ)/","/(Ñ)/","/(ç)/"),explode(" ","a A e E i I o O u U n N c"),$string);
}

?>

<html lang="pt-BR">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="static/css/fontes.css">
    <link rel="stylesheet" type="text/css" href="static/css/FormPalavras.css">
    <link rel="stylesheet" type="text/css" href="static/css/editstyle.css">
    <link rel="stylesheet" type="text/css" href="static/css/icones.css">
    
    
    <script src="static/js/edit.js" type="text/javascript"></script>
    
    
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
        <div id="edittittle" class="letters">+Editar Palavra</div>
    
        <div id="busca">
            <form action="javascript:void(0);">
                <input type="text" id="input_query" placeholder="Buscar" autocomplete="off">
            </form>
        </div>
    
    
        <div id="EditBoxCat">
            <?php
                $conexao = mysqli_connect('localhost', 'mobdtc57_postgres', 'Libras147963Dicio','mobdtc57_PRODAP') or die("Erro ao conectar com o banco de dados");

                $result = mysqli_query($conexao,"SELECT * FROM Categorias order by nome;");

                while ($row = mysqli_fetch_assoc($result)) {
                    $name = explode(" ", $row['nome']);
                    $name = Corrige($name[0]);
                    $link = explode("/", $row['link'])[3];
                    $path = $row['foto'];
                    echo("<div class=\"lettersC\" id=\"".$name."\" data-cat=".$row['nome'].">".$row['nome']."</div>");
                    echo("<br>");
                }
                mysqli_close($conexao);
            ?>
        </div>

      <div id="EditBoxPal">
        <span id="search_query"></span>
      </div>

    
    <div id="atributos">
        <form method="POST" enctype="multipart/form-data"  action="EditaPalNoBanco.php">
            <input name="id_pal" type="hidden" id="id_pal" value="" />
            <input required id="addpalavra" name="addpalavra" type="text" class="AddField campos" placeholder="Palavra" autocomplete="off">
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
                <input  name="arquivo" type="file" id="addInputFile" accept=".png">
                <input name="file-name" type="text" id="file-name" value="" readonly="readonly"/>
            </div>
        
            <div id="showvid">
                <iframe id="editivideo" src="" width="100%" height="100%" frameborder="0" allowfullscreen></iframe>
            </div>
            <div id="showpic">
              <img id="editimgsample" src="../fotos/branco.png" >
            </div>
          

            <div id="addbt">
                <input type="submit" class="Button" value="Editar Palavra">
            </div>
    
        <?php
        sleep(0,5);
        $q = $_REQUEST["q"];
        echo("<div id=\"addResposta\">");
        echo($q);
        echo("</div>");
        ?>
        </form>
    </div>    
    
    
    </div>
    
    
  </body>
</html>


