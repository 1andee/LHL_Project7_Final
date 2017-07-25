$( document ).on('turbolinks:load', function() {
  $('#feeds-list').prepend("<%= raw escape_javascript(render(@feeds)) %>");
});