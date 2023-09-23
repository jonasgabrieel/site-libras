<html lang="pt-BR">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="static/css/menustyle.css">
    <link rel="stylesheet" type="text/css" href="static/css/icones.css">
    
    <script src="static/js/menu.js" type="text/javascript"></script>
    
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
      
      <?php
         $conexao = mysqli_connect('localhost', 'dicion05_usuario01', 'libras2023','dicion05_projetolibras') or die("Erro ao conectar com o banco de dados");
      ?>
      
      <div id="menuuserimg">
        <?php
            $query = "SELECT * FROM admin where user = '".$_SESSION['login']."';";
            $result = mysqli_query($conexao, $query);
            while ($row = mysqli_fetch_assoc($result)) {
                if(file_exists("../fotos/admin/".$row['foto'].".png")){
                    echo " <img  src=\"../fotos/admin/".$row['foto'].".png\" width=\"100%\" height=\"100%\">";
                }else{
                    echo " <img  src=\"../fotos/admin/unknown.png\" width=\"100%\" height=\"100%\">";
                }
            }
            

        ?>
          
      </div>
      
      <div id="menuuserinfo">
        <?php            
            $query = "SELECT * FROM admin where user = '".$_SESSION['login']."';";
            $result = mysqli_query($conexao, $query);
            while ($row = mysqli_fetch_assoc($result)) {
                echo($row['nome']);
            }
         ?> 
      </div>
      
      <?php
     mysqli_close($conexao);
      ?>
      
      
      <div id="menulogoimg">
          <img  src="../fotos/logodic.png" width="100%" height="100%">
      </div>
      
      <div id="option">
        <div id="menuin" class="BT hover">Inserir Palavra</div>
        <div id="menuout" class="BT hover">Remover Palavra</div>
        <div id="menuedit" class="BT hover">Editar Palavra</div>
        <div id="menuadd" class="BT hover">Cadastrar Usuário</div>
      </div>
      
      <div id="menuufs">
          <img  src="../fotos/UFS_50.png" width="100%" height="100%">
      </div>
      
  </body>
</html>
