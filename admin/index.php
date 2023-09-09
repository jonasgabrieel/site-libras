<html lang="pt-BR">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="static/css/indexstyle.css">
    <?php
        session_start();
    
        unset($_SESSION['login']);
        unset($_SESSION['senha']);
        
    ?>    
  </head>

  
  <body>
      <div id="lateral"></div>      
      
      <div id="loginlogoimg">
          <img  src="../fotos/logodic.png" width="100%" height="100%">
      </div>
      
      <div id="dados">
          <form method="POST" enctype="multipart/form-data" action="Verificalogin.php">
              <input required name="loginuser" id="loginuser" type="text" class="AddField" placeholder="Login" autocomplete="off">
              <input required name="loginsenha" id="loginsenha" type="password" class="AddField" placeholder="Senha" autocomplete="off">
              <input class="Button" id="loginbt"  type="submit" value="Confirmar">
          </form>
      </div>
      
      <div id="ufsindex">
          <img  src="../fotos/UFS_50.png" width="100%" height="100%">
      </div>
      
      
      
  </body>
</html>
