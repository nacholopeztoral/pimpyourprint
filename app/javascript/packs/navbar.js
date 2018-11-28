
function navBouncer() {
  const element = document.getElementById('js-dropdown');
  const sidenavbar = document.getElementById('transition');
  if(element) {element.addEventListener('click', function(){
    // side navbar movement
     sidenavbar.classList.toggle("transformationNew");
     //  animation start
     this.classList.toggle('bubble')

  });}
}
function zIndex(){
  const sidenavbar = document.getElementById('transition');
  sidenavbar.classList.add('z-index');

};
function zIndexRemove(){
  const sidenavbar = document.getElementById('transition');
  sidenavbar.classList.remove('z-index');

};




navBouncer()


if(window.location.pathname == '/users/sign_in') {
  zIndex();
}
  else{
    zIndexRemove();
  };
