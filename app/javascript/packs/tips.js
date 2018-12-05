const newTipButton = document.getElementById("open-btn");
const giveTipButton = document.getElementById("give-tip-btn");
const tips = document.querySelector(".tips-show");
const closeButton = document.querySelector(".tips-show > .fa-times");

const showTips = () => {
  if (newTipButton) {
    newTipButton.addEventListener("click", (event) => {
      tips.classList.toggle("tips-show-hidden");
    });
  }
}

const giveTips = () => {
    if (giveTipButton) {
    giveTipButton.addEventListener("click", (event) => {
      tips.classList.toggle("tips-show-hidden");
    });
  }
}


const hideTips = () => {
  if (closeButton) {
    closeButton.addEventListener("click", (event) => {
      tips.classList.toggle("tips-show-hidden");
    });
  }
}

export { showTips, giveTips, hideTips };

