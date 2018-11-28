
function navBouncer() {
  const element = document.getElementById('js-dropdown');
  const sidenavbar = document.getElementById('transition');
  element.addEventListener('click', function(){
    // side navbar movement
     sidenavbar.classList.toggle("transformationNew");
     //  animation start
     this.classList.toggle('bubble')

  });
}

navBouncer()
