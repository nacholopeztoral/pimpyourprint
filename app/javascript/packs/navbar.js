
function navBouncer() {
  const element = document.getElementById('js-dropdown');
  const sidenavbar = document.getElementById('transition');
  if(element) {element.addEventListener('click', function(){
    // side navbar movement
     sidenavbar.classList.toggle("transformationNew");
     //  animation start
     this.classList.toggle('bubble')
     sidenavbar.classList.add('z-index');

  });}
}

navBouncer();
// currently not working
