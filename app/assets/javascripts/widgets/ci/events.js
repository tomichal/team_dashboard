$(document).on('cifixed', function(){
  var audio = $('#fixed-build')[0];
  audio.load();
  audio.play();
});

$(document).on('cibroken', function(){
  var audio = $('#broken-build')[0];
  audio.load();
  audio.play();
});