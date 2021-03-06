var FIXED_COLOR = "#8dc256";
var BROKEN_COLOR = "#d4666f";
var FLASH_DURATION = 800;
var HIGHLIGHT_DURATION = 8000;

$(document).on('cifixed', function(e){
  // Play audio.
  var audio = $('#fixed-build')[0];
  audio.load();
  audio.play();

  // Highlight 'body'.
  for (i = 0; i < (HIGHLIGHT_DURATION / FLASH_DURATION); i++) {
    $('body').effect('highlight', { color: FIXED_COLOR }, FLASH_DURATION)
  }
});

$(document).on('cibroken', function(e){
  // Play audio.
  var audio = $('#broken-build')[0];
  audio.load();
  audio.play();

  // Highlight 'body'.
  for (i = 0; i < (HIGHLIGHT_DURATION / FLASH_DURATION); i++) {
    $('body').effect('highlight', { color: BROKEN_COLOR }, FLASH_DURATION)
  }
});