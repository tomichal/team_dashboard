var FIXED_COLOR = "#8dc256";
var BROKEN_COLOR = "#d4666f";


$(document).on('cifixed', function(e){
  // Play audio.
  var audio = $('#fixed-build')[0];
  audio.load();
  audio.play();

  // Highlight 'body'.
  for (i=0; i<3; i++) {
    $('body').effect('highlight', { color: FIXED_COLOR, opacity: '0.1' }, 800)
  }
});

$(document).on('cibroken', function(e){
  // Play audio.
  var audio = $('#broken-build')[0];
  audio.load();
  audio.play();

  // Highlight 'body'.
  for (i=0; i<3; i++) {
    $('body').effect('highlight', { color: BROKEN_COLOR, opacity: '0.1' }, 800)
  }
});