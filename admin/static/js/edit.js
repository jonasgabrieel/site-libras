var palavra = ''
var bairro = ''

function eventColorPal() {
  let resultados = document.getElementsByClassName('resultado')

  for (let el of resultados) {
    el.addEventListener('click', () => {
            let palavra = el.getAttribute('data-p')
            let link = el.getAttribute('data-l')
            let def = el.getAttribute('data-d')
            let foto = el.getAttribute('data-foto')
            let id = el.getAttribute('data-id')
            
            
            document.getElementById('atributos').style.display="inherit"
            document.getElementById('id_pal').value = id
            document.getElementById('addpalavra').value = palavra //A foto tem o mesmo nome da palavra
            document.getElementById('addcoment').value = def
            document.getElementById('addvideofield').value = link
            document.getElementById('editivideo').src = `https://www.youtube.com/embed/${link}?autoplay=1&loop=1&playlist=${link}&rel=0&showinfo=0`
            document.getElementById('editimgsample').src = "../"+foto
            
            
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
          data = data.res
          .map(el => {
            let name = el[0] ? el[0] : ''
            let link = el[1] ? el[1].split('/').slice(-1)[0] : ''
            let path = el[2] ? el[2] : ''
            let def  = el[3] ? el[3] : 'Sem definição'
            let id   = el[4] ? el[4] : '' 

            return `<div class="resultado" data-foto="${path}" data-p="${name}" data-l="${link}" data-d="${def}" data-id="${id}">${name}</div>`
          })
          .join('\n')
          
          
          
//        data = data.res.map(el => {
//            let name = el[0] ? el[0] : ''
//                return `<div data-p="${name}" class="resultado">${name}</div>`
//          }).join('\n')
          
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
      //requestMake(`search.php?q=${el.id}`) //Comentado para não aparecer a categoria nos resultados 

        let cat = el.getAttribute('data-cat')
        document.getElementById('addCategoria').value = cat
      
      for (let i = letters.length-1; i >= 0; i--) {
        letters[i].style.color = '#95989A'
        el.style.color = '#280AF6'
        bairro = el.id
      }

      requestMake(`../search_cat.php?q=${el.id}`)
    })
  }
}

window.onload = function() {
    eventTableName()
  
//Coloca o nome do arquivo no campo (Mudar isso para um arquivo separado.
  let input = document.getElementById('addInputFile')
  let filename = document.getElementById('file-name')

  input.addEventListener('change', function() {
    let arquivo = this.value.split('\\').slice(-1)[0]
//    filename.textContent = arquivo
    filename.value = arquivo

    let reader = new FileReader()
    reader.onload = function() {
      let output = document.getElementById('editimgsample')
      output.src = reader.result
    }
    reader.readAsDataURL(input.files[0])
  })
  
    document.getElementById('home').addEventListener("click", function(){ 
        window.location.href = "menu.php";
    })
    
    document.getElementById('dic').addEventListener("click", function(){ 
        window.location.href = "../index.php";
    })
    
    document.getElementById('exit').addEventListener("click", function(){ 
        window.location.href = "index.php";
    })
    
    document.getElementById('addbt').addEventListener("click", function(){ 
    })
}