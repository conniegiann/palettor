// Random Color change for swatches.
$(document).ready(function (){
  $('form .swatch').click(function(){
    var randomColor = Math.floor(Math.random()*16777215).toString(16);
    $(this).css('background-color', '#'+randomColor);
    $(this).find('input').val('#'+randomColor);
    $(this).find('span').text('#'+randomColor);
  });
});


// Random Color change for dinosaur + colors change on interval timer.
$(document).ready(function (){
  window.setInterval(function() {
    var randomColor = Math.floor(Math.random()*16777215).toString(16);
      $('path').css('fill', '#'+randomColor);
  }, 600);
});