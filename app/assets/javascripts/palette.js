$(document).ready(function (){
  $('.swatch').click(function(){
    var randomColor = Math.floor(Math.random()*16777215).toString(16);
    $(this).css('background-color', '#'+randomColor);
    $(this).find('input').val('#'+randomColor);
    $(this).find('span').text('#'+randomColor);
  });
});
