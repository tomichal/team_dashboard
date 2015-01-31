$(function () {
  var INTERVAL = 4000;
  var $form = $('form#new_command');

  $form.toggle(false);

  setInterval(function () {
    $.getScript('/command.js');
  }, INTERVAL);

  $(document).on('click', '#command-btn', function(){
    var $button = $(this);
    $form.toggle();

    if($form.is(':visible')) {
      $button.text('Cancel');
    } else {
      $button.text('Command');
    }
  });
});