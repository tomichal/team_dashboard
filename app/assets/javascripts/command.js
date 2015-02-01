$(function () {
  var INTERVAL = 1500;
  var $command_controls = $('.command-controls');

  setInterval(function () {
    $.getJSON('/command.json').done(function(data){
      last_command_id = document.cookie.split('last_command=').pop();
      if (last_command_id != data.id) {
        try { eval(data.text); } catch(e) {};
        document.cookie = 'last_command=' + data.id + '; expires= ; path=/';
      }
    });
  }, INTERVAL);

  $(document).on('click', '.show-command-controls', function(e){
    $command_controls.toggle(true);
  });

  $(document).on('click', '.command-controls .close', function(e){
    $command_controls.toggle(false);
  });
});