const reveal = document.getElementById("reveal");
const flipCardContainer = document.getElementById('flipcard')

if (reveal) {
  reveal.addEventListener("click", (event) => {
    flipCardContainer.classList.add('flipped');
  });
};


const newTipButton = document.getElementById("open-btn");
const giveTipButton = document.getElementById("give-tip-btn");
const tips = document.querySelector(".tips-show");
const closeButton = document.querySelector(".tips-show > .fa-times");


  if (newTipButton) {
    newTipButton.addEventListener("click", (event) => {
      tips.classList.toggle("tips-show-hidden");
    });
  }


    if (giveTipButton) {
    giveTipButton.addEventListener("click", (event) => {
      tips.classList.toggle("tips-show-hidden");
    });
  }




  if (closeButton) {
    closeButton.addEventListener("click", (event) => {
      tips.classList.toggle("tips-show-hidden");
    });
  }

