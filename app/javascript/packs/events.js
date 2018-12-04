 const buttons = document.querySelectorAll('.grow');
 buttons.forEach(function(button){
  button.addEventListener('click', function() {
  button.parentElement.parentElement.classList.toggle('event-box-grown')
  button.parentElement.previousElementSibling.classList.toggle('injection-shown')
  })
 })
