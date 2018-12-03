  const resultBox = document.querySelector('.quiz-result-box');
  const score = document.querySelectorAll('.score');
  const number = Number(score[0].innerText);
        if(number){
        if(number <= 10) {
        resultBox.style.backgroundColor = '#50B774';
      } else if(number <= 30) {
        resultBox.style.backgroundColor = '#E67E22';
      } else if(number <= 50) {
        resultBox.style.backgroundColor = '#EE5F5B';
          };
        };


