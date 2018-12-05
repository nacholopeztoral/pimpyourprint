const questions = document.querySelector(".questions");
const nexts = document.querySelectorAll(".next")

  if (nexts){nexts.forEach(function(next){
    next.addEventListener("click", (event) => {
      console.log("hello");
    questions.style.transform += "translateY(-600px)" ;
  });
 });
};

  all = document.querySelectorAll('.option')

  all.forEach(function(x){
    x.addEventListener('click',function(){

      all.forEach(function(y){
        y.style.backgroundColor = "white"
        y.style.color = "#000000";
      })
      x.style.backgroundColor = '#315a6d';
      x.style.color = "white";
    })
  })
