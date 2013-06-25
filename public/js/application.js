function onSuccess(data, textStatus, jqXHR) {
  alert(data);
  debugger;
  text = $(data).filter('#grandma').text();
  alert(text);

  $('#default').hide();
  $('#return_prefix').show();
  $('#grandma').text(text);
}

function onSubmit() {
  var paramString = $(this).serialize();
  $.post('/grandma', paramString, onSuccess);
  return false;
}

function onReady() {
  $('form').on('submit', onSubmit);
}

$(document).ready(onReady);
