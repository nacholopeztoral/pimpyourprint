const questions = document.querySelector(".questions");
const nexts = document.querySelectorAll(".next")


  nexts.forEach(function(next){
    next.addEventListener("click", (event) =>{
      console.log("hello");
    questions.style.transform += "translateY(-300px)" ;
  });
 });

