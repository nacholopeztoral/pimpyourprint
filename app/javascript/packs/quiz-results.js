 if (window.location.href.includes("quiz_result")) {
  const resultBox = document.getElementById('Fill-13');
  const resultBoxTwo = document.getElementById('Fill-14');
  const bubbles2 = document.querySelectorAll('.bubbles');
  const score = document.querySelectorAll('.score');
  const number = Number(score[0].innerText);

  if(number <= 10) {
    resultBox.style.fill = '#50B774';
    resultBoxTwo.style.fill = '#50B774';
  } else if(number <= 30) {
    resultBox.style.fill = '#E67E22';
    resultBoxTwo.style.fill = '#E67E22';
  } else if(number <= 50) {
    resultBox.style.fill = '#EE5F5B';
    resultBoxTwo.style.fill = '#EE5F5B';
  };

  bubbles2.forEach((bubble) => {
    if(number <= 10) {
      bubble.style.fill = '#50B774';
    } else if(number <= 30) {
      bubble.style.fill = '#E67E22';
    } else if(number <= 50) {
      bubble.style.fill = '#EE5F5B';
    };
  });

};
