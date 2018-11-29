const reveal = document.getElementById("reveal");
const flipCardContainer = document.getElementById('flipcard')

if (reveal) {
  reveal.addEventListener("click", (event) => {
    flipCardContainer.classList.add('flipped');
  });
};
