const reveal = document.getElementById("reveal");

const unactiveCard = document.getElementById("unactive-challenge");
const activeCard = document.getElementById("active-challenge");

if(reveal) {reveal.addEventListener("click", (event) => {
  unactiveCard.style.display = "inline";
  activeCard.style.display = "none";
});
};
