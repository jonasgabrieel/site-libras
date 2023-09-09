var palavra = ''
var bairro = ''

function eventColorPal() {
  let resultados = document.getElementsByClassName('resultado')

  for (let el of resultados) {
    el.addEventListener('click', () => {
     
      // Muda a cor da Palavra selecionada.
      for (let i = resultados.length-1; i >= 0; i--) {
        resultados[i].style.color = 'black'
        resultados[i].style.fontSize = '1em'
        el.style.color = '#280AF6'
        el.style.fontSize = '1.2em'
        palavra = el.getAttribute('data-p')
      }
    })
  }
}

function requestMake(link) {
  let queryElement = document.getElementById('search_query')

  let request = new XMLHttpRequest()
  request.open('GET', encodeURI(link), true)

  request.onload = () => {
    if (request.status >= 200 && request.status < 400) {
      let data = JSON.parse(request.responseText)
      
      if (data.code === 200) {
        data = data.res.map(el => {
            let name = el[0] ? el[0] : ''
                return `<div data-p="${name}" class="resultado">${name}</div>`
          }).join('\n')
          
      } else if (data.code === 404) {
        data = data.res
          .map(el => `<div id='sem-resultado'>${el}</div>`)
      }

      queryElement.innerHTML = data
      eventColorPal()
      
    } else {
      console.error(`Unexpected status code: ${request.status}`)
    }
  }

  request.send()
}

function eventTableName() {
  let letters = document.getElementsByClassName('lettersC')

  for (let el of letters) {
    el.addEventListener('click', () => {
      requestMake(`search.php?q=${el.id}`)

      for (let i = letters.length-1; i >= 0; i--) {
        letters[i].style.color = 'black'
        el.style.color = '#280AF6'
        bairro = el.id
      }

      requestMake(`../search_cat.php?q=${el.id}`)
    })
  }
}

window.onload = function() {
    eventTableName()
    
//    document.getElementById('home').addEventListener("click", function(){ 
//        window.location.href = "menu.php";
//    })
//    
//    document.getElementById('dic').addEventListener("click", function(){ 
//        window.location.href = "../index.php";
//    })
//    
//    document.getElementById('exit').addEventListener("click", function(){ 
//        window.location.href = "index.php";
//    })
    
    document.getElementById('removeBT').addEventListener("click", function(){

        window.location.assign("ApagaPalNoBanco.php?q="+palavra+"&c="+bairro );  
    })
    
}