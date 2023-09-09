window.onload = function() {
    document.getElementById('menuin').addEventListener("click", function(){
        window.location.href = "inserir.php";
    })
    
    document.getElementById('menuout').addEventListener("click", function(){
        window.location.href = "remover.php";
    })
    
    document.getElementById('menuedit').addEventListener("click", function(){
       window.location.href = "edit.php";
    })
    
    document.getElementById('menuadd').addEventListener("click", function(){
       window.location.href = "cadastrar.php";
    })
        

}