function PalSelect(){
    let resultados = document.getElementsByClassName('resultado')
    let docvideo  = document.getElementById('palvideo')
    let docsw     = document.getElementById('palsw')
    let docdesc   = document.getElementById('paldef')
    let larrow   = document.getElementById('larrow')
    let rarrow   = document.getElementById('rarrow')
    
    for (let el of resultados) {
        el.addEventListener('click', () => {

            //Muda para o showside 
            if(screen.width <= 620){
                let BoxPal = document.getElementById('BoxPal')
                let ShowSide = document.getElementById('ShowSide')
                let SearchSide = document.getElementById('SearchSide')
                SearchSide.style.display = "none"
                BoxPal.style.display = "none"
                ShowSide.style.display = "inline"
                document.getElementById('mobile_op').innerHTML = el.textContent
            }    


            // let box_pal = document.getElementById("pal_encontradas")
            let id = el.getAttribute('data-id')

            let request = new XMLHttpRequest()
            request.open("GET", `api.php?op=2&id=${id}`, true) 
            
            request.onload = () => {    
                if (request.status >= 200 && request.status < 400) {
                    let data = JSON.parse(request.responseText)

                    let position = 0

                    if(data.palavras.length > 1){
                        larrow.style.display = "inline"
                        rarrow.style.display = "inline"

                    
                        let video = data['palavras'][0][0]
                        let sw    = data['palavras'][0][1]
                        let desc  = data['palavras'][0][2]
    
                        docvideo.src = `https://www.youtube.com/embed/${video}?autoplay=1&loop=1&playlist=${video}&rel=0&showinfo=0`
                        docsw.src    = sw
                        docdesc.value      = desc 
                        if(screen.width > 620){
                            docdesc.style.display = 'inline'
                            docvideo.style.marginLeft = "42px"
                        }

                        let quant = data['palavras'].length
                        
                        larrow.addEventListener('click', () => {
                            if(position <= 0){
                                position = data['palavras'].length-1

                                let video = data['palavras'][position][0]
                                let sw    = data['palavras'][position][1]
                                let desc  = data['palavras'][position][2]
    
                                docvideo.src = `https://www.youtube.com/embed/${video}?autoplay=1&loop=1&playlist=${video}&rel=0&showinfo=0`
                                docsw.src    = sw
                                docdesc.value      = desc 
                                docdesc.style.display = 'inline'
                            }
                            else{
                                position--

                                let video = data['palavras'][position][0]
                                let sw    = data['palavras'][position][1]
                                let desc  = data['palavras'][position][2]
    
                                docvideo.src = `https://www.youtube.com/embed/${video}?autoplay=1&loop=1&playlist=${video}&rel=0&showinfo=0`
                                docsw.src    = sw
                                docdesc.value      = desc 
                                docdesc.style.display = 'inline'

                            }
                            
                        })

                        rarrow.addEventListener('click', () => {

                            if(position == data['palavras'].length-1){
                                position = 0

                                let video = data['palavras'][position][0]
                                let sw    = data['palavras'][position][1]
                                let desc  = data['palavras'][position][2]
    
                                docvideo.src = `https://www.youtube.com/embed/${video}?autoplay=1&loop=1&playlist=${video}&rel=0&showinfo=0`
                                docsw.src    = sw
                                docdesc.value      = desc 
                                docdesc.style.display = 'inline'
                            }
                            else{
                                position++

                                let video = data['palavras'][position][0]
                                let sw    = data['palavras'][position][1]
                                let desc  = data['palavras'][position][2]
    
                                docvideo.src = `https://www.youtube.com/embed/${video}?autoplay=1&loop=1&playlist=${video}&rel=0&showinfo=0`
                                docsw.src    = sw
                                docdesc.value      = desc 
                                docdesc.style.display = 'inline'

                            }
                            
                        })  
                          
                    } 
                    else{
                        data = data['palavras'].map(el => {
                            let video = el[0] ? el[0] : ''
                            let sw    = el[1] ? el[1] : ''
                            let desc  = el[2] ? el[2] : ''

                            larrow.style.display = "none"
                            rarrow.style.display = "none"
                            docvideo.style.marginLeft = "100px"

                            docvideo.src = `https://www.youtube.com/embed/${video}?autoplay=1&loop=1&playlist=${video}&rel=0&showinfo=0`
                            docsw.src    = sw
                            docdesc.value      = desc 
                            if(screen.width > 620){
                                docdesc.style.display = 'inline'
                            }
                        })
                    }
                    
                
                }
            }    
            request.send()

            // Muda a cor da Palavra selecionada.
            for (let i = resultados.length-1; i >= 0; i--) {
                resultados[i].style.color = 'black'
                el.style.color = '#65B1E0'
            }    
        })    
    }    
    
}

function requestMake(link) {
    let box_pal = document.getElementById("pal_encontradas")
  
    let request = new XMLHttpRequest()
    request.open("GET", encodeURI(link), true)
  
    request.onload = () => {
        if (request.status >= 200 && request.status < 400) {
            let data = JSON.parse(request.responseText)
            
            data = data.palavras.map(el => {
                    let name = el[0] ? el[0] : ''
                    let id   = el[1] ? el[1] : ''
  
                    return `<div class="resultado catfont" data-id="${id}" >${name}</div>`
            }).join('\n')

        
        box_pal.innerHTML = data
        PalSelect()
      } else {
        console.error(`Unexpected status code: ${request.status}`)
      }
    }
  
    request.send()
}


function Categorias(){
    let box_cat = document.getElementById("cat_encontradas")

    let request = new XMLHttpRequest()
    request.open("GET", "api.php?op=0", true)

    request.onload = () => {
        if (request.status >= 200 && request.status < 400) {
            let data = JSON.parse(request.responseText)
            let id  

            data = data.cat.map(el=>{
                let name = el[0] ? el[0] : ''
                id   = el[1] ? el[1] : ''

                 return `<div class="catfont" data-id="${id}" >${name}</div>`
            }).join("\n")
         
            box_cat.innerHTML = data 

            //Altera a cor da fonte das categorias.
            let catellement = document.getElementsByClassName('catfont')
            for (let el of catellement) {
                el.addEventListener('click', () => {
                    if(screen.width <= 620){
                        let BoxPal =document.getElementById('BoxPal')
                        document.getElementById('BoxCat').style.display = "none"
                        BoxPal.style.display = "inline"
                        document.getElementById('mobile_op').innerHTML = el.textContent
                    }
                    id = el.getAttribute("data-id")
                    for (let i = catellement.length-1; i >= 0; i--) {
                        catellement[i].style.color = 'black'
                        el.style.color = '#65B1E0'
                    }
                requestMake(`api.php?op=1&id=${id}`)
                })
              }            
        } 
    }
    
    request.send()
}

window.onload = () => {
    Categorias()

    let janela = document.getElementById("popup")
    let creditos = document.getElementById("creditos")
    let presentation = document.getElementById("presentation")
    let iframe = document.getElementById("credito-if")

    let voltar = document.getElementById("voltar")
    let pesquisar = document.getElementById("buscar")
    let menu = document.getElementById("menu")
    voltar.addEventListener('click',()=>{
        let catellement = document.getElementsByClassName('catfont')
        let resultados = document.getElementsByClassName('resultado')

        let BoxPal =document.getElementById('BoxPal')
        let BoxCat = document.getElementById('BoxCat')
        let ShowSide = document.getElementById('ShowSide')
        let SearchSide = document.getElementById('SearchSide')
        let op = document.getElementById('mobile_op')
        
        if(BoxPal.style.display === "inline"){
            BoxCat.style.display = "inline"
            BoxPal.style.display = "none"    
            op.innerHTML = ""
            for (let i = catellement.length-1; i >= 0; i--) {
                catellement[i].style.color = 'black'
            }
        }

        else if(ShowSide.style.display == "inline"){
            ShowSide.style.display = "none"
            SearchSide.style.display = "inline"
            BoxPal.style.display = "inline"
            for (let i = resultados.length-1; i >= 0; i--) {
                resultados[i].style.color = 'black'
            } 
        }
        
    })

    pesquisar.addEventListener('click', ()=>{
        let op = document.getElementById('mobile_op')
        let buscabox = document.getElementById('BuscarTxt')
        op.style.display = 'none'
        buscabox.style.display = 'inline'
    })

    janela.addEventListener('click', () => {
        janela.style.display = "none"
    })

    creditos.addEventListener('click', () => {
        iframe.src = "Documentos/creditos.html"
        janela.style.display = "inline"
    })
    presentation.addEventListener('click', () => {
        iframe.src = "Documentos/apresenta.html"
        janela.style.display = "inline"
    })

    // Pega oque está escrito na caixa de pesquisa.
    let inputElement = document.getElementById('BuscarTxt')
    let queryElement = document.getElementById('pal_encontradas')
    inputElement.addEventListener('keyup', () => {

        // Limpa o resultado da busca por escrita.
        while (queryElement.firstChild){
            queryElement.removeChild(queryElement.firstChild)
        }
          
        let request = new XMLHttpRequest()
        let str = document.getElementById('BuscarTxt').value
        
        request.open("GET", `api.php?op=3&pal=${str}`, true)
        
        request.onload = () => {
            if (request.status >= 200 && request.status < 400) {
                let data = JSON.parse(request.responseText)          
                data = data.palavras.map(el => {
                        let name = el[0] ? el[0] : ''
                        let id   = el[1] ? el[1] : ''
        
                        return `<div class="resultado catfont" data-id="${id}" >${name}</div>`
                }).join('\n')
      
              
                queryElement.innerHTML = data
                PalSelect()
            } else {
              console.error(`Unexpected status code: ${request.status}`)
            }
          }
        
          request.send()      

    })

}