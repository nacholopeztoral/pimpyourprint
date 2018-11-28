const reveal = document.getElementById("reveal");

const unactiveCard = document.getElementById("unactive-challenge");
const activeCard = document.getElementById("active-challenge");

reveal.addEventListener("click", (event) => {
  console.log("hello")
  unactiveCard.style.display = "inline";
  activeCard.style.display = "none";
});
