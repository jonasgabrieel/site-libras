function requestMake(link) {
  let queryElement = document.getElementById('search_query')
  let letters = document.getElementsByClassName('lettersC')

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

            return `<div class="resultado" data-p="${path}" data-l="${link}" data-d="${def}">${name}</div>`
          })
          .join('\n')
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


function eventColorPal() {
  let resultados = document.getElementsByClassName('resultado')

  for (let el of resultados) {
    el.addEventListener('click', () => {
      let link = el.getAttribute('data-l')
      let photo = el.getAttribute('data-p')
      let def = el.getAttribute('data-d')

      // Mostra a Foto
      if (photo)
        document.getElementById('swimg').src = photo

      // Mostra o vídeo
      if (link)
        document.getElementById('ivideo').src = `https://www.youtube.com/embed/${link}?autoplay=1&loop=1&playlist=${link}&rel=0&showinfo=0`

      // Mostra a definição
      if (def) {
        document.getElementById('def-text').style.display = 'inline'
        document.getElementById('def-text').innerHTML = def

      }

      // Muda a cor da Palavra selecionada.
      for (let i = resultados.length-1; i >= 0; i--) {
        resultados[i].style.color = 'black'
        resultados[i].style.fontSize = '1.5em'
        el.style.color = '#280AF6'
        el.style.fontSize = '2em'
      }
    })
  }
}

// Busca as palavras de uma determinada categoria no banco de dados.
function eventTableName() {
  let letters = document.getElementsByClassName('lettersC')

  for (let el of letters) {
    el.addEventListener('click', () => {
      

      let link = el.getAttribute('data-l') ? el.getAttribute('data-l') : ''
      let photo = el.getAttribute('data-p') ? el.getAttribute('data-p') : ''

      if (photo)
        document.getElementById('swimg').src = photo

      if (link)
        document.getElementById('ivideo').src = `https://www.youtube.com/embed/${link}?autoplay=1&loop=1&playlist=${link}&rel=0&showinfo=0`

      for (let i = letters.length-1; i >= 0; i--) {
        letters[i].style.color = '#95989A'
        el.style.color = '#280AF6'
      }

      requestMake(`search_cat.php?q=${el.id}`)
    })
  }
}

window.onload = () => {
  eventTableName()

  // Pega oque está escrito na caixa de pesquisa.
  let inputElement = document.getElementById('input_query')

  // Pega os elementos na caixa com as palavras.
  let queryElement = document.getElementById('search_query')

  document.addEventListener('keydown', e => {
    let keyCode = e.keyCode

    if (keyCode == 27)
      document.getElementById('PopBackColor').style.display = 'none'
  })

  document.getElementById('creditos').addEventListener('click', () => {
    document.getElementById('PopBackColor').style.display = 'inline'
    document.getElementById('Credbox').style.display = 'inline'
    document.getElementById('Apbox').style.display = 'none'
    document.getElementById('AddBox').style.display = 'none'
  })

  document.getElementById('ap').addEventListener('click', () => {
    document.getElementById('PopBackColor').style.display = 'inline'
    document.getElementById('Apbox').style.display = 'inline'
    document.getElementById('Credbox').style.display = 'none'
    document.getElementById('AddBox').style.display = 'none'
  })

  // document.getElementById('add').addEventListener('click', () => {
  //   document.getElementById('PopBackColor').style.display = 'inline'
  //   document.getElementById('AddBox').style.display = 'inline'
  //   document.getElementById('Credbox').style.display = 'none'
  //   document.getElementById('Apbox').style.display = 'none'
  // })

  document.getElementById('PopBackColor').addEventListener('click', () => {
    document.getElementById('PopBackColor').style.display = 'none'
    document.getElementById('Credbox').style.display = 'none'
    document.getElementById('Apbox').style.display = 'none'
    document.getElementById('AddBox').style.display = 'none'
  })


  inputElement.addEventListener('keyup', () => {

    // Limpa o resultado da busca por escrita.
    while (queryElement.firstChild)
      queryElement.removeChild(queryElement.firstChild)

    // Faz a busca no banco de dados na tabela das palavras
    if (inputElement.value) {
      requestMake(`search.php?q=${inputElement.value}`)
    } else {
      queryElement.innerHTML = ''
      return
    }
  })
}
