/* JavaScript for Toggle Menu*/

var navLinks = document.getElementById("navLinks")

function showMenu(){
   navLinks.style.top = "0";
}

function hideMenu(){
   navLinks.style.top = "-700px";
}


// Seleciona a barra de navegação
const navbar = document.getElementById('navbar');

// Adiciona um ouvinte de evento para o evento de rolar
window.addEventListener('scroll', () => {
   // Verifica a posição de rolagem
   if (window.scrollY > 0) {
      // Adiciona a classe 'scrolled' se a posição de rolagem for maior que 0
      navbar.classList.add('scrolled');
   } else {
      // Remove a classe 'scrolled' se a posição de rolagem for 0
      navbar.classList.remove('scrolled');
   }
});