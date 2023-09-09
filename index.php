<?php
function Corrige($string){
  return preg_replace(array("/(á|à|ã|â|ä)/","/(Á|À|Ã|Â|Ä)/","/(é|è|ê|ë)/","/(É|È|Ê|Ë)/","/(í|ì|î|ï)/","/(Í|Ì|Î|Ï)/","/(ó|ò|õ|ô|ö)/","/(Ó|Ò|Õ|Ô|Ö)/","/(ú|ù|û|ü)/","/(Ú|Ù|Û|Ü)/","/(ñ)/","/(Ñ)/","/(ç)/"),explode(" ","a A e E i I o O u U n N c"),$string);
}
?>


<html lang="pt-BR">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" type="text/css" href="static/css/teste.css">
    <link rel="stylesheet" type="text/css" href="static/css/mobile_teste.css">
    <link rel="stylesheet" type="text/css" href="static/css/fontes.css">
    <link rel="stylesheet" type="text/css" href="static/css/Buscar.css">
    
    <script src="static/js/teste.js" type="text/javascript"></script>
 
  </head>

<body>
<div id="mobile_up">
    <img id="voltar" class="mobileicon" src="static/img/seta.png">
    <img id="menu" class="mobileicon" src="static/img/menu.png">
    <img id="buscar" class="mobileicon" src="static/img/buscar.png">
    <div id="mobile_op" class="mobile_op"> </div>
</div>

<div id="popup">
    <div id="popup1">
        <iframe id="credito-if"  width="100%" height="100%"> </iframe>
    </div>
</div>

<img id="logo" src="fotos/logodic.png">
<div id="presentation" class="catfont" >Apresentação</div>
<div id="creditos" class="catfont">Créditos</div>

    <!--div do centro da página-->      
    <div id="dic">
       
         <div id="SearchSide">
            <input type="text" id="BuscarTxt" placeholder="Buscar Palavra" autocomplete="off">     
            <div id="BoxCat">
                <span id="cat_encontradas"></span>   
            </div>
        
            <div id="BoxPal">
                <span id="pal_encontradas"></span>
            </div>
        </div>
    

        <div id="ShowSide">
            <img id="larrow" class="arrow" src="static/img/larrow.png">
            <iframe  id="palvideo"   frameborder="0" allowfullscreen></iframe>
            <img id="rarrow" class="arrow" src="static/img/rarrow.png">

            <img id="palsw" src="fotos/branco.png">
            <textarea name="paldef" class="deffont" id="paldef" readonly></textarea>
            
        </div>
   
    
    </div>  

<div id="mobile_down"></div>
<img id="logo_ufs" src="fotos/UFS_50.png"> 

</body>
</html>
