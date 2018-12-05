const newTipButton = document.getElementById("challenge-tip");
const tips = document.querySelector(".tips-show");
const closeButton = document.querySelector(".tips-show > .fa-times");

const showTips = () => {
  if (newTipButton) {
    newTipButton.addEventListener("click", (event) => {
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

export { showTips, hideTips };

