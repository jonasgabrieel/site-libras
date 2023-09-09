window.onload = function() {    
    document.getElementById('home').addEventListener("click", function(){ 
        document.getElementById('pagainas').src = "menu.php";
    })
    
    document.getElementById('dic').addEventListener("click", function(){ 
        window.location.href   = "../index.php";
    })
    
    document.getElementById('exit').addEventListener("click", function(){ 
        window.location.href = "index.php";
    })
    
    document.getElementById('contatos').addEventListener("click", function(){ 
        document.getElementById('menulateral').style.width = "30%";
    })
}    