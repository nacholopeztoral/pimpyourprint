document.addEventListener("DOMContentLoaded", function(event) {
  var isOn = true;

  var bubbleContainer = document.querySelector('#Bubbles');
  var bubbles = document.querySelector('#Bubbles').children;
  var liquid = document.querySelector('#liquid');

  var bubbleContainerTl = new TimelineMax();
  var tlBubbles = new TimelineMax({repeat: -1});
  var tlLiquid = new TimelineMax();

  var toggleButton = document.querySelector("#toggleState");

  bubbleContainerTl.to(bubbleContainer, 4, {y:-40, ease: Elastic.easeInOut.config(1, 0.4)});

  tlBubbles.staggerTo(bubbles, .8, {y:-30, ease: Power2.easeOut, scale:.5, autoAlpha:0}, .4);

  tlLiquid.
  set(liquid,{transformOrigin:'50% 100%'}).
  to(liquid, 4, {scaleY: 5.3, ease: Elastic.easeInOut.config(1, 0.4)});

  toggleButton.addEventListener('click', function(){
    if (bubbleContainerTl.reversed()) {
      bubbleContainerTl.play();
      tlLiquid.play();
    } else {
      bubbleContainerTl.reverse();
      tlLiquid.reverse();
    }
  })
});


