window.onload = function() {
    document.getElementById('home').addEventListener("click", function(){ 
        window.location.href = "menu.php";
    })
    
    document.getElementById('dic').addEventListener("click", function(){ 
        window.location.href = "../index.php";
    })
    
    document.getElementById('exit').addEventListener("click", function(){ 
        window.location.href = "index.php";
    })
    
  document.getElementById('addvideofield').addEventListener('input', function() {
    let link = document.getElementById('addvideofield').value
      .split('/').slice(-1)[0]
      .split('watch?v=').slice(-1)[0]
      document.getElementById('addvideo').style.display = "inherit"
      document.getElementById('addivideo').src = `https://www.youtube.com/embed/${link}?autoplay=1&loop=1&playlist=${link}&rel=0&showinfo=0`
  })

  let input = document.getElementById('addInputFile')
  let filename = document.getElementById('file-name')

  input.addEventListener('change', function() {
    let arquivo = this.value.split('\\').slice(-1)[0]
    filename.textContent = arquivo

    let reader = new FileReader()
    reader.onload = function() {
      let output = document.getElementById('addimgsample')
      output.src = reader.result
      document.getElementById('addsw').style.display = 'inline-block'
    }
    reader.readAsDataURL(input.files[0])
  })

  let campos = document.getElementsByClassName('campos')

  for (let el of campos) {
    el.addEventListener('click', function() {
      document.getElementById('addResposta').style.display = 'none'
    })
  }

  document.getElementById('addbt').addEventListener('click', function() {
    document.getElementById('addResposta').style.display = 'inline'

    if (input.value === '') {
      alert('empty input file')
      return false
    }
  })
  
  document.getElementById('addcoment').addEventListener('input', function(){
      var def = document.getElementById('add-text')
      var defbox = document.getElementById('add-text-field')
      defbox.style.display = 'inline-block'
      def.style.display = 'inline'
      def.value = document.getElementById('addcoment').value
  })
  
}
